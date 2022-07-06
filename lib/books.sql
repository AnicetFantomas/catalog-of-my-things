CREATE TABLE books (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  publisher VARCHAR(100),
  published_date DATE,
  archived BOOLEAN,
  cover_state VARCHAR(50)
);

CREATE TABLE labels (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  color VARCHAR(50)
);