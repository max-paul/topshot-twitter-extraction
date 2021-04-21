
-- takes all the tweets that contain TS in it, meaning their username usually follows it from my search

select user_id,tweet
from twitter_tweet
where to_tsvector('english',tweet) @@ plainto_tsquery('english','TS')


-- filter query for updating based on day!
select user_id,tweet,TO_DATE(created_at,'DY Mon Year') as date
from twitter_tweet
where to_tsvector('english',tweet) @@ plainto_tsquery('english','TS') AND TO_DATE(created_at,'DY-Mon-DD HH24:MI:SS MS YYYY') = CURRENT_DATE 
