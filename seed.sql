-- AiLancer seed data
CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  email TEXT UNIQUE,
  password TEXT
);

CREATE TABLE IF NOT EXISTS orders (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  description TEXT,
  budget REAL,
  user_id INTEGER
);

INSERT INTO users (name, email, password) VALUES ('Test User', 'test@example.com', 'hashedpassword');
INSERT INTO orders (title, description, budget, user_id) VALUES ('Test Order', 'This is a test order', 100, 1);
