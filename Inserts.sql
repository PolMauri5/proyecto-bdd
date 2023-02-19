

-- Inserts

-- Persona
INSERT INTO Persona VALUES ('77414439G', 'Magaly', 'Custodia', 'Heraclio', 'magaly@custodia.com');
INSERT INTO Persona VALUES ('42111001W', 'Noé', 'Fanny', 'Purificación', 'noe@fanny.com');
INSERT INTO Persona VALUES ('49266807W', 'Borja', 'Inma', 'Ramona', 'borja@inma.com');
INSERT INTO Persona VALUES ('71333619Q', 'Juan Manuel', ' Baudilio', ' Olaya', 'juanma@baudilio.com');
INSERT INTO Persona VALUES ('72898091M', 'Dalila', 'Mónica', 'Mar', 'dalila@monica.com');
INSERT INTO Persona VALUES ('37913420J', 'Hermenegildo', 'Dionisio', 'Clarisa', 'hermenegildo@dionisio.com');
INSERT INTO Persona VALUES ('63176625H', 'Marisa', 'Lalo', 'Román', 'marisa@lalo.com');
INSERT INTO Persona VALUES ('89864030V', 'Irma', ' Álvaro', 'Felipa', 'irma@alvaro.com');
INSERT INTO Persona VALUES ('35150114L', 'Sócrates', ' Yéssica', 'Gabino', 'socrates@yessica.com');
INSERT INTO Persona VALUES ('77456716F', 'Trinidad', 'Telesforo', 'Elías', 'trinidad@telesforo.com');
INSERT INTO Persona VALUES ('17227182K', 'Enrique', 'Concha', 'Sancha', 'enrique@concha.com');
INSERT INTO Persona VALUES ('80374026C', 'Hilda', 'Gervasio', 'Chema', 'hilda@gervasio.com');
INSERT INTO Persona VALUES ('69053017W', 'Darío', 'Florinda', 'Olvido', 'dario@florinda.com');
INSERT INTO Persona VALUES ('29005771B', 'Toribio', 'María de los Ángeles', 'Eulalia', 'toribio@eulalia.com');
INSERT INTO Persona VALUES ('76150160N', 'Primitivo', 'Isabela', 'Yamilet', 'primitivo@isabela.com');
INSERT INTO Persona VALUES ('00079024L', 'Pío', 'Nidia', 'Patricio', 'pio@nidia.com');
-- Persona

-- Carrec_Empleat
INSERT INTO Carrec_Empleat VALUES ('Jefazo', 'Jefazo supremo', 40, 2200.20);
INSERT INTO Carrec_Empleat VALUES ('Camarero', 'Camarero', 40, 1200.78);
INSERT INTO Carrec_Empleat VALUES ('Cajero', 'Cobrador', 20, 600);
-- Carrec_Empleat

-- Localitat
INSERT INTO Localitat VALUES (1, 'Barcelona', 'Barcelona', 'Catalunya', 'España', 'Europa');
INSERT INTO Localitat VALUES (2, 'El Masnou', 'Barcelona', 'Catalunya', 'España', 'Europa');
INSERT INTO Localitat VALUES (3, 'Premia de Dalt', 'Barcelona', 'Catalunya', 'España', 'Europa');
INSERT INTO Localitat VALUES (4, 'Arenys de Mar', 'Barcelona', 'Catalunya', 'España', 'Europa');
-- Localitat

-- Empleat
INSERT INTO Empleat VALUES ('77414439G', '429244911369', 'ES6020078957564873146427', '200.36', 'Jefazo', '77414439G', 1);
INSERT INTO Empleat VALUES ('42111001W', '339464428076', 'ES0302324078926835139128', '50.27', 'Camarero', '77414439G', 2);
INSERT INTO Empleat VALUES ('49266807W', '070953788115', 'ES6630899079198562160809', '32.98', 'Cajero', '42111001W', 1);
INSERT INTO Empleat VALUES ('71333619Q', '221860201772', 'ES0320213419391625047384', '12.00', 'Camarero', '42111001W', 3);
INSERT INTO Empleat VALUES ('72898091M', '326398487963', 'ES7120223609499432757586', '8.32', 'Camarero', '42111001W', 4);
INSERT INTO Empleat VALUES ('37913420J', '397376931800', 'ES6731054847408282291212', '4.35', 'Camarero', '77414439G', 1);
-- Empleat

-- Client
INSERT INTO `Client` VALUES ('00079024L', true);
INSERT INTO `Client` VALUES ('76150160N', false);
INSERT INTO `Client` VALUES ('29005771B', true);
INSERT INTO `Client` VALUES ('69053017W', true);
INSERT INTO `Client` VALUES ('80374026C', true);
INSERT INTO `Client` VALUES ('17227182K', false);
INSERT INTO `Client` VALUES ('77456716F', true);
INSERT INTO `Client` VALUES ('35150114L', false);
INSERT INTO `Client` VALUES ('89864030V', false);
INSERT INTO `Client` VALUES ('63176625H', false);
INSERT INTO `Client` VALUES ('37913420J', true);
INSERT INTO `Client` VALUES ('72898091M', true);
-- Client

-- Bar (4)
INSERT INTO Bar (Nom, AforamentMaxim, TeExterior, Ubicacio) VALUES ('BARcelona', 40, true, 1);
INSERT INTO Bar (Nom, AforamentMaxim, TeExterior, Ubicacio) VALUES ('BAResme', 30, true, 2);
INSERT INTO Bar (Nom, AforamentMaxim, TeExterior, Ubicacio) VALUES ('Arenys de BAR', 20, false, 4);
INSERT INTO Bar (Nom, AforamentMaxim, TeExterior, Ubicacio) VALUES ('Bar', 60, true, 3);
-- Bar

-- Taula
INSERT INTO Taula (IDBar, EsExterior, EsFumadors, NumCadires) VALUES (1, false, false, 4);
INSERT INTO Taula (IDBar, EsExterior, EsFumadors, NumCadires) VALUES (2, true, true, 4);
INSERT INTO Taula (IDBar, EsExterior, EsFumadors, NumCadires) VALUES (1, true, true, 2);
INSERT INTO Taula (IDBar, EsExterior, EsFumadors, NumCadires) VALUES (2, false, false, 2);
INSERT INTO Taula (IDBar, EsExterior, EsFumadors, NumCadires) VALUES (2, false, false, 8);
INSERT INTO Taula (IDBar, EsExterior, EsFumadors, NumCadires) VALUES (1, true, false, 4);
INSERT INTO Taula (IDBar, EsExterior, EsFumadors, NumCadires) VALUES (1, false, false, 2);
INSERT INTO Taula (IDBar, EsExterior, EsFumadors, NumCadires) VALUES (2, false, true, 4);
-- Taula

-- Tapa
INSERT INTO Tapa (Nom, DescripcioCarta, TempsPreparacio, EsCalent, EsVegeta, EsIndividual) VALUES 
('Pan con tomate', 'Pan con tomate', 2, false, true, true), 
('Miniescalivada', 'Con queso de cabra', 5, false, false, true),
('Olivas', 'Olivas', 1, false, true, false),
('Tiras de pollo', 'con mayonesa de curry', 10, true, false, true),
('Calamares salteados', 'Calamares salteados', 10, true, false, true),
('Patatas bravas', 'Bravas patatas', 5, true, true, false),
('Croquetas de pollo', 'de pollo', 10, true, false, true),
('Tortilla de patata', 'Vegana', 10, true, true, true);
-- Tapa

-- Beguda
INSERT INTO Beguda (Nom, Descripcio, EsCalent, TeAlcohol, QuanitatCL) VALUES
('Agua', 'Agua fria', false, false, 300),
('Coca-Cola', 'Coca-Cola', false, false, 350),
('Clara', 'Cerveza clara', false, true, 300),
('Aquarius', 'Aquarius', false, false, 350);
-- Beguda

-- Client taula
INSERT INTO  Client_Taula (DNIClient, NumeroTaula, IdBar, EsFumador, DataHoraArribada, DataHoraSortida, HaPagat) VALUES
('00079024L', 1, 1, true, '2023-01-01 22:00:00', '2023-01-02 00:00:00', true),
('76150160N', 2, 2, false, '2023-01-03 20:37:45', '2023-01-03 23:20:15', true),
('29005771B', 3, 1, false, '2023-01-04 13:20:47', '2023-01-04 15:30:28', false),
('69053017W', 4, 2, true, '2023-02-01 14:30:00', '2023-02-01 16:20:00', true);
-- Client taula

-- Distribuidor 
INSERT INTO Distribuidor (NomEmpresa, ContactePrincipal, Telefon, Email, Web) VALUES
('Flota Mil', 'Marc', 123456789, 'sovek12760@laserlip.com', 'flotamil.com' ),
('Distribuidora Great Logistics', 'Joan', 987654321, 'sove2160@laserlip.com', 'greatlogistics.com' ),
('Entrega', 'Jorge', 124356879, 'sovek12760@laserlip.com', 'entrega-dist.com' ),
('Gestión y Distribución Occi', 'Iker', 214365879, 'sodak12760@laserlip.com', 'gest-y-dist.com' ),
('EMDIS', 'Ruben', 896745231, 'sopola60@laserlip.com', 'emdis.com' ),
('Pronto Distribución', 'Pau', 543219876, 'marck12760@laserlip.com', 'pronto.com' ),
('Distribuidora La Precisa', 'Pol', 987612345, 'guapeton@laserlip.com', 'laprecisa.com' ),
('Soluciones Dis', 'Manel', 918273645, 'pera@laserlip.com', 'soldis.com');
-- Distribuidor

-- Ingredient
INSERT INTO Ingredient (IDIngredient, Nom, Descripcio, EsPicant, EsImportacio, CostGram, IDDistribuidor) VALUES
(1, 'Tomaquet', 'Amarg', false, true, 10, 1),
(2, 'Jalapeño', 'Picante', true, true, 5, 3),
(3, 'Cebolla', 'Amarg', false, true, 10, 1 ),
(4, 'Tomaquet', 'Amarg', false, true, 10, 1 ),
(5, 'Tomaquet', 'Amarg', false, true, 10, 1 ),
(6, 'Tomaquet', 'Amarg', false, true, 10, 1 );
-- Ingredient

-- Carta Tapes
INSERT INTO Carta_Tapes (IDTapa, IDBar, Cost, PVP) VALUES
(1, 1, 10, 1),
(2, 2, 5, 4),
(3, 3, 7, 2.3),
(4, 4, 9, 1),
(5, 1, 4, 1),
(6, 2, 10, 3),
(7, 3, 4, 2),
(8, 4, 6, 1.21);
-- Carta Tapes

-- Carta Begudes
INSERT INTO Carta_Begudes (IDBeguda, IDBar, Cost, PVP) VALUES
(1, 1, 1, 1),
(2, 2, 2.5, 1),
(3, 3, 3, 1),
(4, 4, 1.5, 1),
(1, 2, 1, 1),
(2, 1, 2.5, 1);
-- Carta Begudes

-- Comanda Tapa
INSERT INTO Comanda_Tapes (IDTapa, IDBar, IDClientTaula, DataHoraComanda, Quantitat) VALUES
(1, 1, 1, '2022-02-04 19:35:09', 1),
(2, 2, 2, '2022-03-19 10:46:48', 1),
(3, 3, 3, '2022-02-27 06:16:37', 2),
(4, 4, 4, '2022-03-13 20:01:11', 1),
(5, 1, 1, '2022-01-27 13:12:57', 2),
(6, 2, 2, '2022-02-07 03:47:16', 3),
(7, 3, 3, '2022-03-24 22:53:28', 1),
(8, 4, 4, '2022-02-01 05:35:20', 1);
-- Comanda Tapa

-- Distro Beguda
INSERT INTO Distro_Beguda (IDDistribuidor, IDBeguda, CostVenda) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 1, 1),
(6, 2, 2),
(7, 3, 3),
(8, 4, 1);
-- Distro Beguda

-- Comanda Begudes
INSERT INTO Comanda_Begudes (IDBeguda, IDBar, IDClientTaula, DataHoraComanda, Quantitat) VALUES
(1, 1, 1, '2022-02-04 19:35:09', 1),
(2, 2, 1, '2022-03-19 10:46:48', 1),
(3, 3, 1, '2022-02-27 06:16:37', 1),
(4, 4, 1, '2022-03-13 20:01:11', 1),
(1, 4, 1, '2022-01-27 13:12:57', 1),
(2, 3, 1, '2022-02-07 03:47:16', 1),
(3, 2, 1, '2022-03-24 22:53:28', 1),
(4, 1, 1, '2022-02-01 05:35:20', 1);
-- Comanda Begudes

-- Ingredients Tapa (16)
INSERT INTO Ingredients_Tapa (IDIngredient, IDTapa, Quantitat) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(1, 7, 1),
(2, 8, 1),
(3, 1, 1),
(4, 2, 1),
(5, 3, 1),
(6, 4, 1),
(1, 5, 1),
(2, 6, 1),
(3, 7, 1),
(4, 8, 1);