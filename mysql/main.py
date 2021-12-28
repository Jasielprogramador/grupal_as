import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="yourusername",
  password="yourpassword"
)

mycursor = mydb.cursor()

#sin mas con esto se ponen todas las querys del mysql
mycursor.execute("select * from tatata")