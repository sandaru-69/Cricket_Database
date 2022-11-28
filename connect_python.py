import mysql.connector

conn = mysql.connector.connect(host="loaclhost", user="root", passwd="hello123", database="final2")

dbCursor = conn.cursor()
saveCursor = conn.cursor()

query_1 = ("select Team.team_name, Team.country from Team, Matches where wteam_id = team_id AND Matches.stadium_name = 'R. Premadasa Stadium';")

for i in dbcursor:
	print(i)
