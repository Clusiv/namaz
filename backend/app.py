from flask import Flask
from model import db, City
app = Flask(__name__)

@app.route('/')
def root():
    return 'root'

@app.route('/search/<string:city>')
def findCity(city):
    city: City = City.get_or_none(name = city)
    if city:
        return city.namaztime
    else:
        # return jsonify 404 or similar
        return 'not found'

app.run()