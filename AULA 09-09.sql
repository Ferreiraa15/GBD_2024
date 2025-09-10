CREATE DATABASE IF NOT EXISTS exemplo_crud;
USE exemplo_crud;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    idade INT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into usuarios (nome, email, idade) values
('Leonardo','leo@email.com',30),
('Maria','maria@email.com',25),
('João','joao@email.com',28);


create table if not exists produtos(
	id int auto_increment primary key,
	marca varchar(100) not null,
	preco int not null,
	unidade varchar(100),
	data timestamp default current_timestamp
);

show tables;

INSERT INTO produtos (marca, preco, unidade) VALUES 
('Nike', 299.90, 'par'),
('Adidas', 279.90, 'par'),
('Samsung', 1999.00, 'unidade'),
('Apple', 5999.00, 'unidade'),
('LG', 1599.00, 'unidade'),
('Motorola', 1299.00, 'unidade'),
('Dell', 4299.00, 'unidade'),
('HP', 3899.00, 'unidade'),
('Asus', 3499.00, 'unidade'),
('Lenovo', 3199.00, 'unidade'),
('Sony', 1899.00, 'unidade'),
('Xiaomi', 1199.00, 'unidade'),
('Panasonic', 999.90, 'unidade'),
('Philips', 849.90, 'unidade'),
('Brastemp', 2299.00, 'unidade'),
('Electrolux', 2499.00, 'unidade'),
('Consul', 1899.00, 'unidade'),
('Multilaser', 149.90, 'unidade'),
('Positivo', 899.00, 'unidade'),
('Acer', 2899.00, 'unidade'),
('Canon', 1599.00, 'unidade'),
('LG', 1499.00, 'unidade'),
('Samsung', 2099.00, 'unidade'),
('Apple', 6799.00, 'unidade'),
('Nike', 249.90, 'par'),
('Adidas', 219.90, 'par'),
('Puma', 199.90, 'par'),
('Reebok', 189.90, 'par'),
('New Balance', 219.90, 'par'),
('Asics', 239.90, 'par'),
('Mizuno', 269.90, 'par'),
('Havaianas', 39.90, 'par'),
('Grendene', 29.90, 'par'),
('Ipanema', 34.90, 'par'),
('Crocs', 159.90, 'par'),
('Intelbras', 599.90, 'unidade'),
('TP-Link', 129.90, 'unidade'),
('D-Link', 139.90, 'unidade'),
('Logitech', 199.90, 'unidade'),
('Razer', 499.90, 'unidade');

select * from produtos;


select date_format(data, '%d-%m-%Y') from produtos;

select * from usuarios;

update usuarios set idade = 29 where nome = 'João';

update usuarios set nome ='Gay do Nordeste' where nome = 'Leonardo';

update usuarios set nome ='Gay do Nordeste' where nome = 'João';

update usuarios set email = 'gaydonordeste@gmail.com' where idade > 29;

update produtos set preco = preco * 3;

update produtos set preco = preco * 0.20;

update produtos set preco = preco * 1.20 where marca like '%m%';

select * from produtos where marca like '%M%';

select * from produtos;


