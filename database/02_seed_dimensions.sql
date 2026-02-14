-- Inserting Seed Data into Customers table

INSERT INTO dim_customers 
(first_name, last_name, country, gender, age, created_at)
VALUES
-- USA
('John','Smith','United States','Male',34,'2023-01-10'),
('Emma','Johnson','United States','Female',29,'2023-02-15'),
('Michael','Brown','United States','Male',41,'2023-03-12'),
('Olivia','Davis','United States','Female',25,'2023-04-18'),
('David','Wilson','United States','Male',37,'2023-05-21'),

-- UK
('Daniel','Taylor','United Kingdom','Male',32,'2023-02-01'),
('Sophia','Anderson','United Kingdom','Female',27,'2023-03-05'),
('James','Thomas','United Kingdom','Male',45,'2023-04-10'),
('Emily','Jackson','United Kingdom','Female',31,'2023-05-11'),
('Henry','White','United Kingdom','Male',38,'2023-06-01'),

-- Germany
('Lukas','Schmidt','Germany','Male',30,'2023-01-22'),
('Anna','Müller','Germany','Female',28,'2023-02-28'),
('Felix','Schneider','Germany','Male',36,'2023-03-14'),
('Lea','Fischer','Germany','Female',24,'2023-04-19'),
('Jonas','Weber','Germany','Male',39,'2023-05-09'),

-- Turkey
('Mehmet','Yilmaz','Turkey','Male',33,'2023-01-30'),
('Ayse','Kaya','Turkey','Female',26,'2023-02-18'),
('Ahmet','Demir','Turkey','Male',42,'2023-03-22'),
('Fatma','Celik','Turkey','Female',35,'2023-04-25'),
('Emre','Aydin','Turkey','Male',29,'2023-05-14'),

-- Uzbekistan
('Ali','Karimov','Uzbekistan','Male',31,'2023-01-05'),
('Malika','Karimova','Uzbekistan','Female',27,'2023-02-07'),
('Jasur','Tursunov','Uzbekistan','Male',40,'2023-03-17'),
('Zarina','Rasulova','Uzbekistan','Female',23,'2023-04-29'),
('Bekzod','Ismoilov','Uzbekistan','Male',36,'2023-05-30'),
('Madina','Tursunova','Uzbekistan','Female',28,'2023-06-02'),
('Dilshod','Rasulov','Uzbekistan','Male',44,'2023-06-10'),
('Aziza','Ismoilova','Uzbekistan','Female',26,'2023-06-15'),
('Sardor','Karimov','Uzbekistan','Male',38,'2023-07-01'),
('Shahnoza','Tursunova','Uzbekistan','Female',30,'2023-07-10');

-- Inserting Seed Data into Products table

INSERT INTO dim_products
(product_name, category, brand, product_cost)
VALUES
('iPhone 14','Electronics','Apple',700),
('Galaxy S23','Electronics','Samsung',650),
('ThinkPad X1','Electronics','Lenovo',900),
('MacBook Air','Electronics','Apple',950),
('AirPods Pro','Electronics','Apple',150),
('OLED TV 55','Electronics','LG',800),

('Running Shoes','Sportswear','Nike',60),
('Football Shoes','Sportswear','Adidas',55),
('Yoga Mat','Sportswear','Puma',20),
('Smart Watch','Electronics','Huawei',120),

('Office Chair','Furniture','Ikea',100),
('Standing Desk','Furniture','Ikea',250),
('Gaming Chair','Furniture','DXRacer',180),

('Backpack','Accessories','Nike',30),
('Leather Wallet','Accessories','Zara',25),
('Winter Jacket','Clothing','North Face',120),
('Jeans','Clothing','Levis',40),
('T-Shirt','Clothing','H&M',10),
('Sunglasses','Accessories','RayBan',75),
('Bluetooth Speaker','Electronics','Sony',90);
