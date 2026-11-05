-- Schema para MDM Mayorista
CREATE TABLE IF NOT EXISTS productos (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  categoria VARCHAR(100),
  precio NUMERIC(12,2) NOT NULL,
  stock INT DEFAULT 0,
  unidad VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS pedidos (
  id SERIAL PRIMARY KEY,
  cliente_nombre VARCHAR(255) NOT NULL,
  cliente_telefono VARCHAR(50) NOT NULL,
  total NUMERIC(12,2) NOT NULL,
  estado VARCHAR(50) DEFAULT 'pendiente',
  items JSONB NOT NULL,
  creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
