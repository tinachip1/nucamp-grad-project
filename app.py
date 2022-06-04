import sqlite3
from flask import Flask, render_template, request, session
#from forms import SkaterInfo




app = Flask(__name__)
#app.secret_key = "4E8C15F8-E962-4DA5-8C81-ADB837B67D52"



@app.route("/", methods=["GET", "POST"])
def home():
    return render_template("form.html")

@app.route("/userrec/", methods=["POST", "GET"])
def userrec():
    if request.method == "POST":
        try:
            username = request.form["username"]
            email = request.form["email"]
            skating_style = request.form["skating_style"]

            with sqlite3.connect("skaterecommendations.db") as conn:
                cur = conn.cursor()

                cur.execute("INSERT INTO skaters (username, email, skating_style) VALUES (?,?,?)",(username, email, skating_style))

                conn.commit()
                msg = "Record successfully added"
        except:
            conn.rollback()
            msg = "Error in insert operation"

        finally:
            return render_template("result.html", msg = msg)
            conn.close()


@app.route("/input")
def input():
    skating_style=sqlite3.execute("SELECT skating_style FROM skating_style")
    return render_template("form.html",cityList=skating_style )
    # conn =  sqlite3.connect("skaterecommendations.db")
    # cur = conn.cursor()

    # cur.execute("SELECT skating_style FROM skating_style")

    # rows = cur.fetchall() 
    # for row in rows:
    #     print(row)
    #render template and send the set of tuples to the HTML file for displaying
    #return render_template("form.html",skating_style=rows )
       
        
if __name__ == '__main__':
    app.debug = True
    app.run()