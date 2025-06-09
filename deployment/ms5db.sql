-- Tabla para las reservas principales
CREATE TABLE IF NOT EXISTS reservations (
    id SERIAL PRIMARY KEY,
    code INT NOT NULL,
    reserve_date DATE NOT NULL,
    reserve_time TIME NOT NULL,
    laps_or_max_time_minutes INT NOT NULL,
    number_of_people INT NOT NULL,
    client_id BIGINT NOT NULL,
    status VARCHAR(255),
    total_amount INT NOT NULL,
    birthday_count INT NOT NULL
);

-- Tabla intermedia para asociar reservas con todos los clientes participantes
CREATE TABLE IF NOT EXISTS reservation_clients (
    id SERIAL PRIMARY KEY,
    reservation_id BIGINT NOT NULL,
    client_id BIGINT NOT NULL
);

-- Índices y restricciones
CREATE INDEX IF NOT EXISTS idx_reservation_id ON reservation_clients(reservation_id);
CREATE INDEX IF NOT EXISTS idx_client_id ON reservation_clients(client_id);