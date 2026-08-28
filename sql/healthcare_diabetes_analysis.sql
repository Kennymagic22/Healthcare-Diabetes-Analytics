USE healthcare;

- =============================================
-- Healthcare Diabetes Analytics
-- SQL Data Analysis
-- =============================================


-- 1. Total Patients
SELECT 
    COUNT(*) AS Total_Patients
FROM healthcare_diabetes;


-- 2. Total Diabetic Patients
SELECT 
    COUNT(*) AS Diabetic_Patients
FROM healthcare_diabetes
WHERE Outcome = 1;


-- 3. Diabetes Rate
SELECT
    ROUND(SUM(Outcome) / COUNT(*) * 100, 2) AS Diabetes_Rate
FROM healthcare_diabetes;


-- 4. Average BMI
SELECT
    ROUND(AVG(BMI), 2) AS Average_BMI
FROM healthcare_diabetes;


-- 5. Average Glucose
SELECT
    ROUND(AVG(Glucose), 2) AS Average_Glucose
FROM healthcare_diabetes;


-- 6. Average Age
SELECT
    ROUND(AVG(Age), 1) AS Average_Age
FROM healthcare_diabetes;


-- 7. Diabetes by Age Group
SELECT
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 39 THEN '30-39'
        WHEN Age BETWEEN 40 AND 49 THEN '40-49'
        WHEN Age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS Age_Group,
    COUNT(*) AS Total_Patients,
    SUM(Outcome) AS Diabetic_Patients
FROM healthcare_diabetes
GROUP BY Age_Group;


-- 8. Average Glucose by Diabetes Status
SELECT
    Outcome,
    ROUND(AVG(Glucose), 2) AS Average_Glucose
FROM healthcare_diabetes
GROUP BY Outcome;


-- 9. Average BMI by Diabetes Status
SELECT
    Outcome,
    ROUND(AVG(BMI), 2) AS Average_BMI
FROM healthcare_diabetes
GROUP BY Outcome;


-- 10. Top 10 Highest Glucose Levels
SELECT
    Id,
    Age,
    Glucose,
    BMI
FROM healthcare_diabetes
ORDER BY Glucose DESC
LIMIT 10;

-- 11. Diabetes Rate by Age Group
SELECT
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 39 THEN '30-39'
        WHEN Age BETWEEN 40 AND 49 THEN '40-49'
        WHEN Age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS Age_Group,
    COUNT(*) AS Total_Patients,
    SUM(Outcome) AS Diabetic_Patients,
    ROUND(SUM(Outcome) / COUNT(*) * 100, 2) AS Diabetes_Rate
FROM healthcare_diabetes
GROUP BY Age_Group
ORDER BY Diabetes_Rate DESC;

-- 12. Diabetes Rate by BMI Category
-- 12. Diabetes Rate by BMI Category
SELECT
    CASE
        WHEN BMI IS NULL OR BMI = 0 THEN 'Missing BMI'
        WHEN BMI < 18.5 THEN 'Underweight'
        WHEN BMI < 25 THEN 'Normal'
        WHEN BMI < 30 THEN 'Overweight'
        ELSE 'Obese'
    END AS BMI_Category,
    COUNT(*) AS Total_Patients,
    SUM(Outcome) AS Diabetic_Patients,
    ROUND(SUM(Outcome) / COUNT(*) * 100, 2) AS Diabetes_Rate
FROM healthcare_diabetes
GROUP BY BMI_Category
ORDER BY Diabetes_Rate DESC;

-- 13. Check Missing or Zero BMI Values
SELECT
    COUNT(*) AS Total_Rows,
    SUM(CASE WHEN BMI IS NULL THEN 1 ELSE 0 END) AS Null_BMI,
    SUM(CASE WHEN BMI = 0 THEN 1 ELSE 0 END) AS Zero_BMI
FROM healthcare_diabetes;
