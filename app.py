import sqlite3
import random
from flask import Flask, session, render_template, request, g

app = Flask(__name__)
app.secret_key = "4E8C15F8-E962-4DA5-8C81-ADB837B67D52" # Cookie encryption

@app.route("/")
def index():
    data = get_db()
    return str(data)


def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect('skaterecommendations.db')
        cursor = db.cursor()
        cursor.execute("select boot_type from boots")
        all_data = cursor.fetchall()
        all_data = [str(val[0]) for val in all_data]
    return all_data

@app.teardown_appcontext
def close_connection(exception):
    db = getattr(g, '_database', None)
    if db is not None:
        db.close()

# Run server
if __name__ == '__main__':
    app.run()