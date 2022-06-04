from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField

class SkaterInfo(FlaskForm):
    username = StringField('Username')
    email = StringField('Email')
    submit = SubmitField('Submit')