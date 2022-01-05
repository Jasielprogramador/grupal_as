import os
import sys

def operacion(zenbakia):
    ans = True
    while ans:
        print("""
            1. INSERT
            2. DELETE
            3. SELECT
            4. UPDATE
            5. VOLVER A ELEGIR LA BASE DE DATOS
        """)

        emaitza = input("Elige que operación quieres hacer: ")
        if zenbakia == "1":
            if(emaitza == "1"):
                os.system('./scripts/mariadb/insert.sh')
            elif(emaitza == "2"):
                os.system('./scripts/mariadb/delete.sh')
            elif (emaitza == "3"):
                os.system('./scripts/mariadb/select.sh')
            elif (emaitza == "4"):
                os.system('./scripts/mariadb/update.sh')
            elif (emaitza == "5"):
                ans = False
            else:
                print("\n Por favor elige uno de estos valores [1,2,3,4]")
        elif zenbakia == "2":
            if (emaitza == "1"):
                os.system('./scripts/mongodb/insert.sh')
            elif (emaitza == "2"):
                os.system('./scripts/mongodb/delete.sh')
            elif (emaitza == "3"):
                os.system('./scripts/mongodb/select.sh')
            elif (emaitza == "4"):
                os.system('./scripts/mongodb/update.sh')
            elif (emaitza == "5"):
                ans = False
            else:
                print("\n Por favor elige uno de estos valores [1,2,3,4]")
        elif zenbakia == "3":
            if (emaitza == "1"):
                os.system('scripts/mysql/insert.sh')
            elif (emaitza == "2"):
                os.system('scripts/mysql/delete.sh')
            elif (emaitza == "3"):
                os.system('scripts/mysql/select.sh')
            elif (emaitza == "4"):
                os.system('scripts/mysql/update.sh')
            elif (emaitza == "5"):
                ans = False
            else:
                print("\n Por favor elige uno de estos valores [1,2,3,4]")
        elif zenbakia == "4":
            if (emaitza == "1"):
                os.system('./scripts/postgres/insert.sh')
            elif (emaitza == "2"):
                os.system('./scripts/postgres/delete.sh')
            elif (emaitza == "3"):
                os.system('./scripts/postgres/select.sh')
            elif (emaitza == "4"):
                os.system('./scripts/postgres/update.sh')
            elif (emaitza == "5"):
                ans = False
            else:
                print("\n Por favor elige uno de estos valores [1,2,3,4]")
        elif zenbakia == "5":
            if (emaitza == "1"):
                os.system('./scripts/influxdb/insert.sh')
            elif (emaitza == "2"):
                os.system('./scripts/influxdb/delete.sh')
            elif (emaitza == "3"):
                os.system('./scripts/influxdb/select.sh')
            elif (emaitza == "4"):
                os.system('./scripts/influxdb/update.sh')
            elif (emaitza == "5"):
                ans = False
            else:
                print("\n Por favor elige uno de estos valores [1,2,3,4]")

def main():
    ans = True
    while ans:
        print("""
            1. PROBAR MARIADB
            2. PROBAR MONGODB
            3. PROBAR MYSQL
            4. PROBAR POSTGRES
            5. PROBAR INFLUXDB
            6. SALIRSE DEL PROGRAMA
        """)

        emaitza = input("Elige que base de datos quieres probar: ")
        if emaitza == "1":
            operacion("1")
        elif emaitza == "2":
            operacion("2")
        elif emaitza == "3":
            operacion("3")
        elif emaitza == "4":
            operacion("4")
        elif emaitza == "5":
            operacion("5")
        elif emaitza == "6":
            sys.exit(0)
        elif emaitza != "":
            print("\n Por favor elige uno de estos valores [1,2,3,4,5,6]")


if __name__ == '__main__':
    main()