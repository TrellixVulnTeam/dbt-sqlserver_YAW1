
SELECT
    *
FROM
    "airbnb"."dbo"."dim_listings_cleansed"
WHERE
    minimum_nights < 1
