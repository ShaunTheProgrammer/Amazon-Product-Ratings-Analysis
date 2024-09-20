# **Amazon Product Ratings and Reviews Analysis: Insights on Customer Satisfaction and Pricing**

## **Introduction**

This project analyzes over 1,000 Amazon product ratings and reviews to understand how discount levels affect customer satisfaction and sales engagement across various product categories. The goal is to uncover patterns in customer behavior, identify opportunities for increasing customer satisfaction, and recommend data-driven strategies for improving sales performance.

The project makes use of tools like Excel for data cleaning, PostgreSQL for data transformation, and Power BI for visualization. Through these analyses, we provide insights into how discounts impact customer satisfaction and how different product categories perform based on average rating and engagement levels.

---

## **Business Question**

**How do discount levels affect customer satisfaction and engagement across different product categories on Amazon?**

To answer this, we:

- Analyzed customer reviews and ratings data across product categories.
- Segmented products by discount percentage to determine the impact on customer satisfaction.
- Measured engagement through the number of total ratings per category and discount range.

---

## **Tools and Skills Used**

### **Technologies**

- **Excel**: Data cleaning and preprocessing
- **PostgreSQL**: Data transformation and querying
- **Power BI**: Data visualization and analysis

### **Skills Demonstrated**

- Data Cleaning
- Data Transformation (SQL)
- Data Analysis & Business Insights
- Data Visualization & Dashboarding

---

## **Dataset Overview**

The dataset contains Amazon product ratings and reviews across several categories. Key attributes include:

- Product category
- Discount percentage
- Average customer rating
- Total number of customer reviews

---

## **1. Data Cleaning in Excel**

We started by cleaning the raw dataset in Excel. This involved:

- **Removing duplicates** to avoid skewed data.
- **Handling missing values** by filling in blanks where appropriate or removing unusable data.
- **Standardizing the Category column**: The data had nested categories (e.g., `Computers&Accessories|Accessories&Peripherals|Cables`), which were split into multiple levels to allow for granular analysis.
- **Formatting** the numerical columns such as discount percentage and ratings to ensure consistency.

You can view the cleaned dataset in the `data/cleaned_data.xlsx` file.

---

## **2. Data Transformation in PostgreSQL**

In PostgreSQL, we performed the following transformations to structure the data for analysis:

- **Aggregated customer ratings** by discount range and product category.
- **Segmented products** by discount percentage into four ranges: `0-10%`, `11-20%`, `21-30%`, and `30% and above`.
- **Computed average ratings and total ratings** for each product category and discount range.

Example SQL queries used in the transformation can be found in the `scripts/queries.sql` file.

---

## **3. Data Visualization and Analysis in Power BI**

Using Power BI, we created several visualizations to analyze customer satisfaction and engagement:

1. **Customer Satisfaction by Discount Range Across Product Categories**
    
    - This bar chart shows the average customer rating for each product category, segmented by discount range. Higher discounts (30% and above) tend to correspond with higher customer satisfaction in categories like Electronics and Office Products.
2. **Heatmap of Average Product Ratings by Category and Discount Range**
    
    - This heatmap visually compares the average product ratings across categories and discount ranges. Categories like Electronics, Office Products, and Computers & Accessories stand out as consistently high-rated across discount levels.
3. **Comparison of Customer Satisfaction and Engagement by Discount Range**
    
    - A stacked bar chart illustrating the total number of ratings (customer engagement) in each category by discount range. Electronics and Computers & Accessories see the highest engagement at higher discount levels, indicating the importance of discount strategies.
4. **Customer Engagement by Discount Range and Product Category**
    
    - This bar chart measures the total number of ratings for each product category and discount range. Categories such as Electronics and Computers & Accessories have the highest engagement with discounts of 30% and above.

The final visualizations can be viewed in the `tableau_visuals/` folder.

---

## **4. Summary Statistics**

We calculated the following summary statistics:

- **Number of Unique Products**: 1,349
- **Average Rating**: 4.09 (rounded to 2 decimal places)
- **Average Discount Percentage**: 47%

These metrics provide an overall snapshot of the dataset, highlighting key trends in customer satisfaction and discount strategies.

---

## **5. Business Insights**

Based on the analysis, we derived the following insights:

- **High Discounts Correlate with Customer Satisfaction**: Across categories, the 30%+ discount range consistently yields higher customer satisfaction (e.g., 4.3+ average ratings in Electronics, Office Products, and Computers & Accessories).
    
- **Customer Engagement is Highest for High Discounts**: Categories like Electronics and Computers & Accessories have the highest total ratings (customer engagement) when discounts are 30% or more, indicating that customers are more likely to engage with higher-discounted products.
    
- **Category-Specific Discount Strategies**:
    
    - **Electronics**: High engagement and satisfaction at 30%+ discounts suggest that continuing to offer significant discounts could drive both sales and satisfaction.
    - **Office Products**: Shows strong satisfaction across all discount ranges but performs especially well with moderate to high discounts (21-30% and above).
    - **Home & Kitchen**: Despite high satisfaction (4.0+ rating), engagement lags behind other categories, suggesting a potential for more aggressive discounting strategies to boost sales.

---

## **6. Future Work**

Potential future extensions for this project include:

- Expanding the dataset to include more product categories and a larger time frame.
- Conducting a deeper time-series analysis to track how sales and satisfaction evolve over time.
- Performing **sentiment analysis** on customer reviews to complement quantitative rating data.

---

## **Conclusion**

This analysis provides a clear link between discount levels, customer satisfaction, and sales engagement, demonstrating the importance of pricing strategies in different product categories. By leveraging the insights derived from this data, businesses can refine their discount strategies to maximize customer satisfaction and engagement, ultimately boosting sales.

---

## **How to Run This Project**

To reproduce this analysis:

1. **Download the Dataset**: [link-to-dataset]
2. **SQL Transformation**: Run the SQL scripts found in the `scripts/` folder to aggregate and prepare the data.
3. **Power BI Visualizations**: Open the Power BI file (`visuals.pbix`) to view and interact with the dashboard.
