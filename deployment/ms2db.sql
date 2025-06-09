-- Creación de tabla si no existe
CREATE TABLE IF NOT EXISTS group_discount (
                                              id SERIAL PRIMARY KEY,
                                              min_persons INT NOT NULL,
                                              max_persons INT NOT NULL,
                                              percent DOUBLE PRECISION NOT NULL
);

-- Inserción de descuentos grupales (id se autogenera)
INSERT INTO group_discount (min_persons, max_persons, percent) VALUES
                                                                   (1, 2, 0.00),
                                                                   (3, 5, 0.10),
                                                                   (6, 10, 0.20),
                                                                   (11, 15, 0.30)
ON CONFLICT DO NOTHING;
