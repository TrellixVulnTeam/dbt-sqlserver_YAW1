
WITH src_reviews AS (
SELECT * FROM "postgres"."dbo"."src_reviews"
)
SELECT 
    md5(cast(coalesce(cast(listing_id as 
    varchar
), '') || '-' || coalesce(cast(review_date as 
    varchar
), '') || '-' || coalesce(cast(reviewer_name as 
    varchar
), '') || '-' || coalesce(cast(review_text as 
    varchar
), '') as 
    varchar
)) AS review_id,
    * 
FROM src_reviews
WHERE review_text is not null


    AND review_date > (select max(review_date) from "postgres"."dbo"."fct_reviews")
