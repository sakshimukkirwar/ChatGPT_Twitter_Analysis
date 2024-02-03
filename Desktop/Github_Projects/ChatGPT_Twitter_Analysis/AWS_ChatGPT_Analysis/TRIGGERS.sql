use twitter;
-- Create the table if it does not exist
CREATE TABLE IF NOT EXISTS high_engagement_tweets (
  tweet_id INT NOT NULL,
  like_count INT NOT NULL,
  retweet_count INT NOT NULL,
  engagement_date DATETIME NOT NULL
);

-- Create the trigger
DELIMITER //

CREATE TRIGGER high_engagement_tweets
AFTER UPDATE ON tweet_counts 
FOR EACH ROW 
BEGIN
  IF NEW.like_count > 10 OR NEW.retweet_count > 5 THEN
    INSERT INTO high_engagement_tweets (tweet_id, like_count, retweet_count, engagement_date)
    VALUES (NEW.tweet_id, NEW.like_count, NEW.retweet_count, NOW());
  END IF;
END //

DELIMITER ;

drop trigger high_engagement_tweets;


