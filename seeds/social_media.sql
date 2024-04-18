-- The job of this file is to reset all of our important database tables.
-- And add any data that is needed for the tests to run.
-- This is so that our tests, and application, are always operating from a fresh
-- database state, and that tests don't interfere with each other.

-- First, we must delete (drop) all our tables
DROP TABLE IF EXISTS user_accounts;
DROP SEQUENCE IF EXISTS user_accounts_id_seq;
DROP TABLE IF EXISTS posts;
DROP SEQUENCE IF EXISTS posts_id_seq;

-- Then, we recreate them
CREATE SEQUENCE IF NOT EXISTS user_accounts_id_seq;
CREATE TABLE user_accounts (
    id SERIAL PRIMARY KEY,
    email_adress text,
    username text
);

CREATE SEQUENCE IF NOT EXISTS posts_id_seq;
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    post_title text,
    post_content text
    post_views int
-- The foreign key name is always {other_table_singular}_id
    user_account_id int,
    constraint fk_user_account foreign key(user_account_id)
        references user_accounts(id)
        on delete cascade
);


-- Finally, we add any records that are needed for the tests to run
INSERT INTO user_accounts (email_adress, username) VALUES ('hello@hello.com', 'hello123');
INSERT INTO user_accounts (email_adress, username) VALUES ('niamhb@niamhb.com', 'niamhb123');
INSERT INTO user_accounts (email_adress, username) VALUES ('jon53@me.com', 'jon53');
INSERT INTO user_accounts (email_adress, username) VALUES ('emaa1@sky.com', 'emaa1');


INSERT INTO posts (post_title, post_content,user_account_id) VALUES ('post1 title ', 'post1 contents',1);
INSERT INTO posts (post_title, post_content,user_account_id) VALUES ('post2 title ', 'post2 contents',2);
INSERT INTO posts (post_title, post_content,user_account_id) VALUES ('post3 title ', 'post3 contents',3);
INSERT INTO posts (post_title, post_content,user_account_id) VALUES ('post4title ', 'post4 contents',4);
INSERT INTO posts (post_title, post_content,user_account_id) VALUES ('post5 title ', 'post5 contents',5);
INSERT INTO posts (post_title, post_content,user_account_id) VALUES ('post6 title ', 'post contents6',6);



