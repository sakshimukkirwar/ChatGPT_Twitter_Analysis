

Use twitter;
LOAD DATA LOCAL INFILE '/Users/sakshijain/Downloads/users.csv'
INTO TABLE users FIELDS TERMINATED BY ','  ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS(user_name,user_link);


LOAD DATA LOCAL INFILE '/Users/sakshijain/Downloads/outlinks.csv'
INTO TABLE outlinks FIELDS TERMINATED BY ','  ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS(outlink, tweet_id);


LOAD DATA LOCAL INFILE '/Users/sakshijain/Downloads/outlinks.csv'
INTO TABLE outlinks
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS(outlink,tweet_id);

LOAD DATA LOCAL INFILE '/Users/sakshijain/Downloads/countlinks.csv'
INTO TABLE count_links
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS(count_links,tweet_id);


LOAD DATA LOCAL INFILE '/Users/sakshijain/Downloads/media.csv'
INTO TABLE media
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS(media_previewurl,media_fullurl,tweet_id);


LOAD DATA LOCAL INFILE '/Users/sakshijain/Downloads/mentionedusers.csv'
INTO TABLE tweet_mentioned_users
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS(tweet_id,user_name,displayname);

LOAD DATA LOCAL INFILE '/Users/sakshijain/Downloads/tweet_counts.csv'
INTO TABLE tweet_counts
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS(tweet_id,reply_count,retweet_count,like_count,quote_count,hashtag_count);


LOAD DATA INFILE '/Users/sakshijain/Downloads/tweet.csv'
INTO TABLE tweets
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(tweet_id, date_time, text, user_name, tweet_language, permalink, tweet_source, quoted_tweet_id, conversation_id);


LOAD DATA LOCAL INFILE '//Users/sakshijain/Downloads/tweet_hashtag.csv'
INTO TABLE tweet_hashtags
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS(hashtag,total_count);



LOAD DATA LOCAL INFILE '/Users/shashankreddykandimalla/Downloads/tweets_hashtag.csv'
INTO TABLE tweet_hashtag_mappings
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
