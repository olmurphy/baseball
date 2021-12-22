from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, BooleanField, SubmitField
from wtforms.validators import DataRequired

class PlayerForm(FlaskForm):
    playerid = StringField('PlayerID:', validators=[DataRequired()])
    submit = SubmitField('Enter')
