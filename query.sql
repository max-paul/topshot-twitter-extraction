
-- takes all the tweets that contain TS in it, meaning their username usually follows it from my search

select user_id,tweet
from twitter_tweet
where to_tsvector('english',tweet) @@ plainto_tsquery('english','TS')