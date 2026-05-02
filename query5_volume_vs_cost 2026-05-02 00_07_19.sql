SELECT
  Rndrng_Prvdr_Org_Name,
  Rndrng_Prvdr_City,
  Rndrng_Prvdr_State_Abrvtn,
  ROUND(SUM(Tot_Dschrgs), 0) AS Total_Patients,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg), 2) AS Avg_Billed,
  ROUND(AVG(Avg_Tot_Pymt_Amt), 2) AS Avg_Paid,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg) / AVG(Avg_Tot_Pymt_Amt), 2) AS Charge_Ratio,
  CASE
    WHEN SUM(Tot_Dschrgs) >= 10000 THEN 'High Volume'
    WHEN SUM(Tot_Dschrgs) BETWEEN 5000 AND 9999 THEN 'Medium Volume'
    WHEN SUM(Tot_Dschrgs) BETWEEN 1000 AND 4999 THEN 'Low Volume'
    ELSE 'Very Low Volume'
  END AS Volume_Category
FROM
  `hospital-cost-analytics.cms_hospital_data.inpatient_charges`
GROUP BY
  Rndrng_Prvdr_Org_Name,
  Rndrng_Prvdr_City,
  Rndrng_Prvdr_State_Abrvtn
ORDER BY
  Total_Patients DESC
LIMIT 20