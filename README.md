# Sales-Performance-Profitability-Project-Readme
# Sales Performance & Profitability Dashboard

## Project Overview

This project focuses on solving real business problems related to sales performance, profit leakage, and loss-making orders using **Excel, MySQL, and Power BI**.

The goal was not just to build a dashboard, but to identify:

* Where revenue is strong
* Where profit is leaking
* Which products, locations, and shipping methods are causing losses
* How discounting and shipping costs are impacting profitability
* What actions the business should take for optimization

This project is designed as a strong portfolio project for Data Analyst roles and demonstrates real-world problem solving.

---

# Business Problem Statement

The company had strong overall sales, but profitability was inconsistent across markets, categories, products, and locations.

Management wanted answers to these critical questions:

### Key Business Questions

1. Which markets and categories generate the highest sales and profit?
2. Which customer segments contribute the most to revenue?
3. Why are some high-sales orders still generating losses?
4. How do discounts affect profitability?
5. Which products are repeatedly causing negative profit?
6. Which shipping modes are cost-efficient and which create losses?
7. Which locations have the highest profit leakage?
8. How can the business reduce losses and improve profit margins?

---

# Tools Used

## Excel

Used for:

* Data cleaning
* Date formatting
* Removing null values
* Handling duplicates
* Standardizing columns
* Creating calculated fields
* Profit Margin calculation
* Initial data validation

---

## MySQL

Used for:

* Data import
* Data validation
* Business query analysis
* Filtering high-risk orders
* Finding loss-making products
* Profit leakage investigation

Example analysis:

* Orders with Profit < 0
* Orders with Shipping Cost > 500
* High Sales but Negative Profit Orders
* Discount-based profitability analysis

---

## Power BI

Used for:

* Data modeling
* DAX measures
* KPI creation
* Interactive dashboards
* Slicers and filters
* Business storytelling
* Final executive-level reporting

---

# Dataset Information

### Main Columns Used

* Order ID
* Order Date
* Ship Date
* Ship Mode
* Customer ID
* Customer Name
* Segment
* City
* State
* Country
* Market
* Region
* Product ID
* Category
* Sub-Category
* Product Name
* Sales
* Quantity
* Discount
* Profit
* Shipping Cost
* Order Priority

Postal Code was removed due to excessive null values and low business relevance.

---

# Data Cleaning Challenges Faced

## Problem 1: Date Format Issues

Order Date and Ship Date were stored in inconsistent text formats.

### Solution

Used Excel date conversion formulas and formatting to standardize dates into proper date format before importing into MySQL.

---

## Problem 2: Null Values

Postal Code had many missing values and was not useful for business analysis.

### Solution

Removed Postal Code column to improve data quality and dashboard performance.

---

## Problem 3: Profit Margin Errors

Initial Profit Margin values were showing unrealistic percentages like 3300%.

### Solution

Corrected formula:

**Profit Margin = Profit / Sales × 100**

This produced accurate business insights.

---

## Problem 4: MySQL Import Issues

Date fields and numeric columns were creating import problems.

### Solution

Validated data types carefully and completed import using direct structured import process.

---

# Dashboard Pages

---

# Page 1 — Sales & Profit Overview

## Objective

To understand overall business performance.

## Key KPIs

* Total Sales: 12.62M
* Total Profit: 1.46M
* Total Quantity: 177K
* Total Orders: 25K
* Profit Margin: 11.60%
* Average Discount: 14.26%

## Key Findings

* APAC was the highest revenue-generating market
* Technology was the strongest category for both sales and profit
* Consumer segment contributed more than 50% of total business
* November and December showed peak seasonal sales
* Furniture had high sales but weak profitability

---

# Page 2 — Profit Leakage Analysis

## Objective

To identify where profit is leaking.

## Key Findings

* Discounts above 40% created major losses
* Standard Class shipping was the most profitable mode
* Same Day shipping had poor cost efficiency
* Some products repeatedly generated losses
* Certain locations consistently showed negative profit

Major loss-making product:

**Cubify CubeX 3D Printer**

---

# Page 3 — Critical Loss Orders Analysis

## Objective

To investigate exact orders causing losses.

## Key KPIs

* Total Loss Orders: 7,509
* Total Negative Profit: -919K
* High Shipping Cost Orders: 118

## Key Findings

* High shipping costs significantly reduced profitability
* Several high-sales orders still generated losses
* Excessive discounts pushed profitable orders into losses
* Furniture and Technology categories showed repeated loss patterns
* Specific products repeatedly appeared in negative-margin orders

This page demonstrates real business problem solving and root cause analysis.

---

# Business Recommendations

## Recommended Actions

### 1. Control Excessive Discounting

Avoid discounts above 40% unless strategically justified.

### 2. Optimize Shipping Strategy

Reduce expensive shipping for bulky low-margin products.

### 3. Review Product-Level Pricing

Re-evaluate pricing of repeated loss-making products.

### 4. Improve Region-Wise Strategy

Focus on high-loss locations for operational optimization.

### 5. Improve Furniture Category Profitability

Review logistics cost and pricing strategy for furniture products.

---

# Final Conclusion

This project proved that strong sales do not always mean strong profitability.

The major drivers of profit leakage were:

* Excessive discounts
* High shipping costs
* Repeated loss-making products
* Inefficient shipping modes
* Poor regional profitability

The project helped transform raw sales data into actionable business decisions.

This demonstrates practical data analytics skills, business understanding, and problem-solving ability beyond simple dashboard creation.

---

# Resume Impact

This project showcases:

* Excel data cleaning
* SQL business analysis
* Power BI dashboard development
* KPI reporting
* Root cause analysis
* Business recommendation building
* End-to-end problem solving

This makes it a strong recruiter-focused portfolio project for Data Analyst roles.




# Resume Points 

Analyzed 12.62M total sales, 1.46M profit, 25K orders, and 177K units sold, identifying APAC as the top revenue-driving market and Technology as the highest profit-generating category, while Consumer segment contributed over 51% of total business.

Discovered major profit leakage caused by excessive discounting, where discounts above 40% led to significant negative margins; also identified repeated loss-making products such as Cubify CubeX 3D Printer and inefficient Same Day shipping impacting profitability.

Investigated 7,509 loss-making orders generating -919K negative profit and highlighted 118 high shipping cost orders, revealing that high-value sales alone did not ensure profitability and driving recommendations for pricing, discount, and logistics optimization.

