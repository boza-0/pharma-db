-- ============================================================
-- PRODUCTOS SEED (EXAMPLE)
-- ============================================================
-- Demonstrates semantic taxonomy input and automatic
-- resolution to canonical IDs and SKU generation.
-- ============================================================

INSERT INTO productos (
  categoria_id,
  subcategoria_id,
  familia_id,
  via_administracion_id,

  marca,
  nombre,
  unidades_por_envase,

  principio_activo,
  concentracion,
  forma_farmaceutica,

  sustancia_controlada,
  requiere_serializacion,

  pvp,
  stock
)
VALUES (
  1,      -- Medicamentos
  101,    -- Sistema nervioso
  1004,   -- Antiepiléptico (AEP)
  1,      -- Oral

  'Pfizer',
  'Neuroval',
  50,     -- unidades por envase (box of 50)

  'Ácido valproico',
  '500 mg',
  'Comprimidos recubiertos',

  false,
  false,

  12.95,
  150
);
