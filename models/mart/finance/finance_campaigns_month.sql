SELECT
    DATE_TRUNC(date_date,MONTH) as datemonth,
    sum(ads_margin) AS ads_margin,
    sum(average_basket) AS average_basket,
    sum(operational_margin) AS operational_margin,
FROM {{ref("finance_campaigns_day")}}
GROUP BY datemonth
ORDER BY datemonth DESC