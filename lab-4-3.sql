-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

--i need. home runs. 2019. team name. player id. first name. last name.

SELECT players.first_name, players.last_name, teams.name, stats.home_runs, teams.year
FROM stats
INNER JOIN players ON players.id = stats.player_id
INNER JOIN teams ON teams.id = stats.team_id
WHERE teams.year = 2019
ORDER BY stats.home_runs DESC
LIMIT 1;