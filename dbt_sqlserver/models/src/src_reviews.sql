WITH raw_reviews AS (
    SELECT
    *
    FROM
    postgres.dbo.raw_reviews
)
SELECT
    listing_id,
    "DATE" AS review_date,
    reviewer_name,
    "COMMENTS" AS review_text,
    sentiment AS review_sentiment
FROM
    raw_reviews