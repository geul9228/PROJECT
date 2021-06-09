import pymysql
import csv

#pip install PyMySQL;

def insert_mysql():

    file = open("Seoul_covid19.csv", "r", encoding='ms949')
    rd = csv.reader(file)

    conn = pymysql.connect(host='localhost',
                           user='Admin',
                           password='1234',
                           db='JSP',
                           charset='utf8')
    for index, line in enumerate(rd):
        print(index)
        print(line)
        row = tuple(line)
        if index !=0:
            print (int(row[0]), 'row[1] = ',row[1],'row[2] = ', row[2], 'row[3]= ',row[3])
        try:
            sql = 'INSERT INTO seoul_covid19 select %s, %s, %s, %s from dual WHERE EXISTS(select * from seoul_covid19)'
            cursor = conn.cursor()
            if index != 0:
                row = tuple(line)
                cursor.execute(sql, ( int(row[0]) , row[1], row[2], row[3]))
            conn.commit()
        except Exception as e:
            print(e)
            continue
        # finally:
        #     conn.close()
    file.close()