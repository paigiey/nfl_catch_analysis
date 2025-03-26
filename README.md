NFL Catch Analysis: Catch % vs Adjusted Catch

This project explores how wide receiver **catch percentage** varies under different **quarterback pressure scenarios**, with a focus on **blitz plays**. It combines multiple data sources and tools to surface which receivers thrive in high-difficulty situations.

---

## 📊 Project Overview

The goal of this analysis is to go beyond surface-level stats and evaluate wide receiver performance using both traditional and context-adjusted metrics:
- **Catch Percentage (Catch %)** – Standard measure: receptions ÷ targets
- **Adjusted Catch (Adj Catch)** – Custom metric accounting for QB pressure, throw difficulty, and defensive coverage

---

## 🛠 Tools & Technologies

- **R** + [`nflverse`](https://www.nflverse.com/) – Data acquisition & preprocessing
- **SQL** – Data wrangling and metric calculation across joined datasets
- **Tableau** – Data visualization and interactive dashboards
- **Git/GitHub** – Version control and collaboration

---

## 🔗 Data Sources

- `nflfastR` via `nflverse` (play-by-play data)
- Player stats (receiving, quarterback, defensive pressure)
---

## 📈 Key Insights

- Some receivers (e.g., **C. Brown**, **G. Kittle**) maintain high performance even under pressure.
- High catch % ≠ high impact – some receivers benefit from easier targets.
- Adjusted metrics reveal underrated contributors and situational reliability.
