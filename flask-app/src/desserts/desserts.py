from flask import Blueprint, request, jsonify, make_response
import json
from src import db


desserts = Blueprint('desserts', __name__)

# @desserts.route('/customers', methods=['GET'])
# def test():
#     return "hello"

@desserts.route('/mostExpensive', methods = ['GET'])
def get_most_pop_products():
    cursor = db.get_db().cursor()
    query = '''
        SELECT dessertID, name, price
        FROM desserts
        ORDER BY list_price DESC
        LIMIT 5
    '''
    cursor.execute(query)
       # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # create an empty dictionary object to use in 
    # putting column headers together with data
    json_data = []

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    # for each of the rows, zip the data elements together with
    # the column headers. 
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@desserts.route('/nutritionalInfo/<dessertID>', methods = ['GET'])
def get_nutritionalInfo():
    cursor = db.get_db().cursor()
    query = '''
        SELECT calories, carbsGrams, proteinGrams, fatGrams
        FROM nutritionalInfo
        WHERE dessertID = <dessertID>
    '''
    cursor.execute(query)
           # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # create an empty dictionary object to use in 
    # putting column headers together with data
    json_data = []

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    # for each of the rows, zip the data elements together with
    # the column headers. 
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

# @desserts.route('/desserts', methods = ['POST'])
# def createOrder(): 
#     if request.method == 'POST':
#         dessertID = request.form['dessertID']
#         shopID= request.form['shopID']
#         price = request.form['price']
#         name = request.form['name']
#         description = request.form['description']
#         db = db.get_db().cursor()
#         error = None
        
#         db.execute(
#              "INSERT INTO Desserts(dessertID, shopID, price, name, description) VALUES (?, ?, ?, ?, ?)",
#              (dessertID, shopID, price, name, description),
#              )
#         db.commit()
#         return jsonify({'dessert added successfully'}), 200

# Create a new food item
@desserts.route('/dessert', methods=['POST'])
def add_dessert():
    data = request.get_json()
    dessertID= data['dessertID']
    shopID = data['shopID']
    price = data['price']
    name = data['name']

    cursor = db.get_db().cursor()
    cursor.execute('INSERT INTO Dessert (dessertID, shopID, price, name, description) VALUES (%s, %s, %s, %s, %s)', (name, price))
    db.get_db().commit()
    return make_response(jsonify({"message": "Dessert added"}), 201)


@desserts.route('/desserts/<dessertID>', methods=['DELETE'])
def delete_dessert(dessertID):
    dessert = desserts.query.get(dessertID)
    if dessert:
            db.session.delete(dessert)
            db.session.commit()
            return jsonify({'message': 'Order deleted successfully'}), 200
    


@desserts.route('/desserts/<dessertID> ', methods = ['PUT'])
def update_dessert(dessertID): 
    dessertID = desserts.query.get(dessertID)
    data = request.json
    desserts.shopID = data.get('shopID', desserts.shopID)
    desserts.price = data.get('price', desserts.price)
    desserts.name = data.get('name', desserts.name)
    desserts.description = data.get('description', desserts.description)
    db.session.commit()
    return jsonify({'dessert updated successfully'}), 200


@desserts.route('/dessertShop', methods=['GET'])
def get_products():
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * from dessertShop')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)



