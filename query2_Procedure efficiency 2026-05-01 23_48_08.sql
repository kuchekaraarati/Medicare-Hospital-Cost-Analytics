
SELECT
  DRG_Cd,
  DRG_Desc,
  COUNT(DISTINCT Rndrng_Prvdr_CCN) AS Hospital_Count,
  ROUND(SUM(Tot_Dschrgs), 0) AS Total_Patients,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg), 2) AS Avg_Billed,
  ROUND(AVG(Avg_Tot_Pymt_Amt), 2) AS Avg_Paid,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg) - AVG(Avg_Tot_Pymt_Amt), 2) AS Avg_Gap,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg) / AVG(Avg_Tot_Pymt_Amt), 2) AS Charge_To_Payment_Ratio
FROM
  `hospital-cost-analytics.cms_hospital_data.inpatient_charges`
GROUP BY
  DRG_Cd,
  DRG_Desc
ORDER BY
  Charge_To_Payment_Ratio DESC
LIMIT 20;

