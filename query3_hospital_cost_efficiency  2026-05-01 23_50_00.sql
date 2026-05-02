SELECT
  Rndrng_Prvdr_Org_Name,
  Rndrng_Prvdr_City,
  Rndrng_Prvdr_State_Abrvtn,
  ROUND(SUM(Tot_Dschrgs), 0) AS Total_Patients,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg), 2) AS Avg_Billed,
  ROUND(AVG(Avg_Tot_Pymt_Amt), 2) AS Avg_Paid,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg) / AVG(Avg_Tot_Pymt_Amt), 2) AS Charge_Ratio,
  CASE
    WHEN AVG(Avg_Submtd_Cvrd_Chrg) / AVG(Avg_Tot_Pymt_Amt) < 3 THEN 'Highly Efficient'
    WHEN AVG(Avg_Submtd_Cvrd_Chrg) / AVG(Avg_Tot_Pymt_Amt) BETWEEN 3 AND 6 THEN 'Moderate'
    WHEN AVG(Avg_Submtd_Cvrd_Chrg) / AVG(Avg_Tot_Pymt_Amt) BETWEEN 6 AND 10 THEN 'Inefficient'
    ELSE 'Highly Inefficient'
  END AS Efficiency_Label
FROM
  `hospital-cost-analytics.cms_hospital_data.inpatient_charges`
GROUP BY
  Rndrng_Prvdr_Org_Name,
  Rndrng_Prvdr_City,
  Rndrng_Prvdr_State_Abrvtn
ORDER BY
  Charge_Ratio ASC
LIMIT 20;