# dbt Retail Data Platform

> A production-style analytics engineering project built with **dbt Core**, **DuckDB**, **SQL**, and **Python**.

---

## Overview

This project demonstrates how to build a modern analytics engineering platform using **dbt** following industry best practices.

The platform ingests raw retail transaction data, performs data quality validation, applies layered transformations, and produces analytics-ready datasets for reporting and business intelligence.

The project is designed to simulate how analytics engineering teams build transformation pipelines that can easily be migrated to enterprise data warehouses such as Snowflake, Databricks, BigQuery, Amazon Redshift, and Azure Synapse.

---

## Project Objectives

- Build a production-style dbt project
- Demonstrate analytics engineering best practices
- Implement modular SQL transformations
- Apply automated data quality testing
- Follow Git feature branch workflows
- Build reusable and maintainable data models

---

## Architecture

```text
                 Raw CSV Files
                       │
                       ▼
              DuckDB Raw Tables
                       │
                       ▼
                dbt Source Layer
                       │
                       ▼
            Staging Models (stg_)
                       │
                       ▼
        Intermediate Models (int_)
                       │
                       ▼
      Fact & Dimension Models
                       │
                       ▼
         Analytics & Reporting
```

---

## Technology Stack

| Technology | Purpose |
|------------|---------|
| dbt Core | Data transformation |
| DuckDB | Analytical database |
| SQL | Data modelling |
| Python | Data ingestion |
| Git | Version control |
| GitHub | Source control and collaboration |

---

## Project Structure

```text
dbt-retail-data-platform/
│
├── analyses/
├── data/
├── macros/
├── models/
│   ├── example/
│   ├── sources/
│   ├── staging/
│   ├── intermediate/
│   └── marts/
│       ├── customers/
│       ├── products/
│       └── sales/
├── scripts/
├── snapshots/
├── tests/
├── dbt_project.yml
├── README.md
└── .gitignore
```

---

## Current Features

- ✅ dbt project initialization
- ✅ DuckDB integration
- ✅ Raw retail dataset
- ✅ Source configuration using `source()`
- ✅ Staging model (`stg_orders`)
- ✅ Python data loading script
- ✅ Feature branch workflow
- ✅ Pull request workflow

---

## Roadmap

- [x] Initialize dbt project
- [x] Configure DuckDB
- [x] Load raw retail dataset
- [x] Configure dbt Sources
- [x] Create staging model
- [ ] Build customer dimension
- [ ] Build product dimension
- [ ] Build sales fact table
- [ ] Add source tests
- [ ] Add model tests
- [ ] Implement incremental models
- [ ] Implement snapshots (SCD Type 2)
- [ ] Build reusable macros
- [ ] Generate dbt documentation
- [ ] Configure GitHub Actions
- [ ] Deploy documentation

---

## Getting Started

### Clone the repository

```bash
git clone https://github.com/nazzmca/dbt-retail-data-platform.git
cd dbt-retail-data-platform/dbt_retail_data_platform
```

### Create a virtual environment

```bash
python3 -m venv .venv
source .venv/bin/activate
```

### Install dependencies

```bash
pip install dbt-core dbt-duckdb duckdb
```

### Load raw data

```bash
python scripts/load_raw_data.py
```

### Execute dbt models

```bash
dbt run
```

### Run data quality tests

```bash
dbt test
```

### Generate documentation

```bash
dbt docs generate
dbt docs serve
```

---

## Development Workflow

```text
Feature Branch
      │
      ▼
Development
      │
      ▼
dbt Run
      │
      ▼
dbt Test
      │
      ▼
Pull Request
      │
      ▼
Merge to Main
```

---

## Skills Demonstrated

- Analytics Engineering
- dbt Core
- SQL
- DuckDB
- Data Modelling
- Data Quality Testing
- Git
- GitHub
- Modular Data Pipelines
- Production Development Workflow

---

## Future Enhancements

- Star schema implementation
- Slowly Changing Dimensions (SCD Type 2)
- Incremental processing
- Source freshness checks
- Custom dbt macros
- GitHub Actions CI/CD
- Data lineage visualization
- Power BI dashboard
- Enterprise deployment examples

---

## License

This project is intended for learning, portfolio, and demonstration purposes.