WITH defensive_ranking AS (
SELECT defteam,
COUNT(*) FILTER (WHERE play_type = 'run' OR play_type = 'pass') AS total_plays,
COUNT(*) FILTER (WHERE epa <= 0 AND play_type = 'run' OR play_type = 'pass') AS stops,
ROUND(COUNT(*) FILTER (WHERE epa <= 0 AND play_type = 'run' OR play_type = 'pass')/(COUNT(*) FILTER (WHERE play_type = 'run' OR play_type = 'pass'))::NUMERIC, 4) AS def_stop_rate
FROM nfl_pbp_2024
WHERE defteam IS NOT NULL
GROUP BY defteam),

receiver_pressure_stats AS (
SELECT
posteam,
defteam,
qb_player_name,
receiver_player_name,
COUNT(*) AS targets,
COUNT(*) FILTER (WHERE complete_pass = TRUE) AS catches,
ROUND(COUNT(*) FILTER (WHERE complete_pass = TRUE)::NUMERIC/COUNT(*), 4) AS catch_pct
FROM nfl_pbp_2024
WHERE pass_attempt = TRUE AND receiver_player_name IS NOT NULL
GROUP BY receiver_player_name, posteam, defteam, qb_player_name)


SELECT
r.posteam,
r.defteam,
r.receiver_player_name,
r.targets,
r.catches,
r.catch_pct,
d.def_stop_rate,
ROUND(r.catch_pct * (d.def_stop_rate), 4) AS adj_catch_pct
FROM receiver_pressure_stats r
LEFT JOIN defensive_ranking d
ON r.defteam = d.defteam
WHERE targets >= 15
ORDER BY adj_catch_pct DESC;