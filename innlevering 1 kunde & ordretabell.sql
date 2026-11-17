DROP TABLE IF EXISTS ordrer; 
DROP TABLE IF EXISTS kunder; 

CREATE TABLE kunder (
kunde_id INTEGER PRIMARY KEY,
navn TEXT NOT NULL,
by TEXT NOT NULL
) ; 

CREATE TABLE ordrer (
ordre_id INTEGER PRIMARY KEY,
kunde_id INTEGER,
produkt TEXT NOT NULL,
belop REAL NOT NULL,
FOREIGN KEY (kunde_id) REFERENCES kunder(kunde_id)  
) ;

INSERT INTO kunder (kunde_id, navn, by) VALUES (1, 'ERLING HAALAND', 'BRYNE');
INSERT INTO kunder (kunde_id, navn, by) VALUES (2, 'MAGNUS CARLSEN', 'TONSBERG');
INSERT INTO kunder (kunde_id, navn, by) VALUES (3, 'ATLE ANTONSEN', 'LILLEHAMMAR'); 
INSERT INTO kunder (kunde_id, navn, by) VALUES (4, 'NICOLAI CLEVE BROCH', 'BAERUM'); 


INSERT INTO ordrer (ordre_id, kunde_id, produkt, belop) VALUES (101, 1, 'merinoullsokker', 999.99);
INSERT INTO ordrer (ordre_id, kunde_id, produkt, belop) VALUES (102, 3, 'merinoundertøy', 1499.99); 
INSERT INTO ordrer (ordre_id, kunde_id, produkt, belop) VALUES (103, 2, 'termoskoinnlegg', 799.99); 
INSERT INTO ordrer (ordre_id, kunde_id, produkt, belop) VALUES (104, 3, 'nokkelringsau', 199.99);  

SELECT kunder.navn, ordrer.produkt, ordrer.belop
FROM kunder
LEFT JOIN ordrer ON kunder.kunde_id = ordrer.kunde_id; 

SELECT kunder.navn, ordrer.produkt, ordrer.belop
FROM kunder
INNER JOIN ordrer ON kunder.kunde_id = ordrer.kunde_id; 
