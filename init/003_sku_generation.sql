CREATE OR REPLACE FUNCTION generar_sku()
RETURNS TRIGGER AS $$
DECLARE
    categoria_abreviatura TEXT;
    subcategoria_abreviatura TEXT;
    familia_abreviatura TEXT;
    contador INTEGER;
BEGIN
    IF NEW.sku IS NOT NULL THEN
        RAISE EXCEPTION 'La generación del SKU es automática, no debe proporcionarlo manualmente';
    END IF;

    SELECT categorias.abreviatura, subcategorias.abreviatura, familias.abreviatura
    INTO categoria_abreviatura, subcategoria_abreviatura, familia_abreviatura
    FROM familias
    JOIN subcategorias ON subcategorias.id = familias.subcategoria_id
    JOIN categorias ON categorias.id = subcategorias.categoria_id
    WHERE familias.id = NEW.familia_id;

    SELECT COUNT(*) + 1
    INTO contador
    FROM productos
    WHERE familia_id = NEW.familia_id;

    NEW.sku :=
        categoria_abreviatura    || '-' ||
        subcategoria_abreviatura || '-' ||
        familia_abreviatura      || '-' ||
        LPAD(contador::TEXT, 3, '0');

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trg_generar_sku
BEFORE INSERT ON productos
FOR EACH ROW
EXECUTE FUNCTION generar_sku();