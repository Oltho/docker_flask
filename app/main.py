from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
	return "Hello World !"

@app.route('/hello/<username>')
def hello_username(username):
	return ('Hello %s' % username)

if __name__ == "__main__":
	app.run(host='0.0.0.0', port=80)
