# ETL Processes - Data Engineering Pipeline Tutorial

A hands-on tutorial for learning how to build basic data engineering pipelines with Python. This project teaches ETL (Extract, Transform, Load) concepts through a practical IoT sensor data processing example.

## Overview

This tutorial walks you through building a complete data pipeline that processes temperature and CO2 sensor data from a university office building. You'll learn to:

- Extract data from multiple sources (JSON files, CSV, public APIs)
- Transform and enrich data with business logic
- Validate data quality
- Load data into a data warehouse
- Scale with Apache Spark

## Prerequisites

- Python 3.8+
- Basic knowledge of Python and pandas
- Jupyter Notebook or Google Colab

## Setup Instructions

1. **Clone/download this repository**

2. **Create a virtual environment** (recommended):
   ```bash
   python -m venv .venv
   source .venv/bin/activate  # On Windows: .venv\Scripts\activate
   ```

3. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Launch Jupyter Notebook**:
   ```bash
   jupyter notebook
   ```

5. **Open the relevant notebook** (see below)

## Notebooks Guide

### 1. [etl_processes.ipynb](etl_processes.ipynb)
**Start here** - The main tutorial notebook with exercises.

**What you'll learn:**
- Pipeline triggers and scheduling (cron expressions, job dependencies)
- Connecting to data sources (files, APIs)
- State management (tracking processed files)
- Data extraction from multiple sources
- Data transformation and enrichment
- Data quality validation
- Loading data to CSV/Parquet formats
- Retention policies and archiving

**Best for:** Complete beginners who want step-by-step guidance with exercises.

### 2. [uitwerkingen.ipynb](uitwerkingen.ipynb)
**Solutions notebook** - Complete working implementations of all exercises.

**What you'll find:**
- Full solution code for all exercises in `etl_processes.ipynb`
- Additional implementation details and best practices
- Comments explaining design decisions

**Best for:** Checking your solutions or getting unstuck on specific exercises.

### 3. [uitwerkingen_met_spark.ipynb](uitwerkingen_met_spark.ipynb)
**Advanced: Scaling with PySpark** - BONUS material for handling larger datasets.

**What you'll learn:**
- When to use Spark vs pandas
- Setting up a Spark session
- Parallel data extraction with Spark
- Lazy evaluation and query optimization
- Partitioned data storage
- Performance comparison

**Best for:** Students who completed the main tutorial and want to learn about distributed processing.


## Sample Data

The [sample_data/](sample_data/) directory contains:
- `sensor_readings_day1.json` - First batch of sensor measurements
- `sensor_readings_day2.json` - Second batch of sensor measurements
- `sensor_metadata.csv` - Sensor configuration and metadata


## Key Concepts Covered

1. **Trigger** - When and how to start pipelines (cron, event-based)
2. **Connection** - Authenticating and connecting to data sources
3. **State Management** - Tracking what's been processed
4. **Extraction** - Reading from multiple data sources
5. **Transformation** - Cleaning, enriching, and filtering data
6. **Validation** - Data quality checks and tolerance policies
7. **Loading** - Writing to target storage (CSV vs Parquet)
8. **Archiving** - Retention policies and data lifecycle
9. **Scaling** - Moving from pandas to PySpark for large datasets

## Additional Resources

- [Apache Airflow](https://airflow.apache.org/) - Production-grade pipeline orchestration
- [dbt](https://www.getdbt.com/) - SQL-based transformation framework
- [Great Expectations](https://greatexpectations.io/) - Data quality framework
- [Open-Meteo API](https://open-meteo.com/) - Free weather data API used in this tutorial

## Troubleshooting

**Issue:** `ModuleNotFoundError` when running notebooks
- **Solution:** Make sure you activated the virtual environment and installed requirements

**Issue:** Weather API not responding
- **Solution:** Check your internet connection; the Open-Meteo API is free and doesn't require authentication

**Issue:** PySpark notebook fails locally
- **Solution:** Try running in [Google Colab](https://colab.research.google.com/) instead, which has Spark pre-installed

## License

This educational material is provided for learning purposes.
