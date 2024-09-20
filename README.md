# Amazon Product Ratings and Reviews Analysis

## Table of Contents

1. [Project Overview](#project-overview)
2. [Dataset](#dataset)
3. [Tools and Technologies](#tools-and-technologies)
4. [Data Cleaning](#data-cleaning)
5. [Data Transformation](#data-transformation)
6. [Data Analysis and Insights](#data-analysis-and-insights)
7. [Visualizations](#visualizations)
8. [Business Recommendations](#business-recommendations)
9. [How to Use This Repository](#how-to-use-this-repository)

## Project Overview

The purpose of this project is to analyze Amazon Product Ratings and Reviews across multiple categories and discount ranges to derive actionable insights that can improve decision-making for discount strategies and customer satisfaction optimization. This project simulates an end-to-end workflow, showcasing skills in Excel for data cleaning, PostgreSQL for data transformation, and Power BI for data visualization and analysis.

## Dataset

The dataset consists of over 1,000 Amazon product ratings and reviews, organized by the following columns:

- **Product Categories**: Level 1 (main category), Level 2 (sub-category), etc.
- **Discount Range**: Discount percentage ranges (0-10%, 11-20%, etc.)
- **Customer Ratings**: Individual product ratings (1-5 stars).

Key statistics:

- **Number of Unique Products**: 1,349
- **Average Rating**: 4.09 (rounded to 2 decimal places)
- **Average Discount Percentage**: 47%

## Tools and Technologies

The following tools and technologies were used:

- **Data Cleaning**: Microsoft Excel
- **Data Transformation**: PostgreSQL
- **Data Visualization**: Power BI

## Data Cleaning

The dataset was cleaned in Excel by performing the following steps:

1. **Missing Values Handling**: Rows with null ratings or irrelevant product categories were removed.
2. **Data Type Adjustments**: Reformatted date columns and converted numeric columns where necessary.
3. **Categorization**: Categories were restructured into hierarchical levels (e.g., Electronics → Computers → Accessories).

The cleaned dataset is stored in the `data/cleaned_data.xlsx` file.

## Data Transformation

The cleaned dataset was then transformed using SQL queries in PostgreSQL to prepare it for analysis. Key transformations included:

- **Discount Range Categorization**: Grouping products by discount ranges (0-10%, 11-20%, etc.).
- **Aggregated Metrics**: Calculating the average rating and total rating count for each combination of product category and discount range.

The SQL script for data transformation is available in `scripts/queries.sql`.

## Data Analysis and Insights

Using Power BI, various analyses were conducted to understand the relationships between product categories, discount ranges, customer satisfaction, and engagement levels. The key metrics analyzed were:

- **Customer Satisfaction (Average Rating)** across different discount ranges and product categories.
- **Customer Engagement (Total Rating Count)** as a proxy for sales activity.

### Summary Insights

1. **Electronics and Computers & Accessories Lead Engagement**:
    
    - The **Electronics** category, particularly for products with discounts of **30% and above**, received the most significant engagement, totaling over **9.7M ratings**.
    - **Computers & Accessories** followed with over **5.5M ratings** in the same discount range.
2. **Higher Discounts Increase Engagement**:
    
    - Categories like **Home & Kitchen** and **Electronics** showed that products with discounts **30% and above** drive a significant portion of customer engagement.
    - The **21-30% discount range** also demonstrated strong engagement, especially in **Computers & Accessories** (513K ratings).
3. **Customer Satisfaction Varies by Discount Range**:
    
    - **Office Products** and **Home Improvement** consistently had higher average ratings across all discount ranges, peaking at **4.32** and **4.25** respectively for products with lower discounts (0-10%).
    - On the other hand, categories like **Car & Motorbike** and **Musical Instruments** lagged behind with lower satisfaction ratings, especially in the **30% and above** discount range (3.8 and 3.9 stars).
4. **Discount Effect on Rating Quality**:
    
    - While higher discounts tend to drive engagement, **lower discounts (0-10%)** yielded the **highest average ratings** across categories like **Office Products** and **Home & Kitchen**.
    - **Electronics** products with **0-10% discounts** maintained a high average rating of **4.24**, suggesting that customer satisfaction does not always correlate with deeper discounts.

### Visualizations

You can explore the detailed visualizations and findings in the `visualizations/powerbi_report.pbix` file. Key charts include:

1. **Customer Satisfaction by Discount Range Across Product Categories**: A horizontal bar chart showing average ratings across discount ranges.
2. **Heatmap of Average Product Ratings by Category and Discount Range**: A heatmap visualizing customer satisfaction across multiple discount categories.
3. **Comparison of Customer Satisfaction and Engagement by Discount Range**: A combined bar and line chart showing total ratings and satisfaction levels per discount range.
4. **Customer Engagement by Discount Range and Product Category**: A stacked bar chart showing total engagement across product categories by discount percentage.

![image](https://github.com/user-attachments/assets/5ced0767-31f2-4947-aed9-1b3197d5c4e6)


## Business Recommendations

Based on the analysis and insights, the following recommendations can be made to optimize discount strategies and improve customer satisfaction:

1. **Focus on Higher Discounts for Electronics and Computers & Accessories**:
    
    - These categories have shown the most significant engagement when discounts of **30% and above** are applied. To further increase sales volume, consider promoting more products in these categories with similar or greater discounts.
2. **Increase Discounts for Underperforming Categories**:
    
    - For categories like **Musical Instruments** and **Car & Motorbike**, which have relatively low engagement and satisfaction, higher discounts could stimulate demand and improve ratings.
3. **Leverage Customer Satisfaction in Office Products**:
    
    - Given that **Office Products** consistently receive high ratings, even with low discounts, maintaining or slightly increasing discounts can continue to boost engagement while preserving high customer satisfaction.
4. **Target Home & Kitchen with Mid-Range Discounts**:
    
    - This category sees substantial engagement and satisfaction in the **21-30% discount range**, making it a prime candidate for promotions in this range to balance both volume and customer sentiment.
5. **Discount Moderation in Electronics**:
    
    - Although Electronics receive a high volume of ratings with deeper discounts, the **0-10% discount range** still yields excellent satisfaction ratings. Experiment with moderate discounting to preserve profit margins while maintaining customer engagement.

## How to Use This Repository

1. **Clone the Repository**:
    
    bash
    
    Copy code
    
    `git clone https://github.com/yourusername/amazon-reviews-analysis.git`
    
2. **Explore the Dataset**:
    
    - You can find the raw and cleaned datasets in the `data/` folder.
3. **Run SQL Scripts**:
    
    - Open the SQL file in the `scripts/` folder to recreate the data transformations.
4. **View Visualizations**:
    
    - Open the Power BI file (`.pbix`) located in the `visualizations/` folder to explore the dashboards and insights.
