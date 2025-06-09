-- Crear tabla special_days si no existe
CREATE TABLE IF NOT EXISTS special_days (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL UNIQUE,
    percentage DOUBLE PRECISION NOT NULL
);