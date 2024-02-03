use twitter;
-- Create the table if it does not exist
CREATE TABLE IF NOT EXISTS high_engagement_tweets(
  tweet_id INT NOT NULL,
  like_count INT NOT NULL,
  retweet_count INT NOT NULL,
  engagement_date DATETIME NOT NULL
);



#create SP
DELIMITER //

CREATE PROCEDURE insert_high_engagement_tweets()
BEGIN
  -- Insert rows into high_engagement_tweets for rows in tweet_counts where like_count > 1000 or retweet_count > 500
  INSERT INTO high_engagement_tweets (tweet_id, like_count, retweet_count, engagement_date)
  SELECT tweet_id, like_count, retweet_count, NOW()
  FROM tweet_counts
  WHERE like_count > 1000 OR retweet_count > 500;
END //

DELIMITER ;

CALL insert_high_engagement_tweets();

DROP PROCEDURE IF EXISTS insert_high_engagement_tweets;



DELIMITER //

CREATE TRIGGER high_engagement_tweets_trigger
AFTER UPDATE ON tweet_counts
FOR EACH ROW
BEGIN
  CALL insert_high_engagement_tweets();
END //

DELIMITER ;









SELECT * FROM tweet_counts WHERE like_count > 1000 OR retweet_count > 500;

SHOW TRIGGERS;






