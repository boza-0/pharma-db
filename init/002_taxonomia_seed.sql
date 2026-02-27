-- ============================
-- CATEGORÍAS
-- ============================

INSERT INTO categorias (id, nombre, abreviatura) VALUES
(1, 'Medicamentos', 'MED'),
(2, 'Parafarmacia', 'PAR'),
(3, 'Productos sanitarios', 'PS'),
(4, 'Fitoterapia', 'FIT'),
(5, 'Homeopatía', 'HOM');

-- ============================
-- SUBCATEGORÍAS + FAMILIAS
-- ============================

-- 1. MEDICAMENTOS

-- 1.1 Sistema Nervioso
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(1, 1, 'Sistema nervioso', 'SN');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(1, 1, 'Analgésico', 'ANALG'),
(2, 1, 'AINE', 'AINE'),
(3, 1, 'Opioide', 'OPIO'),
(4, 1, 'Antiepiléptico', 'AEP'),
(5, 1, 'Antiparkinsoniano', 'APARK'),
(6, 1, 'Ansiolítico', 'ANX'),
(7, 1, 'Antidepresivo', 'ADP'),
(8, 1, 'Antipsicótico', 'APS'),
(9, 1, 'Hipnótico', 'HIPN');

-- 1.2 Sistema Cardiovascular
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(2, 1, 'Sistema cardiovascular', 'CV');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(10, 2, 'Antihipertensivo', 'HTA'),
(11, 2, 'Diurético', 'DIUR'),
(12, 2, 'Antiarrítmico', 'AARR'),
(13, 2, 'Anticoagulante', 'ACOAG'),
(14, 2, 'Antiagregante', 'AAG'),
(15, 2, 'Hipolipemiante', 'HIPO');

-- 1.3 Sistema Respiratorio
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(3, 1, 'Sistema respiratorio', 'RESP');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(16, 3, 'Antihistamínico', 'AHIST'),
(17, 3, 'Descongestivo', 'DESCON'),
(18, 3, 'Antitusivo', 'ATUS'),
(19, 3, 'Mucolítico', 'MUCO'),
(20, 3, 'Broncodilatador', 'BRON'),
(21, 3, 'Corticoide inhalado', 'CORT_INH');

-- 1.4 Sistema Digestivo
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(4, 1, 'Sistema digestivo', 'DIG');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(22, 4, 'Antiácido', 'ANTIAC'),
(23, 4, 'IBP', 'IBP'),
(24, 4, 'Antiemético', 'ANTIEM'),
(25, 4, 'Antidiarreico', 'ANTID'),
(26, 4, 'Laxante', 'LAX'),
(27, 4, 'Antiespasmódico', 'ANTIESP');

-- 1.5 Sistema Endocrino
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(5, 1, 'Sistema endocrino', 'ENDO');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(28, 5, 'Antidiabético', 'ADIA'),
(29, 5, 'Hormona tiroidea', 'HTIR'),
(30, 5, 'Corticoide sistémico', 'CORT_S'),
(31, 5, 'Anticonceptivo hormonal', 'ACH');

-- 1.6 Antiinfecciosos
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(6, 1, 'Antiinfecciosos', 'INF');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(32, 6, 'Antibiótico sistémico', 'AB_S'),
(33, 6, 'Antibiótico tópico', 'AB_T'),
(34, 6, 'Antifúngico sistémico', 'AF_S'),
(35, 6, 'Antifúngico tópico', 'AF_T'),
(36, 6, 'Antiviral', 'AV'),
(37, 6, 'Antiparasitario', 'APAR');

-- 1.7 Dermatología
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(7, 1, 'Dermatología', 'DERM');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(38, 7, 'Corticoide tópico', 'CORT_T'),
(39, 7, 'Antifúngico tópico', 'AF_T'),
(40, 7, 'Antibiótico tópico', 'AB_T'),
(41, 7, 'Emoliente', 'EMOL'),
(42, 7, 'Tratamiento acné', 'ACNE'),
(43, 7, 'Tratamiento psoriasis', 'PSOR');

-- 1.8 Oftalmología
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(8, 1, 'Oftalmología', 'OFT');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(44, 8, 'Antibiótico oftálmico', 'AB_OFT'),
(45, 8, 'Antiinflamatorio oftálmico', 'AI_OFT'),
(46, 8, 'Antialérgico oftálmico', 'AA_OFT'),
(47, 8, 'Lágrima artificial', 'LAGR');

-- 1.9 Otorrinolaringología
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(9, 1, 'Otorrinolaringología', 'ORL');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(48, 9, 'Antiinflamatorio ótico', 'AI_OT'),
(49, 9, 'Antibiótico ótico', 'AB_OT'),
(50, 9, 'Cerumenolítico', 'CERU');

-- 1.10 Urología
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(10, 1, 'Urología', 'URO');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(51, 10, 'Antiséptico urinario', 'ANT_UR'),
(52, 10, 'Antiespasmódico urinario', 'ESP_UR'),
(53, 10, 'Tratamiento HBP', 'HBP');

-- 1.11 Ginecología
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(11, 1, 'Ginecología', 'GIN');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(54, 11, 'Antifúngico vaginal', 'AF_VAG'),
(55, 11, 'Antiséptico vaginal', 'ANT_VAG'),
(56, 11, 'Terapia hormonal', 'TH');

-- ============================
-- 2. PARAFARMACIA
-- ============================

-- 2.1 Dermocosmética
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(12, 2, 'Dermocosmética', 'DERMO');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(57, 12, 'Hidratación', 'HIDR'),
(58, 12, 'Antiedad', 'ANTIAGE'),
(59, 12, 'Limpieza facial', 'LIMP'),
(60, 12, 'Fotoprotección', 'FOTO'),
(61, 12, 'Cuidado corporal', 'CORP'),
(62, 12, 'Cuidado capilar', 'CAP');

-- 2.2 Higiene
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(13, 2, 'Higiene', 'HIG');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(63, 13, 'Higiene bucodental', 'BUCO'),
(64, 13, 'Higiene corporal', 'CORP'),
(65, 13, 'Higiene íntima', 'INT'),
(66, 13, 'Higiene capilar', 'CAP');

-- 2.3 Infantil
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(14, 2, 'Infantil', 'INFANT');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(67, 14, 'Alimentación infantil', 'ALIM_INF'),
(68, 14, 'Higiene infantil', 'HIG_INF'),
(69, 14, 'Dermatitis del pañal', 'PANAL'),
(70, 14, 'Accesorios infantiles', 'ACC_INF');

-- 2.4 Ortopedia
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(15, 2, 'Ortopedia', 'ORTO');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(71, 15, 'Faja', 'FAJA'),
(72, 15, 'Rodillera', 'ROD'),
(73, 15, 'Muñequera', 'MUNE'),
(74, 15, 'Plantilla', 'PLAN');

-- 2.5 Dietética y Nutrición
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(16, 2, 'Dietética y nutrición', 'NUT');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(75, 16, 'Vitamina', 'VIT'),
(76, 16, 'Mineral', 'MIN'),
(77, 16, 'Complemento deportivo', 'DEP'),
(78, 16, 'Control de peso', 'PESO');

-- 2.6 Salud Sexual
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(17, 2, 'Salud sexual', 'SEX');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(79, 17, 'Preservativo', 'PRES'),
(80, 17, 'Lubricante', 'LUB'),
(81, 17, 'Test de embarazo', 'TEST_EMB'),
(82, 17, 'Test de ovulación', 'TEST_OV');

-- 2.7 Veterinaria
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(18, 2, 'Veterinaria', 'VET');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(83, 18, 'Antiparasitario veterinario', 'AP_VET'),
(84, 18, 'Higiene veterinaria', 'HIG_VET'),
(85, 18, 'Alimentación veterinaria', 'ALIM_VET');

-- ============================
-- 3. PRODUCTOS SANITARIOS
-- ============================

-- 3.1 Diagnóstico
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(19, 3, 'Diagnóstico', 'DIAG');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(86, 19, 'Test de glucosa', 'TEST_GLU'),
(87, 19, 'Test de embarazo', 'TEST_EMB'),
(88, 19, 'Test COVID', 'TEST_COV'),
(89, 19, 'Tensiómetro', 'TENS'),
(90, 19, 'Termómetro', 'TERM');

-- 3.2 Vendaje y cura
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(20, 3, 'Vendaje y cura', 'VEND');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(91, 20, 'Gasa', 'GASA'),
(92, 20, 'Apósito', 'APOS'),
(93, 20, 'Antiséptico', 'ANTIS'),
(94, 20, 'Tirita', 'TIR'),
(95, 20, 'Esparadrapo', 'ESP');

-- 3.3 Incontinencia
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(21, 3, 'Incontinencia', 'INCON');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(96, 21, 'Compresa', 'COMP'),
(97, 21, 'Braguita absorbente', 'BRAG'),
(98, 21, 'Empapador', 'EMP');

-- 3.4 Material clínico
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(22, 3, 'Material clínico', 'MAT');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(99, 22, 'Jeringa', 'JER'),
(100, 22, 'Aguja', 'AGU'),
(101, 22, 'Guante', 'GUA'),
(102, 22, 'Mascarilla', 'MASK');

-- ============================
-- 4. FITOTERAPIA
-- ============================
-- 4.1 Fitoterapia
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(23, 4, 'Fitoterapia', 'FIT');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(103, 23, 'Planta medicinal', 'PLANT'),
(104, 23, 'Extracto vegetal', 'EXT'),
(105, 23, 'Jarabe natural', 'JAR');

-- ============================
-- 5. HOMEOPATÍA
-- ============================
-- 5.1 Homeopatía
INSERT INTO subcategorias (id, categoria_id, nombre, abreviatura) VALUES
(24, 5, 'Homeopatía', 'HOM');

INSERT INTO familias (id, subcategoria_id, nombre, abreviatura) VALUES
(106, 24, 'Gránulo', 'GRAN'),
(107, 24, 'Gota', 'GOTA'),
(108, 24, 'Compuesto homeopático', 'COMP_HOM');

-- ============================
-- VÍAS DE ADMINISTRACIÓN
-- ============================
INSERT INTO vias (id, nombre, abreviatura) VALUES
(1, 'Oral', 'ORAL'),
(2, 'Tópica', 'TOP'),
(3, 'Cutánea', 'CUT'),
(4, 'Oftálmica', 'OFT'),
(5, 'Ótica', 'OT'),
(6, 'Nasal', 'NAS'),
(7, 'Inhalatoria', 'INH'),
(8, 'Rectal', 'REC'),
(9, 'Vaginal', 'VAG'),
(10, 'Sublingual', 'SUB'),
(11, 'Parenteral', 'PAR'),
(12, 'Intravenosa', 'IV'),
(13, 'Intramuscular', 'IM'),
(14, 'Subcutánea', 'SC'),
(15, 'Transdérmica', 'TD');
