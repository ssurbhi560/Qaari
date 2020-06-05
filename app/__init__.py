from flask import Flask
from config import Config
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

app = Flask(__name__)
app.config.from_object(Config)
db = SQLAlchemy(app) #creating db object that representts database
migrate = Migrate(app, db) #object represents migration engine

from app import routes, models #midules will define structure of the databaase

