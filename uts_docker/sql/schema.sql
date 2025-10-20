-- Role: hanya SELECT
CREATE ROLE role_reader NOINHERIT;
GRANT SELECT ON ALL TABLES IN SCHEMA SALAM TO role_reader;

-- Role: CRUD table (INSERT, UPDATE, DELETE + SELECT)
CREATE ROLE role_crud NOINHERIT;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA SALAM TO role_crud;

-- Role: Data engineer (CREATE/MODIFY/DROP OBJECT & CRUD)
CREATE ROLE role_data_engineer NOINHERIT;
GRANT ALL PRIVILEGES ON SCHEMA SALAM TO role_data_engineer;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA SALAM TO role_data_engineer;

-- User backend_dev: CRUD semua table
CREATE USER backend_dev WITH PASSWORD 'backend123';
GRANT role_crud TO backend_dev;

-- User bi_dev: hanya bisa read
CREATE USER bi_dev WITH PASSWORD 'bidev123';
GRANT role_reader TO bi_dev;

-- User data_engineer: bisa create/drop object dan CRUD table
CREATE USER data_engineer WITH PASSWORD 'de123';
GRANT role_data_engineer TO data_engineer;

-- gunakan user backend_dev
SET ROLE backend_dev;
INSERT INTO SALAM.mahasiswas VALUES ('2025004', 'Backend Dev', 'backend@example.com', 22);
CREATE TABLE SALAM.test (id INT);

-- gunakan user bi_dev
SET ROLE bi_dev;
SELECT * FROM SALAM.mahasiswas;
INSERT INTO SALAM.mahasiswas VALUES ('2025005', 'BI Dev', 'bi@example.com', 23);

-- gunakan user data_engineer
SET ROLE data_engineer;
CREATE TABLE SALAM.test_data (id SERIAL PRIMARY KEY);
INSERT INTO SALAM.test_data DEFAULT VALUES;