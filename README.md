# 📊 Data Warehouse on Microsoft SQL Server  
## Medallion Architecture (Bronze · Silver · Gold)

This repository presents a **personal Data Warehouse project** developed using **Microsoft SQL Server**, with a strong focus on **data architecture best practices**, **data modeling**, and **well-structured data pipelines**, following the **Medallion Architecture** approach.

The main goal of this project is to serve as a **practical and educational reference** for building a modern, scalable, and well-documented Data Warehouse, covering the entire process from **data ingestion** to the **final analytical layer**.

---

## 🏗️ Project Architecture

The Data Warehouse is organized according to the **Medallion Architecture**, divided into three main layers:

### 🟤 Bronze Layer
- Raw data ingestion layer  
- Structure closely aligned with source systems  
- No complex transformations applied  
- Focus on traceability, historical data, and auditing  
- Ideal for reprocessing and initial data validation  

### ⚪ Silver Layer
- Data cleansing and standardization layer  
- Data cleaning, normalization, and intermediate business rules  
- Deduplication, data type adjustments, and naming standardization  
- Reliable and consistent base for analytical consumption  

### 🟡 Gold Layer
- Business-oriented analytical layer  
- Dimensional modeling (fact and dimension tables)  
- Structures optimized for BI and analytics tools  
- Consolidated metrics and final business rules  

---

## 🧩 Data Modeling

The project includes multiple **data modeling artifacts**, such as:

- Conceptual and logical data models  
- Dimensional modeling (Star Schema / Snowflake where applicable)  
- Fact and dimension table definitions  
- Relationships and data granularity  
- Documentation of business rules applied at each layer  

These artifacts aim to improve architectural understanding, support future maintenance, and ensure consistency as the Data Warehouse evolves.

---

## 🗂️ Repository Structure

The repository is organized to clearly reflect the **layers and components** of the Data Warehouse, including:

- SQL scripts by layer (Bronze, Silver, and Gold)  
- Architecture files and diagrams  
- Technical and explanatory documentation  
- Table structures, views, and supporting objects  
- Naming conventions and organizational standards  

This structure supports effective version control, maintainability, and project scalability.

---

## 🎯 Project Goals

- Apply modern data architecture concepts  
- Demonstrate SQL Server best practices  
- Serve as a technical portfolio project  
- Support learning in Data Warehousing, BI, and Analytics  
- Build a solid foundation for future enhancements, such as:
  - Orchestration  
  - Load automation  
  - Data quality testing  
  - Integration with data visualization tools  

---

## 🚀 Technologies Used

- Microsoft SQL Server  
- SQL (DDL, DML, Views, Stored Procedures)  
- Data Warehouse & BI concepts  
- Medallion Architecture  
- Dimensional Modeling  

