CREATE TABLE categorias (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE,
    abreviatura TEXT NOT NULL UNIQUE
);

CREATE TABLE subcategorias (
    id INTEGER PRIMARY KEY,
    categoria_id INTEGER NOT NULL REFERENCES categorias(id),
    nombre TEXT NOT NULL,
    abreviatura TEXT NOT NULL,
    UNIQUE (categoria_id, abreviatura)
);

CREATE TABLE familias (
    id INTEGER PRIMARY KEY,
    subcategoria_id INTEGER NOT NULL REFERENCES subcategorias(id),
    nombre TEXT NOT NULL,
    abreviatura TEXT NOT NULL,
    UNIQUE (subcategoria_id, abreviatura)
);

CREATE TABLE vias (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE,
    abreviatura TEXT NOT NULL UNIQUE
);

CREATE TABLE productos (
    id SERIAL PRIMARY KEY,

    familia_id INTEGER NOT NULL REFERENCES familias(id),
    via_id INTEGER NOT NULL REFERENCES vias(id),

    sku TEXT NOT NULL UNIQUE,
    marca TEXT,
    nombre TEXT NOT NULL,
    unidades_por_envase INTEGER,
    comentarios TEXT,
    foto_url TEXT,

    principio_activo TEXT,
    concentracion TEXT,
    forma_farmaceutica TEXT,

    sustancia_controlada BOOLEAN NOT NULL,
    requiere_serializacion BOOLEAN NOT NULL,

    pvp NUMERIC(10,2),
    stock INTEGER,

    activo BOOLEAN NOT NULL DEFAULT TRUE
);
