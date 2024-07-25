CREATE DATABASE product_api;
\c product_api;

CREATE TABLE utilisateur (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password text
);

CREATE TABLE role (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE user_roles (
    user_role_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES utilisateur(user_id),
    FOREIGN KEY (role_id) REFERENCES role(role_id)
);

CREATE TABLE produit(
    id_produit serial primary KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE user_produit(
    id_user_produit serial primary KEY,
    user_id INT NOT NULL,
    id_produit INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES utilisateur(user_id),
    FOREIGN KEY (id_produit) REFERENCES produit(id_produit)
);



