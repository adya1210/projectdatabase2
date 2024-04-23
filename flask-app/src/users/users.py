from flask import Blueprint, request, jsonify, make_response
import json
from src import db

users = Blueprint('user', __name__)

# Get all customers from the DB
@users.route('/users', methods=['GET'])
def get_users():
    cursor = db.get_db().cursor()
    cursor.execute('select userID, username, email, password, address_numAndStreet, address_city, address_state from Users')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get customer detail for customer with particular userID
@users.route('/users/<userID>', methods=['GET'])
def get_userID(userID):
    cursor = db.get_db().cursor()
    cursor.execute('select * from users where id = {0}'.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

    

@users.route('/users/<userID>', methods=['DELETE'])
def delete_user(userID):
    cursor = db.get_db().cursor()
    cursor.execute('DELETE FROM users WHERE userID = %s', (userID))
    db.get_db().commit()
    return make_response(jsonify({"message": "User deleted successfully"}), 200)
    
@users.route('/users/<userID>', methods=['PUT']) 
def update_user(userID): 
    user = users.query.get(userID)
    data = request.json
    user.username = data.get('username', user.username)
    user.email = data.get('email', user.email)
    user.password = data.get('password', user.password)
    user.address_numAndStreet = data.get('address_numAndStreet', user.address_numAndStreet)
    user.address_city = data.get('address_city', user.address_city)
    user.address_state = data.get('address_state', user.address_state)

    db.session.commit()
    return jsonify({'user updated successfully'}), 200



@users.route('/users/<userID>', methods=['GET'])
def get_user_address():
    cursor = db.get_db().cursor()
    cursor.execute('SELECT address_numAndStreet, address_city, address_state from users WHERE userID = <userID>')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@users.route('/users', methods=['POST'])
def create_user():
    data = request.get_json()
    cursor = db.get_db().cursor()
    cursor.execute('INSERT INTO users (userID, username, email, password, address_numAndStreet, address_city, address_state) VALUES (%s, %s, %s, %s, %s, %s, %s)',
                   (data['userId'], data['username'], data['email'], data['password'], data['address_numAndStreet'], data['address_city'], data['address_state']))
    db.get_db().commit()
    return make_response(jsonify({"message": "user created successfully"}), 201)