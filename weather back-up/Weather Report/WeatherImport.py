import urllib, json
from pymongo import MongoClient
client = MongoClient()
db = client.twitter
weather = db.weather

url = "http://api.openweathermap.org/data/2.5/forecast?q=London,uk&mode=json&appid=618ccea85118db5694a46720437ba07c"
response = urllib.urlopen(url)
data = json.loads(response.read())
l = [d for d in data['list']]
weather.insert(l)