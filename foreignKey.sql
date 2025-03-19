CREATE TABLE "user" (
    id SERIAL PRIMARY KEY NOT NULL,
    userName VARCHAR(50) NOT NULL
)

CREATE TABLE post (
    post VARCHAR(200),
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES "user" (id) ON DELETE CASCADE
);

INSERT INTO "user" (userName) VALUES ('Alice'), ('Bob');

INSERT INTO post (post, user_id) VALUES ('Hello World!', 1), ('My first post!', 2);

SELECT *  from  post
JOIN "user" on post.user_id="user".id;
SELECT  post, userName  from  post
JOIN "user" on post.user_id="user".id;
