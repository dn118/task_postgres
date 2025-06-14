CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL
);

INSERT INTO users (name, email) VALUES
('Alice','alice@example.com'),
('Bob','bob@example.com'),
('Carol','carol@example.com'),
('Dave','dave@example.com'),
('Eve','eve@example.com'),
('Frank','frank@example.com'),
('Grace','grace@example.com'),
('Heidi','heidi@example.com'),
('Ivan','ivan@example.com'),
('Judy','judy@example.com')
ON CONFLICT DO NOTHING;
