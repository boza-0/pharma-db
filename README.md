### VS Code 

Do not lose SQL syntax highlighting! Add this in user settings:

```json 
"files.associations": {
  "*.sql.in": "sql"
}
```

### Running the database

```cmd
docker compose up
docker compose down
``` 

### Connect to the database

```cmd 
docker exec -it pharma-postgres psql -U postgres -d pharma
```

### List tables

```sql
\dt 
``` 

### Inspect the seeded product

```sql 
SELECT
    p.id,
    p.sku,
    p.nombre,
    p.marca,
    c.nombre AS categoria,
    s.nombre AS subcategoria,
    f.nombre AS familia,
    v.nombre AS via_administracion,
    p.pvp,
    p.stock
FROM productos p
JOIN categoria c ON p.categoria_id = c.id
JOIN subcategoria s ON p.subcategoria_id = s.id
JOIN familia f ON p.familia_id = f.id
JOIN via_administracion v ON p.via_administracion_id = v.id;
```

### Exit the database

```sql 
\q
``` 