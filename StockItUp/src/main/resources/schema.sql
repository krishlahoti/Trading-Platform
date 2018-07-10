drop table stocks if exists;

Create table stocks
(
	id int(11) NOT NULL AUTO_INCREMENT,
	tickr varchar(100) NOT NULL,
	name varchar(100) NOT NULL,
	sector varchar(100) NOT NULL,
	volume_traded int(11),
	no_of_trades int(11),
	last_trade_price int(11),
	PRIMARY KEY (id)
	
);

drop table traders if exists;

Create table traders
(
	id int(11) NOT NULL AUTO_INCREMENT,
	name varchar(100) NOT NULL,
	email varchar(100) DEFAULT NULL,
	volume_traded int(11),
	no_of_trades int(11)
	PRIMARY KEY (id)
	
);

drop table order if exists;

Create table orders
(
	id int(11) NOT NULL AUTO_INCREMENT,
	trader_id int(11),
	tickr varchar(100),
	side_order varchar(100),
	type_order varchar(100),
	price decimal(11,2),
	volume int(11),
	order_time time(),
	PRIMARY KEY(id),
	FOREIGN KEY(trader_id) references traders(id),
	FOREIGN KEY(tickr) references stock(tickr)
	);
	