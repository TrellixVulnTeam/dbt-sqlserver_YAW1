
  create view "postgres"."dbo"."dim_listings_cleansed__dbt_tmp" as (
    WITH src_listings AS (
    SELECT * FROM "postgres"."dbo"."src_listings"
)
SELECT
    listing_id,
    listing_name,
    room_type,
    CASE
    WHEN minimum_nights = 0 THEN 1
    ELSE minimum_nights
    END AS minimum_nights,
    host_id,
    ROUND(CAST(REPLACE(price_str,'$', '') AS INTEGER), 2) AS price,
    created_at,
    updated_at
FROM
    src_listings
  );