SELECT * FROM `hospital-cost-analytics.cms_hospital_data.inpatient_charges` LIMIT 1000;

SELECT
  Rndrng_Prvdr_Org_Name,
  Rndrng_Prvdr_City,
  Rndrng_Prvdr_State_Abrvtn,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg), 2) AS Avg_Billed,
  ROUND(AVG(Avg_Tot_Pymt_Amt), 2) AS Avg_Paid,
  ROUND(AVG(Avg_Submtd_Cvrd_Chrg) / AVG(Avg_Tot_Pymt_Amt), 2) AS Charge_To_Payment_Ratio
FROM
  `hospital-cost-analytics.cms_hospital_data.inpatient_charges`
GROUP BY
  Rndrng_Prvdr_Org_Name,
  Rndrng_Prvdr_City,
  Rndrng_Prvdr_State_Abrvtn
ORDER BY
  Charge_To_Payment_Ratio DESC
LIMIT 20;



