import pymysql
# pip install mysql-connector
# 1 создать подключение
connection = pymysql.connector.connect(
        host="localhost",
        user="root",
        passwd="admin",
        database="academy",
        auth_plugin='mysql_native_password'
    )
# 2 создать курсор
cursor = connection.cursor()
# 3 объявить команду
cursor.execute('select Count(id) from teachers')
# 4 достаем данные
rows = cursor.fetchall()
for row in rows:
    print(row)
# 5 закрываем соединение
cursor.close()
