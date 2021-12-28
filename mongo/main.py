import pymongo
from pymongo import MongoClient

cluster = MongoClient("mongodb://localhost")

db = client["test"]
col = db["test"]

#EQUIVALENTE A UN INSERT
col.insert_many([
    {
        'edad':23,
        'nombre':'Peruano',
        'coloresFav':['azul','negro']
    },
    {
        'edad': 19,
        'nombre': 'TATATA',
        'coloresFav': ['amarillo', 'blanco']
    }
])

#EQUIVALENTE A UN SELECT
result = col.find_one({
    "edad":23
})
print(result)

#EQUIVALENTE A UN DELETE
col.delete_one({
    "edad":20
})

#EQUIVALENTE A UN UPDATE
col.update_one({
    "edad":20
},{
    "$set":{
        "edad:80"
    }
})

#EQUIVALENTE AL DROP TABLE
db.drop_collection('personas')
print(db.list_collection_names())

#EQUIVALENTE A DROP DATABASE
cluster.drop_database("prueba")
print(cluster.list_database_names())