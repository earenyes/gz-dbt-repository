

SELECT
    date_date,
    operational_margin - ads_costs AS ads_margin,
    average_basket,
    operational_margin,
FROM {{ref("int_campaigns_day")}}
LEFT JOIN {{ref("finance_days")}}
USING (date_date)
ORDER BY date_date DESC