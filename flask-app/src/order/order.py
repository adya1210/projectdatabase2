from flask import Blueprint, request, jsonify, make_response
import json
from src import db

order = Blueprint('order', __name__)



# Get all the products from the database
@order.route('/order', methods=['GET'])
def order_get():
    cursor = db.get_db().cursor()
    cursor.execute('SELECT orderID, orderDate, totalPrice, deliveryTime, userID, driverID from order')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)


# @order.route('/order', methods = ['POST'])
# def createOrder(): 
#     if request.method == 'POST':
#         orderID = request.form['orderID']
#         orderDate = request.form['orderDate']
#         totalPrice = request.form['TotalPrice']
#         deliveryTime = request.form['Delivery TIme']
#         userID = request.form['userID']
#         driverID = request.form['driverID']
#         db.get_db().cursor()
#         error = None
        
#         db.execute(
#              "INSERT INTO Orders(orderID, orderDate, totalPrice, deliveryTime, userID, driverID) VALUES (?, ?, ?, ?, ?,?)",
#              (orderID, orderDate, totalPrice, deliveryTime, userID, driverID),
#              )
#         db.commit()
#         return jsonify({'dessert added successfully'}), 200

@order.route('/order/<orderID>', methods=['DELETE'])
def delete_order(orderID):
    order = order.query.get(orderID)
    if order:
            db.session.delete(order)
            db.session.commit()
            return jsonify({'message': 'Order deleted successfully'}), 200


@order.route('/order/<orderID>', methods = ['PUT'])
def update_order(orderID): 
    orderID = order.query.get(orderID)
    data = request.json
    order.orderDate = data.get('shopID', order.orderDate)
    order.totalPrice = data.get('totalPrice', order.totalPrice)
    order.deliveryTime = data.get('deliveryTime', order.deliveryTime)
    order.userID = data.get('userID', order.userID)
    order.driverID = data.get('driverID', order.driverID)
    db.session.commit()
    return jsonify({'dessert updated successfully'}), 200




@order.route('/order/<orderID>', methods=['GET'])
def get_orderID():
    cursor = db.get_db().cursor()
    cursor.execute('SELECT deliveryTime from order where orderID = <orderID>')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

# @order.route('/order/<orderID>', methods=['GET'])
# def get_products():
#     cursor = db.get_db().cursor()
#     cursor.execute('SELECT totalPrice from order where orderID = <orderID>')
#     column_headers = [x[0] for x in cursor.description]
#     json_data = []
#     theData = cursor.fetchall()
#     for row in theData:
#         json_data.append(dict(zip(column_headers, row)))

#     return jsonify(json_data)


