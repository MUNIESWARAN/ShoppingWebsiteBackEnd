

create table product(productId varchar(20), 
productName varchar(100) not null ,
 Description varchar(500) not null, 
categoryid varchar(20),
supplierid varchar(20) ,
out_off_stock boolean not null,
 imageUrl varchar,
quantity decimal(20),
price decimal(10,2),
Constraint pk_product_productid primary key (productId),
Contraint fk_product_categoryid FOREIGN KEY(categoryid) references category(categoryid)on delete set null,
constraint fk_product_supplierid Foreign key(supplierId) references supplier(supplierId)
on delete set null
);


create table category (categoryid varchar(20))

create table supplier (supplierId varchar(20),
supplierName varchar(100) NOT NULL,
supplierContact varchar(10) NOT NULL,
supplierEmail varchar(255) NOT NULL,
supplierAddress varchar(max),
supplierImage varchar(max),
CONSTRAINT PK_SUPPLIER_SUPPLIERID PRIMARY KEY (supplierId))
 );

create table category(
categoryId varchar(20),
categoryName varchar(255) not null,
categoryDescription varchar(max) not null,
categoryImage varchar ,
constraint pk_category_categoryId primary key (categoryId),

);

insert into category (categoryId,categoryName,categoryDescription,categoryImage) values ('CAT001','Curtains','This is a curtain category','no-image.jpg');
insert into category (categoryId,categoryName,categoryDescription,categoryImage) values ('CAT002','Beds','This is a bed category','no-image.jpg');
insert into category (categoryId,categoryName,categoryDescription,categoryImage) values ('CAT003','Sofa','This is a sofa category','no-image.jpg');

insert into supplier (supplierId,supplierName,supplierConact,supplierEmail,supplierAddress,supplierImage) values ('SUP001','Sanjeev','9892000000','s@g.c','Mumbai','no-image.jpg');
insert into supplier (supplierId,supplierName,supplierConact,supplierEmail,supplierAddress,supplierImage) values ('SUP002','Lalit','7208000000','l@g.c','Rajasthan','no-image.jpg');
insert into supplier (supplierId,supplierName,supplierConact,supplierEmail,supplierAddress,supplierImage) values ('SUP003','Ajit','8898000000','a@g.c','Konkan','no-image.jpg');


insert into product (productId,productName,Description,categoryid,supplierid,out_off_stock,imageUrl,quantity,price) values ('PRD001','Curtain1','This belongs to curtain category','CAT001','SUP001',false,'curtains-001.jpg',10,5200);
insert into product (productId,productName,Description,categoryid,supplierid,out_off_stock,imageUrl,quantity,price) values ('PRD002','Bed1','This belongs to Bed category','CAT002','SUP002',false,'beds-001.jpg',23,52200);
insert into product (productId,productName,Description,categoryid,supplierid,out_off_stock,imageUrl,quantity,price) values ('PRD003','Sofa1','This belongs to sofa category','CAT003','SUP003',true,'sofa-001.jpg',0,7200);
