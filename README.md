# SQL‑Mentor‑AI‑Analysis

## About  
SQL‑Mentor‑AI‑Analysis is a PostgreSQL-based data analytics project focused on evaluating student performance data from a SQL Mentor app. The main objective is to understand how students perform under different scoring conditions, including positive and negative marking, and how AI-based evaluation can influence final scores.

The project involves cleaning submission data, building analytical SQL queries, and drawing insights from real-world interaction patterns between students and SQL-based assessments.

---

## Project Overview  

This project is centered around a single dataset, `user_sub.csv`, which records student submissions to SQL questions. Using PostgreSQL, the data was imported, cleaned, and analyzed to answer multiple performance-related questions.

### Dataset Highlights:
- Student IDs and Question IDs
- Submission timestamps
- Answer correctness (correct, incorrect, skipped)
- AI scoring adjustments
- Bonus and penalty values
- Final and adjusted scores

### What the Project Includes:
- Cleaning and transforming raw CSV data using SQL
- Applying AI scoring logic through queries
- Simulating positive and negative marking conditions
- Extracting performance trends and question-level statistics
- Identifying student behavior patterns

---

## Insights from Analysis Tasks  

These findings are drawn directly from the SQL tasks and questions answered throughout the project:

- **Correctness-Based Scoring**: Accurately distinguishing between correct and incorrect answers significantly impacted final scores, especially when negative marking was applied.
- **AI Score Adjustment Effects**: When AI-based adjustments (bonus/penalty) were applied, some students improved their ranks while others dropped—highlighting how AI tuning can reshape outcomes.
- **High-Penalty Questions**: Certain questions caused major score drops due to high penalties when answered incorrectly—indicating areas where students struggled the most.
- **Top and Bottom Performers**: The gap between the highest and lowest scoring students widened after adjustments, especially under stricter penalty conditions.
- **Skipped Questions Analysis**: Students who skipped many questions had lower adjusted scores but avoided severe penalties, sometimes ranking higher than risk-taking peers.
- **Consistency Metric**: Students who performed consistently across questions fared better than those with large variations, even if the latter had a few high-scoring answers.

---

## Findings  

These are broader conclusions drawn across the entire workflow:

- **Scoring Strategy Affects Fairness**: Positive marking alone may inflate scores, while negative marking introduces risk-reward dynamics. Finding the right balance is crucial for fair assessments.
- **AI Scoring Offers Flexibility**: Adjusting scores using AI (bonus for effort, penalty for frequent mistakes) adds a nuanced layer to evaluation and better reflects performance quality.
- **Behavioral Trends Matter**: Patterns like repeated incorrect submissions, skipping tough questions, or answering late are strong predictors of final performance.
- **SQL as an Analysis Tool**: All analytical tasks were done using SQL only, demonstrating that relational databases are capable of handling meaningful educational data analysis.
- **Question Difficulty Identification**: Some questions consistently led to incorrect answers, suggesting possible ambiguities or higher conceptual difficulty—valuable for instructors refining question banks.

---

## Conclusion  

This project demonstrates how SQL and PostgreSQL can be effectively used for educational analytics. By analyzing submission behavior, scoring outcomes, and AI adjustments, it’s possible to build a fairer and more informative evaluation system. The insights gained here could help improve e-learning platforms, support adaptive learning strategies, and guide instructors in better assessing student understanding.

---

## Author
**By- Devansh Singh Tomar**
