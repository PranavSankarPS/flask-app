from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def home():
    message = os.getenv("APP_MESSAGE", "Default Message")
    username = os.getenv("DB_USERNAME", "Unknown User")

    file_path = "/app/data/visitor_log.txt"

    with open(file_path, "a") as f:
        f.write("Someone visited the application\n")

    with open(file_path, "r") as f:
        log = f.read()

    return f"""
{message}

Database User: {username}

Visitor Log:

{log}
"""
@app.route("/health")
def health():
    return "OK", 200


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)