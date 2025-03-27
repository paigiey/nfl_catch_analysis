NFL Catch Analysis

Overview
The NFL Catch Analysis project offers an in-depth examination of NFL receivers' performance metrics, focusing on Adjusted Catch Percentage (Adj Catch %) and Catch Percentage (Catch %). By integrating data from various sources, this analysis provides valuable insights into receiver efficiency, defensive matchups, and situational performance.

Data Sources
nfl_pbp_2024.csv: Comprehensive NFL play-by-play data for the 2024 season.
catch_by_player.csv: Aggregated catch statistics per player.
catch_by_def_by_player.sql: SQL script analyzing catch metrics against specific defenses.
catch_by_def_by_game.sql: SQL script evaluating catch performance by defense per game.

Key Metrics
Catch Percentage (Catch %): Calculated as Catches / Targets, representing the proportion of successful receptions.​
Adjusted Catch Percentage (Adj Catch %): A refined metric that accounts for factors such as defensive pressure, providing a more nuanced evaluation of receiver performance.​

Visualizations

Visualization 1: Receiver Performance: Raw vs Adjusted Catch Rates (2024 Season)
This Tableau dashboard compares raw catch percentage to adjusted catch rate for NFL receivers. While raw catch percentage shows how often a player catches targets, adjusted catch rate accounts for target difficulty, depth of throw, and defensive coverage—giving a fuller picture of receiver efficiency.
Key features:
Identifies over- and under-performers based on context.
Useful for scouting, fantasy strategy, or performance analytics.
Interactive design allows for deeper player-by-player analysis.

Visualization 2: Average Adj Catch % Allowed by Defense
File: def avg catch %.png
Chart: Defensive Coverage Efficiency – Avg Adj Catch % Allowed
Chart Type: Vertical Bar Chart (square marks)
X-Axis: Defensive Team
Y-Axis: Average Adjusted Catch %
Color: Gradient from low to high Adj Catch % (lighter = better coverage, darker = worse)
Purpose: Ranks NFL defenses by their ability to limit receiver efficiency. Higher values indicate weaker pass coverage performance.
Use Case: Quickly identifying the most and least effective defenses against the pass, useful for weekly matchup decisions, DFS targeting, and scouting.

Insights
Defensive Vulnerabilities: Certain defenses allow higher Adj Catch %, indicating potential targets for offensive strategies.​
Receiver Consistency: Analysis reveals which receivers maintain high performance across different defensive matchups.​
Situational Performance: Evaluating metrics like Drop Rate vs. Target Share uncovers players who may be over-targeted despite lower efficiency.​

How to Use This Project
Data Integration: Utilize the provided SQL scripts to extract and analyze data from your NFL datasets.​
Visualization: Import the processed data into Tableau using the included .twb file to explore the visualizations and gain insights.​
Customization: Adjust the analyses to focus on specific teams, players, or timeframes as needed for your research or reporting purposes.​

Future Enhancements
Incorporate Advanced Metrics: Integrate additional performance indicators such as Yards After Catch (YAC) and Average Depth of Target (aDOT) for a more comprehensive analysis.​
Predictive Modeling: Develop models to forecast receiver performance based on historical data and defensive matchups.​
Interactive Dashboards: Enhance Tableau visualizations with interactive elements for dynamic data exploration.​
