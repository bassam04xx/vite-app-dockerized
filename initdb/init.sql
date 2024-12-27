CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  age INT NOT NULL
);

INSERT INTO users (name, email, age) VALUES
('Alice', 'alice@example.com', 30),
('Bob', 'bob@example.com', 25),
('Charlie', 'charlie@example.com', 35)
ON CONFLICT DO NOTHING;  -- Avoid inserting duplicates if the script runs multiple times
