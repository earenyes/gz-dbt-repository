
SELECT *
FROM {{ref('stg_raw__raw_gz_adwords')}}
UNION ALL 
SELECT *
FROM {{ref('stg_raw__raw_gz_facbook')}}
UNION ALL 
SELECT *
FROM {{ref('stg_raw__raw_gz_criteo')}}
UNION ALL 
SELECT *
FROM {{ref('stg_raw__raw_gz_bing')}}
