# Owen Murphy
# Assignment 6

from app import mariadbconfig

import pymysql

import string
import sys
import warnings


class player:

    first = ''
    last = ''

    data = []

    def __init__(self, playerid):
        self.playerid = playerid

    def setPlayerid(self, playerid):
        self.playerid = playerid

    def getPlayerid(self):
        return self.playerid

    def setFirst(self, first):
        self.first = first

    def getFirst(self):
        return self.first

    def setLast(self, last):
        self.last = last

    def getLast(self):
        return self.last
