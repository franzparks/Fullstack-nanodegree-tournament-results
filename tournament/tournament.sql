-- Table definitions for the tournament project.
-- Drop tournament database if it exists
DROP DATABASE IF EXISTS tournament;

-- Create Database 'Tournament'
CREATE DATABASE tournament;

-- Connect to the tournament database
\c tournament

-- Drop all tables and views if they exist
DROP TABLE IF EXISTS players CASCADE;
DROP tABLE IF EXISTS matches CASCADE;
DROP VIEW IF EXISTS standings CASCADE;

-- Creates a players table
CREATE TABLE players(
  player_id serial PRIMARY KEY,
  player_name text
);

-- Creates a matches table with a foreign key to players
CREATE TABLE matches (
  match_id serial PRIMARY KEY,
  winner INTEGER,
  loser INTEGER,
  FOREIGN KEY(winner) REFERENCES players(player_id),
  FOREIGN KEY(loser) REFERENCES players(player_id)
);

-- Creates a view of matches played sorted by won count
CREATE VIEW standings AS
SELECT p.player_id as player_id, p.player_name,
(SELECT count(*) FROM matches WHERE matches.winner = p.player_id) as won,
(SELECT count(*) FROM matches WHERE p.player_id in (winner, loser)) as played
FROM players p
GROUP BY p.player_id
ORDER BY won DESC;
