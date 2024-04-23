from flask import Blueprint, request, jsonify, make_response
import json
from src import db


reviews = Blueprint('users', __name__)

# Get all customers from the DB
@reviews.route('/reviews', methods=['GET'])
def get_reviews():
    cursor = db.get_db().cursor()
    cursor.execute('Select * from Reviews ')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@reviews.route('/reviews', methods=['POST'])
def create_movie():
    data = request.get_json()
    cursor = db.get_db().cursor()
    cursor.execute('INSERT INTO reviews(reviewId, reviewUserID, comment, timeStamp, rating) VALUES (%s, %s, %s, %s, %s)',
                   (data['reviewID'], data['reviewUserID'], data['comment'], data['timeStamp'], data['rating']))
    db.get_db().commit()
    return make_response(jsonify({"message": "Review created successfully"}), 201)

        
    
# get the top 5 products from the database

@reviews.route('/review/<reviewID>', methods=['DELETE'])
def delete_order(reviewID):
    review = review.query.get(reviewID)
    if review:
            db.session.delete(review)
            db.session.commit()
            return jsonify({'message': 'Order deleted successfully'}), 200
    

@reviews.route('/review/<reviewID> ', methods = ['PUT'])
def update_order(reviewID): 
    reviewID = reviews.query.get(reviewID)
    data = request.json
    reviews.reviewID = data.get('reviewID', reviews.reviewID)
    reviews.reviewUserID = data.get('reviewUserID', reviews.reviewID)
    reviews.comment = data.get('comment', reviews.comment)
    reviews.timeStamp = data.get('timeStamp', reviews.timeStamp)
    reviews.rating = data.get('rating', reviews.rating)
    db.session.commit()
    return jsonify({'user updated successfully'}), 200

@reviews.route('/getTopRated', methods=['GET'])
def getTopRated():
    cursor = db.get_db().cursor()
    query = '''
        SELECT rating
        FROM review
        ORDER BY rating DESC
        LIMIT 5
    '''
    cursor.execute(query)
    json_data = []
    theData = cursor.fetchall()
    row_headers = [x[0] for x in cursor.description]
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@reviews.route('/reviews/<reviewID>', methods=['GET'])
def get_products():
    cursor = db.get_db().cursor()
    cursor.execute('SELECT comment from reviews')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)