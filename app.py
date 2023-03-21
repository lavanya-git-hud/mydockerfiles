from flask import Flask

app = Flask(__name__)

@app.route("/", methods=['GET'])

def home():

    return "<h1> hello! this is my dev machine fromci/cd </h1>"

if __name__=="__main__":

    app.run(debug=True,host='0.0.0.0')


