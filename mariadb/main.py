import pymysql

# Create a connection object

conn = pymysql.connect('localhost', 'user', 'password', 'database')

# Create a cursor object
cur = conn.cursor()

query = f"SELECT price,PRODUCT_TYPE FROM PRODUCT"

cur.execute(query)

rows = cur.fetchall()
conn.close()

for row in rows:
    print(row)