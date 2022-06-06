import sqlite3
from flask import Flask, render_template, request, session
import os


app = Flask(__name__)
app.secret_key = "4E8C15F8-E962-4DA5-8C81-ADB837B67D52"



@app.route("/", methods=["GET", "POST"])
def home():
    return render_template("form.html")

def db_connection():
    conn = None
    try:
        conn = sqlite3.connect("skaterecommendations.db")
    except sqlite3.error as e:
        print(e)
    return conn

@app.route("/userrec/", methods=["POST"])
def userrec():
    conn = db_connection()
    cursor = conn.cursor()

    if request.method == "POST":
        try:
            username = request.form["username"]
            email = request.form["email"]
            skating_style = request.form["skating_style"]

            conn.execute("INSERT INTO skaters (username, email, skating_style) VALUES (?,?,?)",(username, email, skating_style))

            conn.commit()
            msg = "Record successfully added"
        except:
            conn.rollback()
            msg = "Error in insert operation"

        finally:
            return render_template("result.html", msg = msg)
            conn.close()
         
        
if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0', port=port)