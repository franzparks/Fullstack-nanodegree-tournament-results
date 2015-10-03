Tournament Results

Udacity Full Stack developer project (Full Secs can be found at: https://www.udacity.com/course/viewer#!/c-ud197-nd/l-3521918727/m-3519689284)

Highlights

Develop a database schema to store details of game matches among players.


Files in the project

tournament.py

Contains the implementation for the Swiss tournament

tournament.sql

Contains the SQL queries to create the database, tables and views

tournament_test.py

Contains the test cases for tournament.py



Expected results when tournament_test.py is run
Success! All tests pass!
vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py
1. Old matches can be deleted.
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success! All tests pass!