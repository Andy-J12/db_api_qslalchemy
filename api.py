from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:ANDYSQL@127.0.0.1:3306/proyectdb'
db = SQLAlchemy(app)
port_number = 7002

#Table customer
class Customer(db.Model):
    customer_id = db.Column(db.Integer, primary_key=True)
    first_name_customer = db.Column(db.String(45), nullable=False)
    last_name_customer = db.Column(db.String(255), nullable=False)
    address_customer = db.Column(db.String(45), nullable=False)
    phone_number_customer = db.Column(db.String(45), nullable=False)

    def to_dict(self):
        return {
            'customer_id': self.customer_id,
            'first_name_customer': self.first_name_customer,
            'last_name_customer': self.last_name_customer,
            'address_customer': self.address_customer,
            'phone_number_customer': self.phone_number_customer
        }

#Table product      
class Product(db.Model):
    code_product = db.Column(db.String(50), primary_key=True)
    name_product = db.Column(db.String(50), nullable=False)
    price_product = db.Column(db.Float, nullable=False)
    in_stock = db.Column(db.Integer, nullable=False)
    category_product = db.Column(db.String(50), nullable=False)
    size_available = db.Column(db.String(50), nullable=False)

    def to_dict(self):
        return {
            'code_product': self.code_product,
            'name_product': self.name_product,
            'price_product': self.price_product,
            'in_stock': self.in_stock,
            'category_product': self.category_product,
            'size_available': self.size_available
        }

#Table sell
class Sell(db.Model):
    code_sell = db.Column(db.String(50), primary_key=True)
    customer_id = db.Column(db.Integer, db.ForeignKey('customer.customer_id'), nullable=False)
    code_product = db.Column(db.String(50), db.ForeignKey('product.code_product'), nullable=False)
    name_sell = db.Column(db.String(50), nullable=False)
    date_sell = db.Column(db.Date, nullable=False)
    payment_method = db.Column(db.String(255), nullable=False)

    def to_dict(self):
        return {
            'code_sell': self.code_sell,
            'customer_id': self.customer_id,
            'code_product': self.code_product,
            'name_sell': self.name_sell,
            'date_sell': self.date_sell,
            'payment_method': self.payment_method
        }


#Table Sell_X_Product

      
class Sell_X_Product(db.Model):
    customer_id = db.Column(db.Integer, db.ForeignKey('customer.customer_id'), primary_key=True)
    code_product = db.Column(db.String(50), db.ForeignKey('product.code_product'), primary_key=True)
    code_sell = db.Column(db.String(50), db.ForeignKey('sell.code_sell'), primary_key=True)

    def to_dict(self):
        return {
            'customer_id': self.customer_id,
            'code_product': self.code_product,
            'code_sell': self.code_sell
        }
        
        
#Table Devolution
class Devolution(db.Model):
    code_devolution = db.Column(db.String(50), primary_key=True)
    code_sell = db.Column(db.String(50), db.ForeignKey('sell.code_sell'), nullable=False)
    customer_id = db.Column(db.Integer, db.ForeignKey('customer.customer_id'), nullable=False)
    code_product = db.Column(db.String(50), db.ForeignKey('product.code_product'), nullable=False)
    name_devolution = db.Column(db.String(50), nullable=False)
    date_devolution = db.Column(db.Date, nullable=False)
    quantity_devolution = db.Column(db.String(50), nullable=False)
    product_change = db.Column(db.String(50), nullable=False)
    reason_devolution = db.Column(db.String(50), nullable=False)

    def to_dict(self):
        return {
            'code_devolution': self.code_devolution,
            'code_sell': self.code_sell,
            'customer_id': self.customer_id,
            'code_product': self.code_product,
            'name_devolution': self.name_devolution,
            'date_devolution': self.date_devolution,
            'quantity_devolution': self.quantity_devolution,
            'product_change': self.product_change,
            'reason_devolution': self.reason_devolution
        }


#Table Distributor
class Distributor(db.Model):
    distributor_id = db.Column(db.Integer, primary_key=True)
    first_name_distributor = db.Column(db.String(50), nullable=False)
    last_name_distributor = db.Column(db.String(50), nullable=False)
    address_distr = db.Column(db.String(50), nullable=False)
    phone_number_distr = db.Column(db.String(50), nullable=False)
    name_product = db.Column(db.String(50), nullable=False)

    def to_dict(self):
        return {
            'distributor_id': self.distributor_id,
            'first_name_distributor': self.first_name_distributor,
            'last_name_distributor': self.last_name_distributor,
            'address_distr': self.address_distr,
            'phone_number_distr': self.phone_number_distr,
            'name_product': self.name_product
        }
        
        
#Table Buy      
class Buy(db.Model):
    code_buy = db.Column(db.String(50), primary_key=True)
    distributor_id = db.Column(db.Integer, db.ForeignKey('distributor.distributor_id'), nullable=False)
    provincial_purchases = db.Column(db.String(50))
    name_buy = db.Column(db.String(50), nullable=False)
    date_buy = db.Column(db.Date, nullable=False)
    quantity_buy = db.Column(db.String(50), nullable=False)
    order_status = db.Column(db.String(50), nullable=False)

    def to_dict(self):
        return {
            'code_buy': self.code_buy,
            'distributor_id': self.distributor_id,
            'provincial_purchases': self.provincial_purchases,
            'name_buy': self.name_buy,
            'date_buy': self.date_buy,
            'quantity_buy': self.quantity_buy,
            'order_status': self.order_status
        }

#Table buy_product      
class Buy_Product(db.Model):
    code_product = db.Column(db.String(50), db.ForeignKey('product.code_product'), primary_key=True)
    code_buy = db.Column(db.String(50), db.ForeignKey('buy.code_buy'), primary_key=True)
    distributor_id = db.Column(db.Integer, db.ForeignKey('distributor.distributor_id'), primary_key=True)

    def to_dict(self):
        return {
            'code_product': self.code_product,
            'code_buy': self.code_buy,
            'distributor_id': self.distributor_id
        }

 
#curl -v http://localhost:7002/customer
@app.route('/customer', methods=['GET'])
def get_customer():
    customers = Customer.query.all()
    return jsonify([customer.to_dict() for customer in customers])
    
    
#curl -v http://localhost:7002/customer/33    
@app.route('/customer/<int:id>')
def get1_customer(id):
    customer = Customer.query.get(id)
    if customer is None:
        return f'Customer with id {id} not found', 404
    return jsonify(customer.to_dict())


#curl -X POST -H "Content-Type: application/json" -d "{\"first_name_customer\": \"Pedro\", \"last_name_customer\": \"Sanchez\", \"address_customer\": \"Barrio Nuevo\", \"phone_number_customer\": \"0987654321\"}" -v http://localhost:7002/customer
@app.route('/customer', methods=['POST'])
def post_customer():
    # obtener el cliente del cuerpo de la solicitud
    request_customer = request.json
    # generar un ID para el cliente
    new_id = db.session.query(db.func.max(Customer.customer_id)).scalar() or 0
    new_id += 1
    # crear un nuevo cliente
    new_customer = Customer(
        customer_id=new_id,
        first_name_customer=request_customer['first_name_customer'],
        last_name_customer=request_customer['last_name_customer'],
        address_customer=request_customer['address_customer'],
        phone_number_customer=request_customer['phone_number_customer']
    )

    # agregar el nuevo cliente a la base de datos
    db.session.add(new_customer)
    db.session.commit()
    # devolver el nuevo cliente al cliente
    return jsonify(new_customer.to_dict()), 201
    
    
#curl --header "Content-Type: application/json" --request PUT --data "{\"first_name_customer\": \"Dayana\", \"last_name_customer\": \"Gonzalez\", \"address_customer\": \"Nueva Dirección\", \"phone_number_customer\": \"097645373\"}" -v http://localhost:7002/customer/33   
@app.route('/customer/<int:id>', methods=['PUT'])
def update_customer(id):
    # Obtener los datos actualizados del cliente desde el cuerpo de la solicitud
    updated_data = request.json
    # Buscar el cliente en la base de datos
    customer = Customer.query.get(id)
    if customer:
        # Actualizar los campos del cliente con los datos actualizados
        customer.first_name_customer = updated_data.get('first_name_customer', customer.first_name_customer)
        customer.last_name_customer = updated_data.get('last_name_customer', customer.last_name_customer)
        customer.address_customer = updated_data.get('address_customer', customer.address_customer)
        customer.phone_number_customer = updated_data.get('phone_number_customer', customer.phone_number_customer)
        # Guardar los cambios en la base de datos
        db.session.commit()
        # Devolver los datos actualizados del cliente como respuesta
        return jsonify(customer.to_dict()), 200

    return f'Customer with id {id} not found', 404
    
    
# curl --request DELETE -v http://localhost:7002/customer/31
@app.route('/customer/<int:id>', methods=['DELETE'])
def delete_customer(id):
    customer = Customer.query.get(id)
    if customer:
        db.session.delete(customer)
        db.session.commit()
        return f'Customer with id {id} deleted', 200
    return f'Customer with id {id} not found', 404


#curl -v http://localhost:7002/product 
@app.route('/product', methods=['GET'])
def get_product():
    products = Product.query.all()
    return jsonify([product.to_dict() for product in products])   


#curl -X POST -H "Content-Type: application/json" -d "{\"code_product\": \"20PLM\", \"name_product\": \"Pantalon de mujer\", \"price_product\": 9.99, \"in_stock\": \"10 unidades\", \"category_product\": \"Prenda de vestir\", \"size_available\": \"XL\"}" -v http://localhost:7002/product

@app.route('/product', methods=['POST'])
def create_product():
    request_product = request.json
    new_product = Product(
        code_product=request_product['code_product'],
        name_product=request_product['name_product'],
        price_product=request_product['price_product'],
        in_stock=request_product['in_stock'],
        category_product=request_product['category_product'],
        size_available=request_product['size_available']
    )
    db.session.add(new_product)
    db.session.commit()
    return jsonify(new_product.to_dict()), 201

#curl --header "Content-Type: application/json" --request PUT --data "{"name_product": "Uniforme de colegio", "price_product": 15.00, "in_stock": "10 unidades", "category_product": "Prenda escolares", "size_available": "XL"}" \-v http://localhost:7002/product/19PLM
@app.route('/product/<string:code>', methods=['PUT'])
def update_product(code):
    updated_data = request.json
    product = Product.query.get(code)
    if product:
        product.name_product = updated_data.get('name_product', product.name_product)
        product.price_product = updated_data.get('price_product', product.price_product)
        product.in_stock = updated_data.get('in_stock', product.in_stock)
        product.category_product = updated_data.get('category_product', product.category_product)
        product.size_available = updated_data.get('size_available', product.size_available)
        db.session.commit()
        return jsonify(product.to_dict()), 200
    return f'Product with code {code} not found', 404  
    
 
#curl --request DELETE \-v http://localhost:7002/product/19PLM 
@app.route('/product/<string:code>', methods=['DELETE'])
def delete_product(code):
    product = Product.query.get(code)
    if product:
        db.session.delete(product)
        db.session.commit()
        return f'Product with code {code} deleted', 200
    return f'Product with code {code} not found', 404
    
#curl -v http://localhost:7002/sell   
@app.route('/sell', methods=['GET'])
def get_sells():
    sells = Sell.query.all()
    return jsonify([sell.to_dict() for sell in sells])

#curl -X POST -H "Content-Type: application/json" -d "{\"code_sell\": \"V91\", \"customer_id\": 2, \"code_product\": \"10XTR\",\"name_sell\": \"Licra \", \"date_sell\": \"2023-12-01\", \"payment_method\": \"Efectivo\"}" \-v http://localhost:7002/sell    
@app.route('/sell', methods=['POST'])
@app.route('/sell', methods=['POST'])
def create_sell():
    request_sell = request.json
    code_product = request_sell['code_product']
    quantity = 1  # Cantidad de productos vendidos (puede ser ajustada según tus necesidades)

    # Verificar si el producto existe
    product = Product.query.get(code_product)
    if product is None:
        return f'Product with code {code_product} not found', 404

    # Verificar si hay suficiente stock disponible
    if product.in_stock < quantity:
        return f'Insufficient stock for product with code {code_product}', 400

    # Actualizar el stock del producto
    product.in_stock -= quantity
    db.session.commit()

    # Crear una nueva venta
    new_sell = Sell(
        code_sell=request_sell['code_sell'],
        customer_id=request_sell['customer_id'],
        code_product=code_product,
        name_sell=request_sell['name_sell'],
        date_sell=request_sell['date_sell'],
        payment_method=request_sell['payment_method']
    )
    db.session.add(new_sell)
    db.session.commit()

    return jsonify(new_sell.to_dict()), 201
    

#curl --header "Content-Type: application/json" --request PUT --data "{\"customer_id\": 3,\"code_product\": \"06YTT\", \"name_sell\": \"Mochila\",\"date_sell\": \"2023-10-04\",\"payment_method\": \"Transferencia\"}" -v http://localhost:7002/sell/V91
@app.route('/sell/<string:code_sell>', methods=['PUT'])
def update_sell(code_sell):
    # Obtener los datos actualizados de la venta desde el cuerpo de la solicitud
    updated_data = request.json
    # Buscar la venta en la base de datos
    sell = Sell.query.get(code_sell)
    if sell:
        # Actualizar los campos de la venta con los datos actualizados
        sell.name_sell = updated_data.get('name_sell', sell.name_sell)
        sell.date_sell = updated_data.get('date_sell', sell.date_sell)
        sell.payment_method = updated_data.get('payment_method', sell.payment_method)

        # Verificar si el producto ha cambiado
        new_code_product = updated_data.get('code_product')
        if new_code_product and new_code_product != sell.code_product:
            # Actualizar el stock del producto anterior incrementando la cantidad
            previous_product = Product.query.get(sell.code_product)
            if previous_product:
                previous_product.in_stock += 1

            # Actualizar el stock del nuevo producto decrementando la cantidad
            new_product = Product.query.get(new_code_product)
            if new_product:
                new_product.in_stock -= 1

            sell.code_product = new_code_product

        # Guardar los cambios en la base de datos
        db.session.commit()

        # Devolver los datos actualizados de la venta como respuesta
        return jsonify(sell.to_dict()), 200

    return f'Sell with code {code_sell} not found', 404

    

#curl -X DELETE -v http://localhost:7002/sell/V91
@app.route('/sell/<string:code>', methods=['DELETE'])
def delete_sell(code):
    sell = Sell.query.get(code)
    if sell:
        # Obtener el producto vendido
        product = Product.query.get(sell.code_product)
        if product:
            # Incrementar la cantidad en stock del producto
            product.in_stock += 1

        # Eliminar la venta
        db.session.delete(sell)
        db.session.commit()

        return f'Sell with code {code} deleted. Product returned to stock.', 200

    return f'Sell with code {code} not found', 404



#curl -v http://localhost:7002/distributor   
@app.route('/distributor', methods=['GET'])
def get_distributor(): 
    distributors = Distributor.query.all()
    return jsonify([distributor.to_dict() for distributor in distributors])
    

#curl -X POST -H "Content-Type: application/json" -d "{\"distributor_id\":6 ,\"first_name_distributor\": \"John\", \"last_name_distributor\": \"Villaroel\", \"address_distr\": \"6 de Diciembre\", \"phone_number_distr\": \"0964759373\", \"name_product\": \"lenceria\"}" -v http://localhost:7002/distributor@app.route('/distributor', methods=['POST'])
def create_distributor():
    request_data = request.json
    new_distributor = Distributor(
        distributor_id=request_data['distributor_id'],
        first_name_distributor=request_data['first_name_distributor'],
        last_name_distributor=request_data['last_name_distributor'],
        address_distr=request_data['address_distr'],
        phone_number_distr=request_data['phone_number_distr'],
        name_product=request_data['name_product']
    )
    db.session.add(new_distributor)
    db.session.commit()
    return jsonify(new_distributor.to_dict()), 201
    
    
    
@app.route('/distributor/<int:id>', methods=['PUT']) 
def update_distributor(id):
    updated_data = request.json
    distributor = Distributor.query.get(id)
    if distributor:
        distributor.first_name_distributor = updated_data.get('first_name_distributor', distributor.first_name_distributor)
        distributor.last_name_distributor = updated_data.get('last_name_distributor', distributor.last_name_distributor)
        distributor.address_distr = updated_data.get('address_distr', distributor.address_distr)
        distributor.phone_number_distr = updated_data.get('phone_number_distr', distributor.phone_number_distr)
        distributor.name_product = updated_data.get('name_product', distributor.name_product)
        db.session.commit()
        return jsonify(distributor.to_dict()), 200
    return f'Distributor with id {id} not found', 404
    
    

   
     
#curl -v http://localhost:7002/buy-distributor 
@app.route('/buy-distributor', methods=['GET'])
def get_buy_distributor():
    # Realizar la consulta para obtener los datos requeridos
    results = db.session.query(Buy.code_buy, Distributor.first_name_distributor, Distributor.last_name_distributor, Distributor.name_product)\
        .join(Distributor, Buy.distributor_id == Distributor.distributor_id)\
        .all()

    # Verificar si no se encontraron resultados
    if not results:
        return jsonify({'error': 'No se encontraron datos'}), 404

    # Convertir los resultados en un formato adecuado (por ejemplo, JSON)
    response = []
    for result in results:
        response.append({
            'Buy ID': result[0],
            'Distributor Name': f"{result[1]} {result[2]}",
            'Product Name': result[3]
        })

    return jsonify(response)
    
#curl -X GET http://localhost:7002/sell-customer
@app.route('/sell-customer', methods=['GET'])
def get_sell_customer():
    # Realizar la consulta para obtener los datos requeridos
    results = db.session.query(Sell.code_sell, Sell.customer_id, Sell.name_sell, Sell.date_sell, Sell.payment_method, Customer.first_name_customer, Customer.last_name_customer, Customer.phone_number_customer)\
        .join(Customer, Sell.customer_id == Customer.customer_id)\
        .all()

    # Verificar si no se encontraron resultados
    if not results:
        return jsonify({'error': 'No se encontraron datos'}), 404

    # Convertir los resultados en un formato adecuado (por ejemplo, JSON)
    response = []
    for result in results:
        response.append({
            'Sell code_sell': result[0],
            'Customer ID': result[1],
            'Sell Name': result[2],
            'Sell Date': result[3].isoformat(),
            'Payment Method': result[4],
            'Customer Name': f"{result[5]} {result[6]}",
            'Customer Phone': result[7]
        })

    return jsonify(response)
    
    
    
 


if __name__ == '__main__':
    app.run(debug=True, host='localhost', port=port_number)
