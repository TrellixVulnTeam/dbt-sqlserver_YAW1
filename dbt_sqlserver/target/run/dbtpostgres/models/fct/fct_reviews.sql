
      

    insert into "postgres"."dbo"."fct_reviews" ("review_id", "listing_id", "review_date", "reviewer_name", "review_text", "review_sentiment")
    (
        select "review_id", "listing_id", "review_date", "reviewer_name", "review_text", "review_sentiment"
        from "fct_reviews__dbt_tmp150724201962"
    )
  