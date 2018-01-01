DROP TABLE IF EXISTS video;

CREATE TABLE video (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  source TEXT,
  image TEXT

);
insert into video (title, body, source, image) values ('Top 20 Knockouts in UFC History', 'The UFC celebrated its first 20 years by creating the Top 20 Knockouts in UFC History, 1993-2013', '<iframe width="560" height="315" src="https://www.youtube.com/embed/LWE79K2Ii-s" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>', 'https://i.ytimg.com/vi/LWE79K2Ii-s/hqdefault.jpg?sqp=-oaymwEXCPYBEIoBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAvTypTz_Zh8Ez2TBN2TrVuPbDJNg');
insert into video (title, body, source, image) values ('Top 20 Submissions in UFC History', 'The greatest ground game wins in the Octagon!', '<iframe width="560" height="315" src="https://www.youtube.com/embed/HALf3esHQJ0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>', 'https://i.ytimg.com/vi/HALf3esHQJ0/hqdefault.jpg?sqp=-oaymwEXCPYBEIoBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBnxgevMZCwwdNecGgsUgvVXT9C7w');
insert into video (title, body, source, image) values ('Ultimate Knockouts: Rising Stars', 'See the wild finishes that put up-and-coming fighters on the fast-track to becoming big stars. ', '<iframe width="560" height="315" src="https://www.youtube.com/embed/hQEEYrY-xMg" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>', 'https://i.ytimg.com/vi/hQEEYrY-xMg/hqdefault.jpg?sqp=-oaymwEXCPYBEIoBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDAm7JZXQ2aeQX1Zoxw8_ZDDYE0uw');
