/* Create table 'players' */
CREATE TABLE players (id SERIAL primary key, name TEXT);

/* Create Table 'matches' */
CREATE TABLE matches (id SERIAL primary key, winner INTEGER REFERENCES players (id), loser INTEGER REFERENCEs players (id));

/* Create view of players sorted by their Wins in descending order */
CREATE VIEW standings AS
SELECT players.id as player_id,
(SELECT players.name) AS Name,
(SELECT count(*) FROM matches WHERE players.id=matches.winner) AS Wins,
(SELECT count(*) FROM matches WHERE players.id IN (winner, loser)) AS Matches
FROM players
GROUP BY players.id
ORDER BY Wins DESC;

