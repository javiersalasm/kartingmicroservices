-- Crear tabla precios si no existe
CREATE TABLE IF NOT EXISTS precios (
                                       id SERIAL PRIMARY KEY,
                                       laps_or_max_time_minutes INT NOT NULL UNIQUE,
                                       price INT NOT NULL,
                                       total_duration_minutes INT NOT NULL
);

-- Insertar tarifas base
INSERT INTO precios (laps_or_max_time_minutes, price, total_duration_minutes) VALUES
                                                                                  (10, 15000, 30),
                                                                                  (15, 20000, 35),
                                                                                  (20, 25000, 40)
ON CONFLICT (laps_or_max_time_minutes) DO NOTHING;
