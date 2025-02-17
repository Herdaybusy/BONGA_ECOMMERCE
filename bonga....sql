-- Product Table
Create table products (
	product_id serial primary key,
	name varchar(255) not null,
	price decimal(10,2) not null,
	category varchar(100) not null
);

-- Customers Table
Create table customers (
	customer_id serial primary key,
	name varchar(255) not null,
	email varchar(100) not null
);

-- Orders Table
Create table orders(
	order_id serial primary key,
	customer_id int not null,
	order_date date not null,
	foreign key (customer_id) references customers(customer_id)
);

-- Order_items table
Create table order_items(
	order_item_id serial primary key,
	order_id int not null,
	product_id int not null,
	quantity int not null,
	foreign key (order_id) references orders(order_id),
	foreign key (product_id) references products(product_id)
);
