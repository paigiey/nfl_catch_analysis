WITH pressure_plays AS (
  SELECT 
    receiver_player_name,
    defteam,
    complete_pass
  FROM nfl_pbp_2024
  WHERE pass_attempt = TRUE 
    AND receiver_player_name IS NOT NULL
),

defensive_ranking AS (
  SELECT 
    defteam,
    ROUND(
      COUNT(*) FILTER (WHERE epa <= 0 AND play_type IN ('run', 'pass'))::NUMERIC /
      NULLIF(COUNT(*) FILTER (WHERE play_type IN ('run', 'pass')), 0),
    4) AS def_stop_rate
  FROM nfl_pbp_2024
  WHERE defteam IS NOT NULL
  GROUP BY defteam
),

receiver_vs_defense AS (
  SELECT 
    p.receiver_player_name,
    p.defteam,
    COUNT(*) AS targets,
    COUNT(*) FILTER (WHERE complete_pass) AS catches,
    d.def_stop_rate
  FROM pressure_plays p
  LEFT JOIN defensive_ranking d ON p.defteam = d.defteam
  GROUP BY p.receiver_player_name, p.defteam, d.def_stop_rate
),

receiver_stats AS (
  SELECT 
    receiver_player_name,
    SUM(targets) AS total_targets,
    SUM(catches) AS total_catches,
    ROUND(SUM(catches)::NUMERIC / SUM(targets), 4) AS catch_pct,
    ROUND(SUM(targets * (1+def_stop_rate))::NUMERIC / NULLIF(SUM(targets), 0), 4) AS avg_def_stop_rate
  FROM receiver_vs_defense
  GROUP BY receiver_player_name
)

SELECT *,
  ROUND(catch_pct * avg_def_stop_rate, 4) AS adj_catch
FROM receiver_stats
WHERE total_targets >= 65
ORDER BY adj_catch DESC;