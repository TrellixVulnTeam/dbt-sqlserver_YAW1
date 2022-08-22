{{ config(
    materialized = 'table',
) }}

-- SQLINES LICENSE FOR EVALUATION USE ONLY
WITH fct_reviews AS (
    SELECT * FROM postgres.dbo.fct_reviews
),

full_moon_dates AS (
    SELECT * FROM postgres.dbo_seed_full_moon_dates.seed_full_moon_dates
)

-- SQLINES LICENSE FOR EVALUATION USE ONLY
SELECT
    r.*,
    CASE
    WHEN fm.full_moon_date IS NULL THEN 'not full moon'
    ELSE 'full moon'
    END AS is_full_moon
FROM
    fct_reviews
    r
    LEFT JOIN full_moon_dates
    fm
    ON (TO_DATE(r.review_date, 'YYYY-MM-DD') = INTERVAL '1 DAY' + fm.full_moon_date)