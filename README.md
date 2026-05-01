# AlampiTech: Business Information System for Computer Sales & Assistance

## Project Overview
This project involves the design and implementation of an integrated Information System for **AlampiTech**, a specialized center for computer sales and technical assistance[cite: 1]. The system aims to digitalize and automate business processes previously managed manually, optimizing three key areas: **Sales Management**, **Technical Assistance**, and **Supplier Order Management**[cite: 1].

## Key Features
- **Sales & Inventory:** Real-time tracking of articles, automated order registration, and inventory updates[cite: 1].
- **Technical Assistance:** Management of repair requests, including fault diagnosis, spare parts verification, and automated quote generation[cite: 1].
- **Supplier Logistics:** Automated restocking processes, supplier reliability tracking based on historical data, and shipment monitoring[cite: 1].
- **Financial Integration:** Integrated billing and payment tracking linked to customer orders[cite: 1].

## System Design & Architecture

### Requirements Analysis
The system was designed following a rigorous analysis of business scenarios using **UML Activity Diagrams** and **Use Case Diagrams** to map the interactions between the Secretary, Owner, Technician, and Warehouse Manager[cite: 1].



### Data Modeling
- **Conceptual Model:** A comprehensive E-R (Entity-Relationship) diagram defining relationships between Customers, Orders, Articles, Suppliers, Shipments, and Invoices[cite: 1].
- **Relational Model (SQL):** Implementation in **MySQL** with a normalized schema to ensure data integrity through foreign keys and constraints[cite: 1].
- **Non-Relational Model (NoSQL):** Migration to **MongoDB** using a document-oriented approach. Data is structured into two main root collections: `Orders` (embedding Customers, Invoices, and Shipments) and `Articles` (embedding Restock orders and Suppliers)[cite: 1].

http://googleusercontent.com/image_content/194



## Database Implementation
### SQL (MySQL)
The relational schema includes tables for:
- **CLIENTE:** Customer demographics and loyalty levels (Bronze, Silver, Gold)[cite: 1].
- **ORDINE:** Tracking of sales and assistance status[cite: 1].
- **SPEDIZIONE & FATTURA:** Logistics and billing details[cite: 1].
- **PREZZO:** Historical tracking of article prices using validity dates[cite: 1].

### NoSQL (MongoDB)
The implementation focuses on high performance and scalability by embedding related data to reduce the need for joins, which are not natively supported in NoSQL[cite: 1].

## Technologies Used
- **Modeling:** UML, E-R Diagrams (MySQL Workbench)[cite: 1].
- **Relational Database:** MySQL[cite: 1].
- **NoSQL Database:** MongoDB[cite: 1].
- **Documentation:** Technical Report including a Glossary of Terms (Brand, Restock, Tracking, etc.)[cite: 1].

## Project Authors
- **Antonio Alampi** (Matricola 252085)[cite: 1]
- **Francesco Mannarino** (Matricola 252078)[cite: 1]
- *Course: Data Science for Business Strategies - Università della Calabria (2023-2024)*[cite: 1]
