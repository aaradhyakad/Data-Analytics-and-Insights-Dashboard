# Data-Analytics-and-Insights-Dashboard

An end-to-end data analytics project that takes raw, unstructured datasets through a full pipeline — cleaning, transformation, exploratory analysis, and interactive Tableau dashboards.

---

## 🚀 Overview

This project automates the entire data analysis workflow:
- **Clean & transform** raw data using Python and Pandas
- **Store & query** structured data using MySQL
- **Analyse** trends, patterns, and key metrics through EDA
- **Visualise** insights using interactive Tableau dashboards

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| **Python** | Core scripting and automation |
| **Pandas** | Data cleaning, transformation, EDA |
| **NumPy** | Numerical computations |
| **MySQL** | Structured data storage and querying |
| **Tableau** | Interactive dashboard and visualisation |

---

## 📁 Project Structure

```
data-analytics-dashboard/
├── data/
│   ├── raw/               # Original unprocessed datasets
│   └── cleaned/           # Cleaned output files
├── notebooks/
│   └── analysis.ipynb     # EDA and transformation notebook
├── scripts/
│   ├── clean.py           # Data cleaning pipeline
│   └── export.py          # Export cleaned data for Tableau
├── sql/
│   └── queries.sql        # SQL queries used for analysis
├── dashboard/
│   └── insights.twbx      # Tableau workbook file
├── requirements.txt
└── README.md
```

---

## ⚙️ Workflow

```
Raw Dataset
    ↓
Data Cleaning (Pandas)
  - Handle missing values
  - Remove duplicates
  - Fix data types
  - Normalize columns
    ↓
Store in MySQL
  - Structured querying
  - Aggregations and joins
    ↓
Exploratory Data Analysis (EDA)
  - Summary statistics
  - Trend identification
  - Correlation analysis
    ↓
Export cleaned data
    ↓
Visualise in Tableau Dashboard
  - Interactive charts
  - Filters and drill-downs
  - Trend storytelling
```

---

## 🔍 Key Features

- **Automated Data Cleaning** — Pandas pipelines handle missing values, duplicates, and type mismatches automatically
- **MySQL Integration** — Structured data stored and queried from a relational database
- **EDA** — Summary statistics, distribution analysis, and trend identification
- **Tableau Dashboard** — Interactive charts and filters for clear data storytelling
- **Reproducible Pipeline** — Every step is scripted so the full analysis reruns on any new dataset with zero manual effort

---

## 🧪 How to Run

### 1. Clone the repository
```bash
git clone https://github.com/your-username/data-analytics-dashboard.git
cd data-analytics-dashboard
```

### 2. Install dependencies
```bash
pip install -r requirements.txt
```

### 3. Set up MySQL
```sql
CREATE DATABASE analytics_db;
```

### 4. Run cleaning pipeline
```bash
python scripts/clean.py
```

### 5. Open Tableau
Open `dashboard/insights.twbx` in Tableau Desktop to explore the dashboard.

---

## 📦 Requirements

```
pandas
numpy
mysql-connector-python
sqlalchemy
jupyter
```

```bash
pip install -r requirements.txt
```

---

## 💡 Concepts Used

| Concept | Description |
|---|---|
| **EDA** | Exploratory Data Analysis — understanding patterns before conclusions |
| **Data Cleaning** | Handling nulls, duplicates, wrong data types |
| **Pandas Pipelines** | Chained transformations for reproducibility |
| **SQL Queries** | Aggregations, joins, filters on structured data |
| **Data Visualisation** | Tableau dashboards for interactive storytelling |

---

## 👤 Author

**Kadiri Aaradhya**
B.Tech CSE — Sreenidhi Institute of Science and Technology, Hyderabad
aaradhyakadiri13@gmail.com
