-- Insert regions
INSERT INTO regions (name, description) VALUES 
('North India', 'Northern states including Delhi, UP, Punjab'),
('South India', 'Southern states including Tamil Nadu, Karnataka, Kerala'),
('East India', 'Eastern states including West Bengal, Odisha'),
('West India', 'Western states including Maharashtra, Gujarat'),
('Central India', 'Central states including MP, Chhattisgarh');

-- Insert categories
INSERT INTO categories (name, description) VALUES 
('Antibiotics', 'Medicines that combat bacterial infections'),
('Pain Relief', 'Medicines for pain management'),
('Cardiovascular', 'Medicines for heart conditions'),
('Diabetes Care', 'Medicines for diabetes management'),
('Ayurvedic', 'Traditional Indian herbal medicines');

-- Insert users
INSERT INTO users (email, password, first_name, last_name, phone, user_type) VALUES 
('amit.sharma@gmail.com', 'hashed_password_1', 'Amit', 'Sharma', '9876543210', 'customer'),
('priya.patel@gmail.com', 'hashed_password_2', 'Priya', 'Patel', '8765432109', 'customer'),
('dr.singh@bluemedix.com', 'hashed_password_3', 'Rajesh', 'Singh', '7654321098', 'pharmacist'),
('admin@bluemedix.com', 'hashed_password_4', 'Admin', 'User', '6543210987', 'admin'),
('neha.gupta@gmail.com', 'hashed_password_5', 'Neha', 'Gupta', '5432109876', 'customer');

-- Insert user addresses
INSERT INTO user_addresses (user_id, address_line1, city, state, postal_code, is_default) VALUES 
(1, '123 Rajouri Garden', 'New Delhi', 'Delhi', '110027', TRUE),
(2, '456 Bandra West', 'Mumbai', 'Maharashtra', '400050', TRUE),
(3, '789 Salt Lake', 'Kolkata', 'West Bengal', '700091', TRUE),
(4, '101 Koramangala', 'Bangalore', 'Karnataka', '560034', TRUE),
(5, '202 Jubilee Hills', 'Hyderabad', 'Telangana', '500033', TRUE);

-- Insert medicines
INSERT INTO medicines (sku, name, generic_name, description, price, stock_quantity, manufacturer, category_id, requires_prescription, expiry_date) VALUES 
('MED001', 'Crocin Advance', 'Paracetamol', 'For fever and mild to moderate pain', 25.50, 1000, 'GSK', 2, FALSE, '2026-06-30'),
('MED002', 'Azithral 500', 'Azithromycin', 'Antibiotic for bacterial infections', 120.75, 500, 'Alembic', 1, TRUE, '2026-12-15'),
('MED003', 'Glycomet 500', 'Metformin', 'For type 2 diabetes', 85.30, 750, 'USV', 4, TRUE, '2027-03-20'),
('MED004', 'Ecosprin 75', 'Aspirin', 'Blood thinner for heart patients', 18.50, 900, 'USV', 3, TRUE, '2026-08-25'),
('MED005', 'Ashwagandha Churna', 'Ashwagandha', 'Ayurvedic immunity booster', 150.00, 300, 'Dabur', 5, FALSE, '2025-11-10');

-- Insert inventory records
INSERT INTO inventory (medicine_id, region_id, batch_number, quantity, purchase_date, expiry_date) VALUES 
(1, 1, 'BATCH001', 200, '2024-01-15', '2026-06-30'),
(1, 2, 'BATCH002', 300, '2024-01-20', '2026-06-30'),
(2, 1, 'BATCH003', 100, '2024-02-10', '2026-12-15'),
(2, 3, 'BATCH004', 150, '2024-02-15', '2026-12-15'),
(3, 2, 'BATCH005', 200, '2024-03-05', '2027-03-20'),
(3, 4, 'BATCH006', 250, '2024-03-10', '2027-03-20'),
(4, 3, 'BATCH007', 300, '2024-04-01', '2026-08-25'),
(4, 5, 'BATCH008', 200, '2024-04-05', '2026-08-25'),
(5, 4, 'BATCH009', 100, '2024-05-12', '2025-11-10'),
(5, 5, 'BATCH010', 200, '2024-05-15', '2025-11-10');

-- Insert orders
INSERT INTO orders (user_id, total_amount, shipping_address_id, order_status, region_id) VALUES 
(1, 255.00, 1, 'delivered', 1),
(2, 120.75, 2, 'delivered', 4),
(3, 85.30, 3, 'delivered', 3),
(4, 175.50, 4, 'delivered', 2),
(1, 370.75, 1, 'delivered', 1),
(2, 150.00, 2, 'processing', 4),
(5, 85.30, 5, 'shipped', 2),
(1, 241.50, 1, 'delivered', 1),
(3, 150.00, 3, 'delivered', 3),
(5, 120.75, 5, 'pending', 2);

-- Insert order details
INSERT INTO order_details (order_id, medicine_id, quantity, unit_price) VALUES 
(1, 1, 10, 25.50),
(2, 2, 1, 120.75),
(3, 3, 1, 85.30),
(4, 1, 3, 25.50),
(4, 4, 5, 18.50),
(5, 2, 2, 120.75),
(5, 3, 1, 85.30),
(6, 5, 1, 150.00),
(7, 3, 1, 85.30),
(8, 1, 5, 25.50),
(8, 4, 7, 18.50),
(9, 5, 1, 150.00),
(10, 2, 1, 120.75);

-- Insert payments
INSERT INTO payments (order_id, amount, payment_method, payment_status, transaction_id) VALUES 
(1, 255.00, 'upi', 'completed', 'UPI123456789'),
(2, 120.75, 'credit_card', 'completed', 'CC987654321'),
(3, 85.30, 'net_banking', 'completed', 'NB456789123'),
(4, 175.50, 'debit_card', 'completed', 'DC789123456'),
(5, 370.75, 'upi', 'completed', 'UPI234567891'),
(6, 150.00, 'credit_card', 'completed', 'CC345678912'),
(7, 85.30, 'debit_card', 'completed', 'DC456789123'),
(8, 241.50, 'upi', 'completed', 'UPI567891234'),
(9, 150.00, 'cash', 'completed', 'CASH678912345'),
(10, 120.75, 'net_banking', 'pending', 'NB789123456');
