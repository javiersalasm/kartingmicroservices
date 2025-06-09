-- Crear tabla clients si no existe
CREATE TABLE IF NOT EXISTS clients (
    id SERIAL PRIMARY KEY,
    run VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100),
    email VARCHAR(100),
    visit_count INT DEFAULT 0,
    birth_date DATE
);