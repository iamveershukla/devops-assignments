from flask import Flask, render_template, request, redirect, url_for, flash
import pymysql

app = Flask(__name__)
app.secret_key = 'many random bytes'

conn = pymysql.connect(host='192.168.200.10', port=3306, user='root', passwd='root', db='webapp')

@app.route('/order')
def Order():
    cursor = conn.cursor()

    sql = "SELECT  * FROM orders"
    cursor.execute(sql)
    data = cursor.fetchall()

    cursor.close()

    return render_template('order.html', orders=data )

@app.route('/pricing')
def Price():
    cursor = conn.cursor()

    sql = "SELECT  * FROM price"
    cursor.execute(sql)
    data = cursor.fetchall()

    cursor.close()

    return render_template('price.html', prices=data )

if __name__ == "__main__":
    app.run(host='0.0.0.0')
