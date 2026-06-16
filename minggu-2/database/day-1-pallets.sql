-- Day 1 PostgreSQL Basic
-- Database: dmx_pallet_db

CREATE TABLE pallets (
  id SERIAL PRIMARY KEY,
  code VARCHAR(50) UNIQUE NOT NULL,
  status VARCHAR(20) NOT NULL DEFAULT 'available',
  location VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO pallets (code, status, location)
VALUES ('PLT-001', 'available', 'Jakarta');

INSERT INTO pallets (code, status, location)
VALUES 
('PLT-002', 'rented', 'Bekasi'),
('PLT-003', 'maintenance', 'Tangerang'),
('PLT-004', 'available', 'Depok');

SELECT * FROM pallets;

SELECT code, status, location FROM pallets;

SELECT * FROM pallets
WHERE status = 'available';

SELECT * FROM pallets
ORDER BY id DESC;

SELECT * FROM pallets
LIMIT 2;

UPDATE pallets
SET status = 'available'
WHERE code = 'PLT-003';

SELECT * FROM pallets
WHERE code = 'PLT-003';

DELETE FROM pallets
WHERE code = 'PLT-004';

SELECT * FROM pallets;
