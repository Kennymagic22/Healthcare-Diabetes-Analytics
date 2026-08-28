# Healthcare-Diabetes-Analytics
Healthcare diabetes data analysis using SQL and Power BI
## Project Overview

The Healthcare Diabetes Analytics project analyzes patient health data to identify patterns and factors associated with diabetes. Using Power BI, I developed an interactive dashboard that provides insights into diabetes prevalence across age groups, BMI categories, glucose levels, and diabetes status.

The dashboard analyzes 2,768 patient records and uses KPI cards, interactive slicers, and data visualizations to help users explore diabetes trends and compare health indicators between diabetic and non-diabetic patients.

## Business Questions

This project was designed to answer the following key questions:

- What percentage of patients in the dataset are diabetic?
- Which age group has the highest number of diabetic patients?
- Which age group has the highest percentage of diabetic patients?
- How does the diabetes rate vary across BMI categories?
- How do average glucose levels compare between diabetic and non-diabetic patients?
- How does average BMI compare between diabetic and non-diabetic patients?
- What is the relationship between BMI and glucose levels?

## Tools & Technologies

- **Power BI** – Data modeling, DAX calculations, interactive dashboard development, slicers, KPI cards, and data visualization.
- **SQL** – Data exploration and analysis, including calculations used to evaluate diabetes rates across patient groups.
- **Power Query** – Data cleaning, transformation, and preparation before analysis.

## Data Preparation & Cleaning
The dataset was reviewed and prepared in Power Query before analysis to ensure the data was clean, consistent, and suitable for building the Power BI dashboard.

Key preparation and transformation steps included:

- Created an **Age Group** field to categorize patients into Under 30, 30–39, 40–49, 50–59, and 60+ for age-based diabetes analysis.
- Created a **BMI Category** field to classify patients as Underweight, Normal, Overweight, Obese, or Missing BMI, allowing diabetes rates to be compared across BMI groups.
- Created a **Diabetes Status** field to classify patients as Diabetic or Non-Diabetic, making the results easier to interpret across the dashboard.
- Created an **Age Group Sort** field to ensure age groups appear in the correct logical order in Power BI visualizations.

## Key Measures & Calculations

Key DAX measures were created in Power BI to support the analysis and dashboard visualizations.

- **Total Patients** – Calculates the total number of patient records in the dataset.
- **Total Diabetic Patients** – Calculates the total number of patients classified as diabetic.
- **Diabetes Rate %** – Calculates the percentage of patients who are diabetic.
- **Average Age** – Calculates the average age of patients in the dataset.
- **Average BMI** – Calculates the average BMI across patient records with available BMI values.
- **Average Glucose** – Calculates the average glucose level across patient records.
- **Average Blood Pressure** – Calculates the average blood pressure across patient records.
- **Average Insulin** – Calculates the average insulin level across patient records.

## Dashboard Overview

The Power BI dashboard provides an interactive view of diabetes patterns and key patient health indicators.

### Dashboard Preview

![Healthcare Diabetes Analytics Dashboard](images/Healthcare_diabetes.png)

## Key Insights & Findings

- **Overall Diabetes Rate:** 952 out of 2,768 patients are diabetic, representing **34.39%** of the dataset.
- **Age Group:** Patients under 30 have the highest number of diabetic cases (**300 patients**), while the number of diabetic patients decreases across the older age groups.
- **BMI Category:** The **Obese** category has the highest diabetes rate at **45.42%**, followed by Overweight at **22.63%**.
- **Glucose Levels:** Diabetic patients have a substantially higher average glucose level (**141.5**) compared with non-diabetic patients (**110.4**).
- **BMI:** Diabetic patients have a higher average BMI (**35.5**) than non-diabetic patients (**31.1**).
- **Overall Pattern:** Diabetic patients in this dataset show higher average BMI and glucose levels compared with non-diabetic patients.

## Recommendations

- Prioritize monitoring of patients with higher BMI, particularly those in the Obese category, which showed the highest diabetes rate in the dataset.
- Pay close attention to elevated glucose levels, as diabetic patients showed substantially higher average glucose levels than non-diabetic patients.
- Use age, BMI category, and diabetes status together when exploring patient groups rather than relying on a single health indicator.
- Continue monitoring BMI and glucose trends to help identify patient groups that may require further assessment or preventive intervention.

