from flask import render_template, flash, redirect, url_for
from app import app
from app.forms import PlayerForm

from app import methods
from app import mariadbconfig

import pymysql
import string

@app.route('/')
@app.route('/index')
def index():
    #user = {'username': 'Owe'}
    return render_template('index.html', title='Home')

@app.route('/player', methods=['GET', 'POST'])
def player():
    form = PlayerForm()
    if form.validate_on_submit():

        player = getPlayer(form.playerid.data)
        if player is None:
            return render_template('player.html', title='PlayerID', form=form, notFound = "Playerid not found")
        else:
            return render_template('player.html', title='PlayerID', form=form, name=player.data[0],
                headers=player.data[1], data=player.data[2])
    return render_template('player.html', title='PlayerID', form=form)

@app.route('/playerid')
def playerid():
    return render_template('playerid.html', title='playerids')





def getPlayer(playerid):

    con = pymysql.connect(host=mariadbconfig.mysql['host'],user=mariadbconfig.mysql['user'],password=mariadbconfig.mysql['password'],db=mariadbconfig.mysql['db'])

    player = None
    player = methods.player(playerid)

    try:
        cur = con.cursor()
        sql = "select nameFirst, nameLast from people where playerid = %s"
        cur.execute(sql, playerid)
        results = cur.fetchall()

        if cur.rowcount == 0:
            return None

        # setting name, birth and death year (if not alive)
        player.setFirst(results[0][0])
        player.setLast(results[0][1])

        # getting batting statistics
        sql = "select * from batting where playerid = %s"
        cur.execute(sql,playerid)

        results = cur.fetchall()
        if cur.rowcount != 0:
            sql = "show columns from batting"
            cur.execute(sql)
            attributes = cur.fetchall()

            name = string.capwords(player.getFirst() + ' ' + player.getLast())
            player.data = []
            player.data.append(name)

            columns = []
            # creating table column headers
            for col in attributes:
                columns.append(col[0])
            player.data.append(columns)

            # create table's row data
            data = []
            for row in results:
                rows = []
                for col in row:
                    rows.append(col)
                data.append(rows)

            player.data.append(data)

    except Exception:
        print("Database exception.")
        raise
    finally:
        con.close()

    return player
