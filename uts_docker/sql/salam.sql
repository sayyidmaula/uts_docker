CREATE SCHEMA SALAM;

CREATE TABLE SALAM.mahasiswas (
    nim        VARCHAR(12) PRIMARY key UNIQUE,      -- PRIMARY KEY
    nama       VARCHAR(100) NOT NULL,
    email      VARCHAR(100) not NULL,               -- UNIQUE CONSTRAINT
    umur       INT CHECK (umur >= 17)               -- CHECK CONSTRAINT
);

-- inputan yang benar
INSERT INTO SALAM.mahasiswas (nim, nama, email, umur)
VALUES ('1237050021', 'Fauzan', 'fauzan@example.com', 20);

-- inputan ketika salah karena duplikat UNIQUE CONSTRAINT
INSERT INTO SALAM.mahasiswas (nim, nama, email, umur)
VALUES ('1237050021', 'Siti Jannah', 'siti@example.com', 19);

-- inputan salah karena umur CHECK CONSTRAINT
INSERT INTO SALAM.mahasiswas (nim, nama, email, umur)
VALUES ('1237050020', 'Sayyid Maula', 'sayyid@example.com', 15);








