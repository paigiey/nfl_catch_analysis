## NFL Catch Analysis
The NFL Catch Analysis project provides a comprehensive evaluation of receiver performance during the 2024 NFL season. By focusing on both Catch Percentage (Catch %) and Adjusted Catch Percentage (Adj Catch %), this analysis highlights receiver efficiency in context—accounting for target difficulty, defensive coverage, and situational variance.

Project Highlights
  Developed advanced receiver metrics using raw play-by-play data and contextual adjustments.
  Created adjusted catch rate to reflect performance against varying levels of defensive pressure.
  Analyzed team-level and player-level trends to identify over- and underperformers.
  Built Tableau dashboards for interactive visual exploration of raw vs. adjusted performance.
  Combined SQL, Tableau, and play-by-play data analysis to assess both offensive and defensive contributions to passing efficiency.

Key Metrics
Catch Percentage (Catch %):
  Standard metric calculated as Catches ÷ Targets. Reflects how often a receiver completes receptions when targeted.
Adjusted Catch Percentage (Adj Catch %):
  A custom metric that incorporates factors like:
    Defensive pressure and matchup strength.

Data Sources
nfl_pbp_2024.csv: NFL play-by-play data for the 2024 season.
catch_by_player.csv: Aggregated receiver statistics by player.
catch_by_def_by_player.sql: SQL script to analyze catch rates vs. specific defenses.
catch_by_def_by_game.sql: SQL script evaluating defense performance per game.

Visualizations
1. Receiver Performance: Raw vs Adjusted Catch Rates
Platform: Tableau
Purpose: Compares each player’s raw catch % to their adjusted catch %, revealing context-based efficiency.
Key Features:
  Identifies players outperforming or underperforming expectations.
  Interactive filters by player or team.
  Valuable for fantasy football strategy, scouting, or advanced analytics.
Use Case & Analytical Value:
  Highlights overperforming receivers — those who maintain high efficiency against tight coverage or long throws.
  Detects undervalued players whose raw catch rates are suppressed by poor QB play or strong defenses.
Serves as a tool for:
- Fantasy football projections
- Scouting analysis
- Team performance evaluations

2. Average Adjusted Catch % Allowed by Defense
Use Case & Analytical Value:
  Quantifies defensive coverage efficiency — not just whether receptions occur, but how difficult they are to earn.
Purpose:
- Ranks teams by how well they defend against the pass.
- Higher values = weaker defensive coverage.
- Useful for weekly matchup analysis or identifying exploitable defenses in DFS and scouting.

Analytical Insights
Defensive Vulnerabilities:
  Certain teams consistently allow high adjusted catch percentages, signaling weaknesses in coverage schemes or personnel.
Receiver Consistency:
  Some players maintained high efficiency across varied matchups, showing skill independent of opposition.

Future Enhancements
Advanced Metrics:
  Integrate Yards After Catch (YAC), Average Depth of Target (aDOT), and Drop Rate for a more complete performance model.
Predictive Modeling:
  Use historical adjusted catch rates and matchup data to forecast future performance under various conditions.
Enhanced Interactivity:
  Improve Tableau dashboards with user-driven filters, team comparison toggles, and matchup-specific drilldowns.
