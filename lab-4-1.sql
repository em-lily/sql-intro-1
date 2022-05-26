-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935



SELECT SUM(Stats.hits) FROM Stats
INNER JOIN Players ON Stats.player_id = Players.id
WHERE Players.first_name = "Barry" and Players.last_name="Bonds"