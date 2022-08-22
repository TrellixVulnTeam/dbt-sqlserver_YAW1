
  create view "postgres"."dbo"."dim_hosts_cleansed__dbt_tmp" as (
    WITH src_hosts AS (
    SELECT * FROM "postgres"."dbo"."src_hosts"
)
SELECT
    host_id,
    COALESCE(host_name,'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    src_hosts
  );