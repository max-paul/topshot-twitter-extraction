
-- creating a table for the twitter users
CREATE TABLE twitter_user(
    realname char(50),
    username char(50),
    user_id BIGINT NOT NULL,
    user_loc char(100),
    user_desc text,
    user_followers int,
    user_friends int,
    user_listed int,
    user_created char(45),
    user_favs int,
    user_verified boolean,
    user_statuses int,
    PRIMARY KEY (user_id)

)

-- creating a table for the tweets
CREATE TABLE twitter_tweet(
    tweet_id BIGINT NOT NULL,
    created_at char(45)m
    tweet text,
    user_id BIGINT NOT NULL,
    PRIMARY KEY (tweet_id),
    CONSTRAINT fk
        FOREIGN KEY(user_id)
            REFERENCES twitter_user(user_id)

)


-- creating table for topshotusername and user id mapping

CREATE TABLE topshot_username(
    user_id BIGINT NOT NULL,
    ts_username varchar(50), 
    PRIMARY KEY (user_id),
    CONSTRAINT fk1
        FOREIGN KEY (user_id)
            REFERENCES twitter_user(user_id)
)