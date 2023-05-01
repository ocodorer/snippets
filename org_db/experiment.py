import sqlite3
from os.path import join, isfile
from os import remove

DBPATH = join(".cache", "org_base.db")
CREATE_DB_PATH = join("org_db", "sql", "create_org_db.sql")
INSERT_VALUES_PATH = join("org_db", "sql", "insert_values.sql")
ASSERTIONS_PATH = join("org_db", "sql", "assertions.sql")

if isfile(DBPATH):
    remove(DBPATH)

con = sqlite3.connect(DBPATH)
c = con.cursor()


with open(CREATE_DB_PATH, "r") as fo:
    sql = fo.read()
    c.executescript(sql)
    con.commit()

with open(INSERT_VALUES_PATH, "r") as fo:
    sql = fo.read()
    c.executescript(sql)
    con.commit()

with open(ASSERTIONS_PATH, "r") as fo:
    sql = fo.read()
    c.executescript(sql)
    con.commit()

c.execute("SELECT * FROM employee")
d = c.fetchall()
print(d)