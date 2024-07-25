INSERT INTO utilisateur (username, email) VALUES 
('john_doe', 'john@example.com'),
('jane_smith', 'jane@example.com');

INSERT INTO utilisateur (username, email, password) VALUES 
    ('Koto', 'koto@gmail.com', 'koto');

INSERT INTO role (role_name) VALUES 
('Admin'),
('User');

INSERT INTO user_roles (user_id, role_id) VALUES 
(1, 1), -- John Doe as Admin
(2, 2); -- Jane Smith as User

INSERT INTO produit (product_name, price) VALUES
    ('P1', 10000),
    ('P2', 5000),
    ('P3', 15000);

INSERT INTO user_produit (user_id, id_produit) VALUES
    (1, 1), (1, 3),
    (2, 2), (2, 1), (2, 3);