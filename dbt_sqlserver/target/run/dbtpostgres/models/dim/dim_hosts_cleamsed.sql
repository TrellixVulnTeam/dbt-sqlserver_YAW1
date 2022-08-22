
  create view "airbnb"."dbo"."dim_hosts_cleamsed__dbt_tmp" as (
    WITH src_hosts AS (
    SELECT * FROM "airbnb"."dbo"."src_hosts"
)
SELECT
    host_id,
    NVL(host_name,'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    src_hosts
  );