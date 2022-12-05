CREATE DATABASE PROJECT_WEB;

USE PROJECT_WEB;

CREATE TABLE PRODUCT(
	ID VARCHAR(10) PRIMARY KEY,
	NAME VARCHAR(100),
	UNIT_PRICE LONG,
	IMG VARCHAR(255),
	INSURANCE INT,
	ID_CATEGORY VARCHAR(10),
	TAG VARCHAR(20),
	ID_PRODUCER VARCHAR(10),
	STATUS TINYINT,
	ADD_DATE DATE,
	QUANTITY INT,
	DETAILS TEXT
);

CREATE TABLE OPTION(
	ID VARCHAR(10) PRIMARY KEY,
	ID_PRODUCT VARCHAR(10) REFERENCES PRODUCT(ID),
	VALUE VARCHAR(50),
	PRICE LONG,
	QUANTITY INT,
	STATUS TINYINT
);

CREATE TABLE IMG_PRODUCT(
	ID VARCHAR(10) PRIMARY KEY,
	ID_PRODUCT VARCHAR(10) REFERENCES PRODUCTS(ID),
	SRC VARCHAR(255)
);

CREATE TABLE PRODUCER(
	ID VARCHAR(10) PRIMARY KEY,
	NAME VARCHAR(50),
	IMG VARCHAR(255),
	STATUS TINYINT
);

CREATE TABLE CATEGORY(
	ID VARCHAR(10) PRIMARY KEY,
	NAME VARCHAR(50),
	IMG VARCHAR(255),
	STATUS TINYINT
);

CREATE TABLE USER(
	ID VARCHAR(10) PRIMARY KEY,
	IMG VARCHAR(255),
	NAME VARCHAR(50),
	PHONE_NUMBER VARCHAR(10),
	EMAIL VARCHAR(255),
	PASSWORD VARCHAR(50),
	GENDER VARCHAR(3) DEFAULT 'UKN' CHECK( GENDER IN('NAM','NU','UKN')),
	BIRTHDAY DATE,
	STATUS TINYINT,
	ACCOUNT_DATE DATE
);

CREATE TABLE CART(
	ID_USER VARCHAR(10) REFERENCES USER(ID),
	ID_PRODUCT VARCHAR(10) REFERENCES PRODUCT(ID),
	QUANTITY INT
);
ALTER TABLE CART ADD PRIMARY KEY(ID_USER, ID_PRODUCT);

CREATE TABLE STATUS_ORDER(
	ID VARCHAR(10) PRIMARY KEY,
	NAME VARCHAR(50),
	IMG VARCHAR(255)
);

CREATE TABLE DELIVERY_ADDRESS(
	ID VARCHAR(10) PRIMARY KEY,
	ID_USER VARCHAR(10) REFERENCES USER(ID),
	NAME_RECEIVER VARCHAR(50),
	PHONE_NUMBER VARCHAR(10),
	ADDRESS VARCHAR(255)
);

CREATE TABLE ORDERS(
	ID VARCHAR(10) PRIMARY KEY,
	ID_USER VARCHAR(10) REFERENCES USER(ID),
	ID_STATUS_ORDER VARCHAR(10) REFERENCES STATUS_ORDER(ID),
	ID_DELIVERY_ADDRESS VARCHAR(10) REFERENCES DELIVERY_ADDRESS(ID),
	AMOUNT LONG,
	NOTES VARCHAR(255),
	ORDER_DATE DATE
);

CREATE TABLE ANNOUNCEMENT(
	ID VARCHAR(10) PRIMARY KEY,
	ID_ORDERS VARCHAR(10) REFERENCES ORDERS(ID),
	NAME VARCHAR(50),
	IMG VARCHAR(255),
	CONTENT VARCHAR(255),
	TIME DATETIME,
	STATUS TINYINT CHECK(STATUS IN(0,1))
);

CREATE TABLE PRODUCT_ORDER(
	ID_ORDER VARCHAR(10) REFERENCES ORDERS(ID),
	ID_PRODUCT VARCHAR(10) REFERENCES PRODUCT(ID),
	QUANTITY INT,
	AMOUNT LONG
);
ALTER TABLE PRODUCT_ORDER ADD PRIMARY KEY (ID_ORDER, ID_PRODUCT);

CREATE TABLE REVIEW(
	ID VARCHAR(10) PRIMARY KEY,
	ID_USER VARCHAR(10) REFERENCES USER(ID),
	ID_PRODUCT VARCHAR(10) REFERENCES PRODUCT(ID),
	STAR INT CHECK(STAR >0 AND STAR <=5),
	CONTENT VARCHAR(255),
	REVIEW_DATE DATE
);

CREATE TABLE VOUCHER_TYPE(
	ID VARCHAR(10) PRIMARY KEY,
	NAME VARCHAR(50),
	IMG VARCHAR(255)
);

CREATE TABLE VOUCHER(
	ID VARCHAR(10) PRIMARY KEY,
	ID_TYPE VARCHAR(10) REFERENCES VOUCHER_TYPE(ID),
	NAME VARCHAR(50),
	DISCOUNT LONG,
	MIN_PRICE LONG,
	START_DATE DATE,
	END_DATE DATE,
	STATUS TINYINT
);

CREATE TABLE USER_VOUCHER(
	ID_USER VARCHAR(10) REFERENCES USER(ID),
	ID_VOUCHER VARCHAR(10) REFERENCES VOUCHER(ID),
	QUANTITY INT
);
ALTER TABLE USER_VOUCHER ADD PRIMARY KEY (ID_USER, ID_VOUCHER);

CREATE TABLE ORDER_VOUCHER(
	ID_ORDER VARCHAR(10) REFERENCES ORDERS(ID),
ID_VOUCHER VARCHAR(10) REFERENCES VOUCHER(ID)
);
ALTER TABLE ORDER_VOUCHER ADD PRIMARY KEY (ID_ORDER, ID_VOUCHER);

CREATE TABLE ADMIN(
	ID VARCHAR(10) PRIMARY KEY,
	IMG VARCHAR(255),
	NAME VARCHAR(50),
	PHONE_NUMBER VARCHAR(10),
	EMAIL VARCHAR(255),
	PASSWORD VARCHAR(50),
	GENDER VARCHAR(3) DEFAULT 'UKN' CHECK( GENDER IN('NAM','NU','UKN')),
	BIRTHDAY DATE,
	STATUS TINYINT,
	ACCOUNT_DATE DATE
);

CREATE TABLE EDIT_CATEGORY(
	ID VARCHAR(10) PRIMARY KEY,
	ID_ADMIN VARCHAR(10) REFERENCES ADMIN(ID),
	ID_CATEGORY VARCHAR(10) REFERENCES CATEGORY(ID),
	EDIT_DETAILS VARCHAR(255) 
);

CREATE TABLE EDIT_PRODUCT(
	ID VARCHAR(10) PRIMARY KEY,
	ID_ADMIN VARCHAR(10) REFERENCES ADMIN(ID),
	ID_PRODUCT VARCHAR(10) REFERENCES PRODUCT(ID),
	EDIT_DETAILS VARCHAR(255)
);

CREATE TABLE EDIT_PRODUCER(
	ID VARCHAR(10) PRIMARY KEY,
	ID_ADMIN VARCHAR(10) REFERENCES ADMIN(ID),
	ID_PRODUCER VARCHAR(10) REFERENCES PRODUCER(ID),
	EDIT_DETAILS VARCHAR(255)
);

CREATE TABLE EDIT_IMG_PRODUCT(
	ID VARCHAR(10) PRIMARY KEY,
	ID_ADMIN VARCHAR(10) REFERENCES ADMIN(ID),
	ID_IMG_PRODUCT VARCHAR(10) REFERENCES IMG_PRODUCT(ID),
	EDIT_DETAILS VARCHAR(255)
);

CREATE TABLE EDIT_VOUCHER(
	ID VARCHAR(10) PRIMARY KEY,
	ID_ADMIN VARCHAR(10) REFERENCES ADMIN(ID),
	ID_VOUCHER VARCHAR(10) REFERENCES VOUCHER(ID),
	EDIT_DETAILS VARCHAR(255)
);

CREATE TABLE EDIT_VOUCHER_TYPE(
	ID VARCHAR(10) PRIMARY KEY,
	ID_ADMIN VARCHAR(10) REFERENCES ADMIN(ID),
	ID_VOUCHER_TYPE VARCHAR(10) REFERENCES VOUCHER_TYPE(ID),
	EDIT_DETAILS VARCHAR(255)
);

CREATE TABLE EDIT_ORDER(
	ID VARCHAR(10) PRIMARY KEY,
	ID_ADMIN VARCHAR(10) REFERENCES ADMIN(ID),
	ID_ORDER VARCHAR(10) REFERENCES ORDERS(ID),
	EDIT_DETAILS VARCHAR(255)
);

CREATE TABLE EDIT_USER_VOUCHER(
	ID VARCHAR(10) PRIMARY KEY,
	ID_ADMIN VARCHAR(10) REFERENCES ADMIN(ID),
	ID_USER_VOUCHER VARCHAR(10) REFERENCES USER_VOUCHER(ID),
	EDIT_DETAILS VARCHAR(255)
);

INSERT INTO PRODUCT VALUES ('PR1', 'Combo sạc Pisen Quick PD 20W kèm cáp Lightning', '295000', 'image/imageProduct/product1.jpg', 9, '1', 'hot', '5', -1, '2022-11-20', 281,
                            'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
                            Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
                            Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
                            Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR10', 'Apple iPhone 11 Pro Max dán Camera chống va đập S-Case', '90000', 'image/imageProduct/product10.jpg', 12, '7', 'new', '3', 0, '2022-11-20', 107,'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR11', 'Tai nghe In-Ears Devia Smart Earpods có mic', '95000', 'image/imageProduct/product11.jpg', 12, '5', 'new', '7', 2, '2022-11-20', 131, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR12', 'Tai nghe Bluetooth không dây Apple AirPods Pro 2021', '4890000', 'image/imageProduct/product12.jpg', 10, '5', 'new', '3', 0, '2022-11-20', 278, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR13', 'Tai nghe Bluetooth không dây Apple AirPods 2', '2790000', 'image/imageProduct/product13.jpg', 7, '5', 'new', '3', 2, '2022-11-20', 191, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR14', 'Miếng Dán PPF Full Viền Mặt sau cho iPhone 11 Pro Max (A20K.012)', '135000', 'image/imageProduct/product14.jpg', 11, '4', 'new', '3', 1, '2022-11-20', 198, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR15', 'Củ sạc nhanh Mophie PD 18W Type-C', '250000', 'image/imageProduct/product15.jpg', 6, '1', 'new', '8', -1, '2022-11-20', 253, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR16', 'Tai nghe không dây Havit TW967', '290000', 'image/imageProduct/product16.jpg', 12, '5', 'new', '9', 1, '2022-11-20', 170, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR17', 'Sạc dự phòng Energizer 15.000 mAh (UE15032PQ)', '550000', 'image/imageProduct/product17.jpg', 12, '2', 'new', '6', -1, '2022-11-20', 154, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR18', 'Dán PPF full màn hình cao cấp cho iPhone 11', '135000', 'image/imageProduct/product18.jpg', 10, '4', 'new', '3', -1, '2022-11-20', 225, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR19', 'Sạc nhanh PD 20W Anker Powerport III Nano (A2633)', '360000', 'image/imageProduct/product19.jpg', 10, '1', 'new', '10', -1, '2022-11-20', 158, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR2', 'Cáp Lightning tự ngắt 1.2m Pisen AL26', '180000', 'image/imageProduct/product2.jpg', 6, '1', 'hot', '5', -1, '2022-11-20', 101, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR20', 'Dán PPF nhám cao cấp full mặt sau Apple iPhone 12 Pro Max', '135000', 'image/imageProduct/product20.jpg', 8, '4', 'new', '3', 0, '2022-11-20', 257, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR21', '\"Cáp sạc Lightning tự ngắt 1,2m Pisen ZINC Intelligent Pro XD\"', '175000', 'image/imageProduct/product21.jpg', 9, '1', 'new', '5', 1, '2022-11-20', 283, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR22', 'Tai nghe chụp tai Gaming Havit HV-H2232D', '350000', 'image/imageProduct/product22.jpg', 11, '5', 'salerun', '9', 1, '2022-11-20', 235, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR23', 'Tai nghe In-Ear cổng Lightning Devia', '205000', 'image/imageProduct/product23.jpg', 10, '5', 'salerun', '7', 2, '2022-11-20', 168, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR24', 'Apple iPhone 11/XR ốp lưng Likgus Kickstand trong suốt', '157000', 'image/imageProduct/product24.jpg', 8, '3', 'salerun', '3', -1, '2022-11-20', 176, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR25', 'Củ sạc nhanh PD Pisen Quick 20W', '200000', 'image/imageProduct/product25.jpg', 11, '1', 'salerun', '5', -1, '2022-11-20', 119, NULL);
INSERT INTO PRODUCT VALUES ('PR26', 'Dán cường lực full màn hình 4D cho iPhone 7 Plus / 8 Plus', '135000', 'image/imageProduct/product26.jpg', 6, '6', 'salerun', '3', 2, '2022-11-20', 192, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR27', 'Tai nghe có dây cổng Lightning chính hãng Apple (MMTN2)', '550000', 'image/imageProduct/product27.jpg', 12, '5', 'salerun', '3', 1, '2022-11-20', 237, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR28', 'Tai nghe Bluetooth không dây SoundPEATS True Air 2', '690000', 'image/imageProduct/product28.jpg', 6, '5', 'salerun', '11', 2, '2022-11-20', 241, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR29', 'Tai nghe Bluetooth không dây SoundPEATS True Wings', '790000', 'image/imageProduct/product29.jpg', 11, '5', 'salerun', '11', 0, '2022-11-20', 177, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR3', 'Sạc dự phòng PISEN Quick 10500mAh(LED) – Ultra', '405000', 'image/imageProduct/product3.jpg', 8, '2', 'hot', '5', 1, '2022-11-20', 250, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR30', 'Cáp sạc USB-C to Lightning 1m chính hãng Apple (MM0A3FE/A)', '490000', 'image/imageProduct/product30.jpg', 8, '1', 'salerun', '3', 1, '2022-11-20', 139, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR31', 'Miếng Dán Nhám PPF Full Viền Mặt sau cho iPhone Xs Max (A16D.004)', '135000', 'image/imageProduct/product31.jpg', 10, '4', 'salerun', '3', 1, '2022-11-20', 253, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR32', 'Tai nghe Bluetooth không dây Havit GAMING TW938', '490000', 'image/imageProduct/product32.jpg', 9, '5', 'salerun', '9', 0, '2022-11-20', 143, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR33', 'Apple iPhone 11 Pro Max dán chống va đập Kingkong Full cao cấp chống nhìn trộm Đen', '270000', 'image/imageProduct/product33.jpg', 9, '6', 'salerun', '3', 1, '2022-11-20', 290, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR34', 'Tai nghe Bluetooth không dây QCY T1C', '260000', 'image/imageProduct/product34.jpg', 6, '5', 'salerun', '12', -1, '2022-11-20', 286, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR35', 'Sạc nhanh PD 20W Pisen Quick Teeny', '230000', 'image/imageProduct/product35.jpg', 6, '1', 'salerun', '5', 0, '2022-11-20', 294, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR36', 'Pin sạc dự phòng GOLF Candy 10.000 mAh (G80)', '250000', 'image/imageProduct/product36.jpg', 12, '2', 'salerun', '15', 0, '2022-11-20', 208, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR37', 'Tai nghe Bluetooth không dây Defunc True Basic', '490000', 'image/imageProduct/product37.jpg', 12, '5', 'salerun', '14', -1, '2022-11-20', 212, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR38', 'Cáp sạc Lightning 1m MFi MOPHIE', '230000', 'image/imageProduct/product38.jpg', 11, '1', 'salerun', '13', 0, '2022-11-20', 192, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR39', 'Apple iPhone 11 Pro Max ốp lưng S-Case trong', '81000', 'image/imageProduct/product39.jpg', 10, '3', 'flastsale', '3', 1, '2022-11-20', 219, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR4', 'Ốp lưng trong S-Case Chống sốc cho iPhone 7/8 Plus', '81000', 'image/imageProduct/product4.jpg', 10, '3', 'hot', '3', 2, '2022-11-20', 137, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR40', 'Tai nghe Bluetooth không dây Havit TW959', '450000', 'image/imageProduct/product40.jpg', 12, '5', 'flastsale', '9', 1, '2022-11-20', 217, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR41', 'Tai nghe Bluetooth không dây Xiaomi Earbud Basic S', '450000', 'image/imageProduct/product41.jpg', 8, '5', 'flastsale', '1', 0, '2022-11-20', 198, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR42', 'Pin dự phòng Energizer 10.000 mAh tích hợp sạc không dây 5W ', '550000', 'image/imageProduct/product42.jpg', 7, '2', 'flastsale', '3', -1, '2022-11-20', 287, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR43', 'Apple Iphone X/XS Dán Camera chống trầy S-Case', '45000', 'image/imageProduct/product43.jpg', 11, '7', 'flastsale', '3', 1, '2022-11-20', 108, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR44', 'Tai nghe Bluetooth Earbuds SoundPEATS Mac', '590000', 'image/imageProduct/product44.jpg', 12, '5', 'flastsale', '11', 0, '2022-11-20', 157, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR45', 'Combo sạc Pisen Quick PD 30W kèm cáp Lightning', '495000', 'image/imageProduct/product45.jpg', 7, '1', 'flastsale', '5', 1, '2022-11-20', 190, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR46', 'Apple iPhone 11 ốp lưng S-Case Silicone Thế Hệ Mới 2022', '81000', 'image/imageProduct/product46.jpg', 12, '3', 'flastsale', '3', 2, '2022-11-20', 139, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR47', 'Sạc Aukey PD 20W PA-B1 Pro Thế Hệ Mới 2022', '270000', 'image/imageProduct/product47.jpg', 12, '1', 'flastsale', '16', 2, '2022-11-20', 103, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR48', 'Samsung Galaxy S20 Plus dán màn hình PPF Full ', '283000', 'image/imageProduct/product48.jpg', 11, '4', 'flastsale', '2', 1, '2022-11-20', 221, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR49', 'Tai nghe Bluetooth không dây QCY T7 Thế Hệ Mới 2022', '380000', 'image/imageProduct/product49.jpg', 12, '5', 'flastsale', '12', 1, '2022-11-20', 259, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR5', 'Tai nghe Bluetooth không dây Energizer UB2609', '590000', 'image/imageProduct/product5.jpg', 6, '5', 'hot', '6', 1, '2022-11-20', 135, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR50', 'Cáp sạc Mophie Type-C to Lightning 1m', '250000', 'image/imageProduct/product50.jpg', 10, '1', 'flastsale', '8', 2, '2022-11-20', 215, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR6', 'Dán PPF iPhone 13 Pro Max full trong mặt sau', '135000', 'image/imageProduct/product6.jpg', 9, '4', 'hot', '3', 1, '2022-11-20', 106, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR7', 'Sạc dự phòng PISEN Quick High Power Box 10000mAh 20W', '590000', 'image/imageProduct/product7.jpg', 9, '2', 'new', '5', 0, '2022-11-20', 186, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR8', 'Apple iPhone 11 dán Camera chống va đập S-Case', '90000', 'image/imageProduct/product8.jpg', 12, '7', 'new', '3', 0, '2022-11-20', 197, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');
INSERT INTO PRODUCT VALUES ('PR9', 'Củ sạc nhanh PD 20W chính hãng Apple (MHJE3ZA)', '750000', 'image/imageProduct/product9.jpg', 12, '1', 'new', '3', 1, '2022-11-20', 123, 'Công nghệ sạc nhanh PD 20W hỗ trợ sạc nhanh cho các thiết bị
Thiết kế mỏng và nhỏ gọn, trọng lượng dễ dàng mang theo
Sạc đồng thời hai thiết bị thông qua công USB-A và USB-C
Chế độ sạc nhỏ giọt Trickle-Charging cho các thiết bị cần dòng sạc thấp');

INSERT INTO PRODUCER VALUES ('PRER1','Xiaomi','image/producer/producer1.png',1);
INSERT INTO PRODUCER VALUES ('PRER2','Samsung','image/producer/producer2.png',1);
INSERT INTO PRODUCER VALUES ('PRER3','Apple','image/producer/producer3.png',1);
INSERT INTO PRODUCER VALUES ('PRER4','Oppo','image/producer/producer4.png',1);
INSERT INTO PRODUCER VALUES ('PRER5','Pisen','image/producer/producer5.png',1);
INSERT INTO PRODUCER VALUES ('PRER6','Energizer','image/producer/producer6.png',1);
INSERT INTO PRODUCER VALUES ('PRER7','Devia','image/producer/producer7.png',1);
INSERT INTO PRODUCER VALUES ('PRER8','Mophie','image/producer/producer8.png',1);
INSERT INTO PRODUCER VALUES ('PRER9','Havit','image/producer/producer9.png',1);
INSERT INTO PRODUCER VALUES ('PRER10','Anker','image/producer/producer10.png',1);
INSERT INTO PRODUCER VALUES ('PRER11','SoundPEATS','image/producer/producer11.png',1);
INSERT INTO PRODUCER VALUES ('PRER12','QCY','image/producer/producer12.png',1);
INSERT INTO PRODUCER VALUES ('PRER13','Mfi','image/producer/producer13.png',1);
INSERT INTO PRODUCER VALUES ('PRER14','Defunc','image/producer/producer14.png',1);
INSERT INTO PRODUCER VALUES ('PRER15','GOLF','image/producer/producer15.png',1);
INSERT INTO PRODUCER VALUES ('PRER16','Aukey','image/producer/producer16.png',1);

INSERT INTO `category` VALUES ('1', 'Ốp lưng', 'image/category/oplung.png', 1);
INSERT INTO `category` VALUES ('10', 'Túi chống nước', 'image/category/tuichongnuoc.png', 1);
INSERT INTO `category` VALUES ('11', 'Thẻ Cáp chuyển đổi', 'image/category/sacduphong.jpg', 1);
INSERT INTO `category` VALUES ('12', 'Mic phụ', 'image/category/tainghe.png', 1);
INSERT INTO `category` VALUES ('13', 'Đèn mini', 'image/category/capsac.png', 1);
INSERT INTO `category` VALUES ('14', 'Khăn lau màn hình', 'image/category/kinhcuongluc.jpg', 1);
INSERT INTO `category` VALUES ('15', 'Miếng DDF', 'image/category/apple1.png', 1);
INSERT INTO `category` VALUES ('16', 'Dụng cụ vệ sinh', 'image/category/gaydienthoai.png', 1);
INSERT INTO `category` VALUES ('2', 'Sạc dự phòng', 'image/category/sacduphong.jpg', 1);
INSERT INTO `category` VALUES ('3', 'Tai nghe', 'image/category/tainghe.png', 1);
INSERT INTO `category` VALUES ('4', 'Dán PPF', 'image/category/apple1.png', 1);
INSERT INTO `category` VALUES ('5', 'Cap Sạc', 'image/category/capsac.png', 1);
INSERT INTO `category` VALUES ('6', 'Kính cường lực', 'image/category/kinhcuongluc.jpg', 1);
INSERT INTO `category` VALUES ('7', 'Bút cảm ứng', 'image/category/tuichongnuoc.png', 1);
INSERT INTO `category` VALUES ('8', 'Phụ kiện apple', 'image/category/apple1.png', 1);
INSERT INTO `category` VALUES ('9', 'Giá đỡ điện thoại', 'image/category/gaydienthoai.png', 1);

INSERT INTO ADMIN VALUES ('ADM1','image/user/user1.png','Nguyễn Minh Thuận','0359681217','20130426@st.hcmuaf.edu.vn','123456','nam','1997/11/20',1,'2022/11/20');
INSERT INTO ADMIN VALUES ('ADM2','image/user/user2.png','Huỳnh Quốc Nam','0111111111','20130074@st.hcmuaf.edu.vn','123456','nam','1997/11/20',1,'2022/11/20');
INSERT INTO ADMIN VALUES ('ADM3','image/user/user3.png','Đỗ Phú Nguyên Chương','0222222222','20130212@st.hcmuaf.edu.vn','123456','nu','1997/11/20',1,'2022/11/20');

INSERT INTO USER VALUES ('U1','image/user/user1.png','Nguyen Van 1','0723074534','DKrUfs5TMg7hUqK@gmail.com','AFBAyKCn2aN1PB9','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U2','image/user/user2.png','Nguyen Van 2','0771742777','NaOiaANqQzdrsxU@gmail.com','oDhI2juyEICBeZq','nam','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('U3','image/user/user3.png','Nguyen Van 3','0774216640','ca0MM21xJdkjuhn@gmail.com','2AdLYEpmPUyGKHR','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U4','image/user/user4.png','Nguyen Van 4','0788326256','ABUXofGl5kGh00F@gmail.com','Foz8POJrB5C0h74','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U5','image/user/user5.png','Nguyen Van 5','0700132505','emYKuwURCxm0lno@gmail.com','0XCx4S08z4HnGou','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U6','image/user/user6.png','Nguyen Van 6','0744404204','mQFIJI7Z0R0RoFb@gmail.com','XG6uobrSY4VUD1p','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U7','image/user/user7.png','Nguyen Van 7','0734887417','cNbFxNCld0Ycitm@gmail.com','ka8VBoOcNNXsDck','nam','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('U8','image/user/user8.png','Nguyen Van 8','0711766627','W3yftyyLdWKz5WL@gmail.com','nJg7ut7PHqKurTT','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U9','image/user/user9.png','Nguyen Van 9','0740608247','WAAJkXq01VQubLY@gmail.com','6aR8cy2mfGl8XC1','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U10','image/user/user10.png','Nguyen Van 10','0753785443','QayM4dDXlGP9f6O@gmail.com','qsomXOS0vliBqVu','nam','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('U11','image/user/user11.png','Nguyen Van 11','0785513515','qOv5WMNVucRRlKl@gmail.com','jTkNlAbrepkgh4k','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U12','image/user/user12.png','Nguyen Van 12','0782501250','9SAL8iFQdo5XsdF@gmail.com','eOvdMX3ZzTFar1k','nu','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('U13','image/user/user13.png','Nguyen Van 13','0726281424','fCVp8eSO96TfVOe@gmail.com','6CVS5qdY22IbGFW','nu','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('U14','image/user/user14.png','Nguyen Van 14','0765575635','57Gh6tvUiRXhRK6@gmail.com','FXuOCpur57LvBsi','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U15','image/user/user15.png','Nguyen Van 15','0756123882','KrcidAolqTWWYrG@gmail.com','fCCwaw3OqqLtTom','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U16','image/user/user16.png','Nguyen Van 16','0775427081','1TuJrEl9Vr6Phjv@gmail.com','YvcIwMtYTLnaSUv','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U17','image/user/user17.png','Nguyen Van 17','0774564818','iUaHcf29FFsbXD3@gmail.com','MgJPGtFrMcFDsf1','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U18','image/user/user18.png','Nguyen Van 18','0778352487','UOMvMHyQsefU0yA@gmail.com','6N6xskYlNclhf2k','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U19','image/user/user19.png','Nguyen Van 19','0718086684','FvzXJBCEz29XWTP@gmail.com','aVAXCJWxyqi7xiE','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U20','image/user/user20.png','Nguyen Van 20','0721478750','QVRUdp0e3AXI6Ux@gmail.com','Cf8Obr1L4kjhcGy','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U21','image/user/user21.png','Nguyen Van 21','0711630551','95i9cxwMLNkWVCU@gmail.com','ERJ69VPEOolfMAN','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U22','image/user/user22.png','Nguyen Van 22','0765572873','HugKYVBhJArHHxj@gmail.com','kMUxZWx9OFID95N','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U23','image/user/user23.png','Nguyen Van 23','0722031061','MFF75daYpnHc3Tr@gmail.com','zW0ZB0OvFx4PIYO','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U24','image/user/user24.png','Nguyen Van 24','0745811534','pXqumQF9T6Jto1x@gmail.com','xQMfkiQt75S8wZ6','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U25','image/user/user25.png','Nguyen Van 25','0706550145','6gbE6huPC3vM88t@gmail.com','g6TTLQGc5p9Mvqz','nu','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('U26','image/user/user26.png','Nguyen Van 26','0780146613','qgJQSfFIMHHmKUN@gmail.com','OyMTCgNyxYeOQFf','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U27','image/user/user27.png','Nguyen Van 27','0702406604','dqUyqNSe0R7Rr3R@gmail.com','FWXJZEEXTTfOL1S','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U28','image/user/user28.png','Nguyen Van 28','0736586776','Pkd7GEh69utMAcQ@gmail.com','N32LU7sA9nESRdD','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U29','image/user/user29.png','Nguyen Van 29','0716375326','8eJaiARtl2cJBGv@gmail.com','hf4ir7UL4hV6oyD','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U30','image/user/user30.png','Nguyen Van 30','0751706831','SSix6i65bCHYGVO@gmail.com','9STn4a4ZOxoEWqu','nu','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('U31','image/user/user31.png','Nguyen Van 31','0755875643','akrjnwrWo4Dqiwb@gmail.com','XqZGv0OyV7feRhh','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U32','image/user/user32.png','Nguyen Van 32','0743048152','wpuTaLMHVfBUMhS@gmail.com','HJStfCFtdoVYKvF','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U33','image/user/user33.png','Nguyen Van 33','0767648570','EuB0PQ1xp9ItWhH@gmail.com','e59PhBzYGHpqRgj','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U34','image/user/user34.png','Nguyen Van 34','0766776071','bdREn06JWNi0a84@gmail.com','EgfFZ2QneaS1sMo','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U35','image/user/user35.png','Nguyen Van 35','0720723188','14f6GdpHP5C0nCD@gmail.com','BGZMLSA3YpUilMf','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U36','image/user/user36.png','Nguyen Van 36','0763216704','8ZWCwu9Hw6zMe9k@gmail.com','kQQtSTPDFIvir7O','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U37','image/user/user37.png','Nguyen Van 37','0713826012','kRaGzr0fZjdnXwf@gmail.com','0as8KYv2hIVTW4N','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U38','image/user/user38.png','Nguyen Van 38','0740117840','CUKV4Fc4MJx6S7U@gmail.com','rSgq85R7GRW0Tw5','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U39','image/user/user39.png','Nguyen Van 39','0775730417','LEoHT4pAjvY7BOC@gmail.com','4ZP8hzmiArQGBGk','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U40','image/user/user40.png','Nguyen Van 40','0767527033','E9kKhfe2QwQEpSN@gmail.com','jYMa5jFFyaKvRsx','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U41','image/user/user41.png','Nguyen Van 41','0773428352','00wBhY40CMu6dy5@gmail.com','dccIj1MaMfVG4yg','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U42','image/user/user42.png','Nguyen Van 42','0772252144','Nyi070DZDj71yYn@gmail.com','C9F4m56R4Nte3uI','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U43','image/user/user43.png','Nguyen Van 43','0743823460','ZwMiCSy57NMEGy1@gmail.com','ppXPMBh0a0S95Zb','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U44','image/user/user44.png','Nguyen Van 44','0727128602','p2RVkJtpBKHxE3p@gmail.com','SsdV9CHIXcDzFzU','nu','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('U45','image/user/user45.png','Nguyen Van 45','0727318650','WxQvdAMjfL7M6WM@gmail.com','iT6b90bRsU1kAAC','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U46','image/user/user46.png','Nguyen Van 46','0755520172','SX6LSYj08IunQOO@gmail.com','qHu8BIy4Si1ZDS4','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U47','image/user/user47.png','Nguyen Van 47','0781174624','XH2FvL2qPJZLSBe@gmail.com','6PPqN27EtTt1Wmo','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U48','image/user/user48.png','Nguyen Van 48','0753683271','hPL3ECkhs0JBDpz@gmail.com','BCXaHstteyem7fd','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('U49','image/user/user49.png','Nguyen Van 49','0721374326','T4jm3hECzi2aVtn@gmail.com','k7J0I02CfIfrLmD','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('U50','image/user/user50.png','Nguyen Van 50','0715688187','qm6ZmaoS7bg87iv@gmail.com','ZpxMSG0prcUuBtf','nu','1997/11/20',-1,'2022/11/20');

INSERT INTO VOUCHER_TYPE VALUES ('1','Miễn phí vận chuyển','image/voucher_type/free_ship.png');
INSERT INTO VOUCHER_TYPE VALUES ('2','Giảm giá','image/voucher_type/discount.png');


INSERT INTO STATUS_ORDER VALUES ('SO1', 'Chờ xác nhận','image/status_oder/waiting.png');
INSERT INTO STATUS_ORDER VALUES ('SO2', 'Chờ lấy hàng','image/status_oder/getpackage.png');
INSERT INTO STATUS_ORDER VALUES ('SO3', 'Đang giao','image/status_oder/shipping.png');
INSERT INTO STATUS_ORDER VALUES ('SO4', 'Đã giao','image/status_oder/completed.png');
INSERT INTO STATUS_ORDER VALUES ('SO5', 'Đã hủy','image/status_oder/canceld.png');

INSERT INTO VOUCHER VALUES ('VC1','2','Giảm giá 40k',40000,600000,'2022/11/20','2023/1/24',1);
INSERT INTO VOUCHER VALUES ('VC2','2','Giảm giá 30k',30000,200000,'2022/11/20','2023/1/30',1);
INSERT INTO VOUCHER VALUES ('VC3','2','Giảm giá 20k',20000,600000,'2022/11/20','2023/1/24',1);
INSERT INTO VOUCHER VALUES ('VC4','1','Miễn phí vận chuyển',50000,800000,'2022/11/20','2023/1/19',1);
INSERT INTO VOUCHER VALUES ('VC5','1','Miễn phí vận chuyển',10000,1000000,'2022/11/20','2023/1/10',1);
INSERT INTO VOUCHER VALUES ('VC6','1','Miễn phí vận chuyển',10000,600000,'2022/11/20','2023/1/19',1);
INSERT INTO VOUCHER VALUES ('VC7','2','Giảm giá 30k',30000,700000,'2022/11/20','2023/1/25',1);
INSERT INTO VOUCHER VALUES ('VC8','2','Giảm giá 20k',20000,100000,'2022/11/20','2023/1/4',1);
INSERT INTO VOUCHER VALUES ('VC9','2','Giảm giá 40k',40000,300000,'2022/11/20','2023/1/20',1);
INSERT INTO VOUCHER VALUES ('VC10','1','Miễn phí vận chuyển',50000,400000,'2022/11/20','2023/1/26',1);
INSERT INTO VOUCHER VALUES ('VC11','1','Miễn phí vận chuyển',10000,900000,'2022/11/20','2023/1/31',1);
INSERT INTO VOUCHER VALUES ('VC12','1','Miễn phí vận chuyển',30000,700000,'2022/11/20','2023/1/6',1);
INSERT INTO VOUCHER VALUES ('VC13','1','Miễn phí vận chuyển',30000,700000,'2022/11/20','2023/1/13',1);
INSERT INTO VOUCHER VALUES ('VC14','1','Miễn phí vận chuyển',30000,200000,'2022/11/20','2023/1/21',1);
INSERT INTO VOUCHER VALUES ('VC15','1','Miễn phí vận chuyển',10000,600000,'2022/11/20','2023/1/27',1);
INSERT INTO VOUCHER VALUES ('VC16','1','Miễn phí vận chuyển',50000,200000,'2022/11/20','2023/1/23',1);
INSERT INTO VOUCHER VALUES ('VC17','2','Giảm giá 50k',50000,900000,'2022/11/20','2023/1/30',1);
INSERT INTO VOUCHER VALUES ('VC18','1','Miễn phí vận chuyển',10000,500000,'2022/11/20','2023/1/28',1);
INSERT INTO VOUCHER VALUES ('VC21','2','Giảm giá 105K',105,210000,'2022/11/20','2023/1/3',1);
INSERT INTO VOUCHER VALUES ('VC22','2','Giảm giá 110K',110,220000,'2022/11/20','2023/1/3',1);
INSERT INTO VOUCHER VALUES ('VC23','2','Giảm giá 115K',115,230000,'2022/11/20','2023/1/3',1);
INSERT INTO VOUCHER VALUES ('VC24','2','Giảm giá 120K',120,240000,'2022/11/20','2023/1/3',1);
INSERT INTO VOUCHER VALUES ('VC25','2','Giảm giá 125K',125,250000,'2022/11/20','2023/1/3',1);
INSERT INTO VOUCHER VALUES ('VC26','2','Giảm giá 130K',130,260000,'2022/11/20','2023/1/3',1);
INSERT INTO VOUCHER VALUES ('VC27','2','Giảm giá 135K',135,270000,'2022/11/20','2023/1/3',1);
INSERT INTO VOUCHER VALUES ('VC28','2','Giảm giá 140K',140,280000,'2022/11/20','2023/1/3',1);
INSERT INTO VOUCHER VALUES ('VC29','2','Giảm giá 145K',145,290000,'2022/11/20','2023/1/3',1);
INSERT INTO VOUCHER VALUES ('VC30','2','Giảm giá 150K',150,300000,'2022/11/20','2023/1/3',1);



INSERT INTO ORDERS VALUES ('ORDER1','U1','SO1','ADRESS1',200000,'none','2022/12/22');
INSERT INTO ORDERS VALUES ('ORDER2','U2','SO1','ADRESS2',200000,'none','2022/11/22');
INSERT INTO ORDERS VALUES ('ORDER3','U3','SO1','ADRESS3',200000,'none','2022/02/22');
INSERT INTO ORDERS VALUES ('ORDER4','U4','SO1','ADRESS4',200000,'none','2022/12/12');
INSERT INTO ORDERS VALUES ('ORDER5','U5','SO1','ADRESS5',200000,'none','2022/12/21');
INSERT INTO ORDERS VALUES ('ORDER6','U6','SO1','ADRESS6',200000,'none','2022/12/03');
INSERT INTO ORDERS VALUES ('ORDER7','U7','SO1','ADRESS7',200000,'none','2022/08/22');
INSERT INTO ORDERS VALUES ('ORDER8','U8','SO1','ADRESS8',200000,'none','2022/05/22');
INSERT INTO ORDERS VALUES ('ORDER9','U9','SO1','ADRESS9',200000,'none','2022/07/22');
INSERT INTO ORDERS VALUES ('ORDER10','U10','SO1','ADRESS10',200000,'none','2022/05/22');
INSERT INTO ORDERS VALUES ('ORDER11','U11','SO1','ADRESS11',200000,'none','2022/11/24');
INSERT INTO ORDERS VALUES ('ORDER12','U12','SO1','ADRESS12',200000,'none','2022/02/22');
INSERT INTO ORDERS VALUES ('ORDER13','U13','SO1','ADRESS13',200000,'none','2022/03/22');
INSERT INTO ORDERS VALUES ('ORDER14','U14','SO1','ADRESS14',200000,'none','2022/05/22');
INSERT INTO ORDERS VALUES ('ORDER15','U15','SO1','ADRESS15',200000,'none','2022/07/22');
INSERT INTO ORDERS VALUES ('ORDER16','U16','SO1','ADRESS16',200000,'none','2022/05/22');
INSERT INTO ORDERS VALUES ('ORDER17','U17','SO1','ADRESS17',200000,'none','2022/06/22');
INSERT INTO ORDERS VALUES ('ORDER18','U18','SO1','ADRESS18',200000,'none','2022/06/22');
INSERT INTO ORDERS VALUES ('ORDER19','U19','SO1','ADRESS19',200000,'none','2022/08/22');
INSERT INTO ORDERS VALUES ('ORDER20','U20','SO1','ADRESS20',200000,'none','2022/09/22');
INSERT INTO ORDERS VALUES ('ORDER21','U21','SO1','ADRESS21',200000,'none','2022/10/22');
INSERT INTO ORDERS VALUES ('ORDER22','U22','SO1','ADRESS22',200000,'none','2022/12/12');
INSERT INTO ORDERS VALUES ('ORDER23','U23','SO1','ADRESS23',200000,'none','2022/10/13');
INSERT INTO ORDERS VALUES ('ORDER24','U24','SO1','ADRESS24',200000,'none','2022/12/16');
INSERT INTO ORDERS VALUES ('ORDER25','U25','SO3','ADRESS25',300000,'none','2022/12/14');
INSERT INTO ORDERS VALUES ('ORDER26','U26','SO3','ADRESS26',300000,'none','2022/12/17');
INSERT INTO ORDERS VALUES ('ORDER27','U27','SO3','ADRESS27',300000,'none','2022/12/18');
INSERT INTO ORDERS VALUES ('ORDER28','U28','SO3','ADRESS28',300000,'none','2022/12/13');
INSERT INTO ORDERS VALUES ('ORDER29','U29','SO3','ADRESS29',300000,'none','2022/12/17');
INSERT INTO ORDERS VALUES ('ORDER30','U30','SO3','ADRESS30',300000,'none','2022/12/19');
INSERT INTO ORDERS VALUES ('ORDER31','U31','SO3','ADRESS31',300000,'none','2022/12/26');
INSERT INTO ORDERS VALUES ('ORDER32','U32','SO3','ADRESS32',300000,'none','2022/12/28');
INSERT INTO ORDERS VALUES ('ORDER33','U33','SO3','ADRESS33',300000,'none','2022/12/29');
INSERT INTO ORDERS VALUES ('ORDER34','U34','SO3','ADRESS34',300000,'none','2022/12/23');
INSERT INTO ORDERS VALUES ('ORDER35','U35','SO2','ADRESS35',400000,'none','2022/12/25');
INSERT INTO ORDERS VALUES ('ORDER36','U36','SO2','ADRESS36',400000,'none','2022/12/27');
INSERT INTO ORDERS VALUES ('ORDER37','U37','SO2','ADRESS37',400000,'none','2022/12/25');
INSERT INTO ORDERS VALUES ('ORDER38','U38','SO2','ADRESS38',400000,'none','2022/12/29');
INSERT INTO ORDERS VALUES ('ORDER39','U39','SO2','ADRESS39',400000,'none','2022/12/26');
INSERT INTO ORDERS VALUES ('ORDER40','U40','SO2','ADRESS40',400000,'none','2022/12/21');
INSERT INTO ORDERS VALUES ('ORDER41','U41','SO2','ADRESS41',400000,'none','2022/10/22');
INSERT INTO ORDERS VALUES ('ORDER42','U42','SO2','ADRESS42',400000,'none','2022/03/22');
INSERT INTO ORDERS VALUES ('ORDER43','U43','SO2','ADRESS43',400000,'none','2022/04/22');
INSERT INTO ORDERS VALUES ('ORDER44','U44','SO2','ADRESS44',400000,'none','2022/05/22');
INSERT INTO ORDERS VALUES ('ORDER45','U45','SO4','ADRESS45',500000,'none','2022/06/22');
INSERT INTO ORDERS VALUES ('ORDER46','U46','SO4','ADRESS46',500000,'none','2022/07/22');
INSERT INTO ORDERS VALUES ('ORDER47','U47','SO4','ADRESS47',500000,'none','2022/08/22');
INSERT INTO ORDERS VALUES ('ORDER48','U48','SO4','ADRESS48',500000,'none','2022/09/22');
INSERT INTO ORDERS VALUES ('ORDER49','U49','SO4','ADRESS49',500000,'none','2022/01/22');
INSERT INTO ORDERS VALUES ('ORDER50','U50','SO4','ADRESS50',500000,'none','2022/12/22');


INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS1','U1','HUỲNH QUỐC NAM 1','099889999','1 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS2','U2','HUỲNH QUỐC NAM 2','099889999','2 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS3','U3','HUỲNH QUỐC NAM 3','099889999','3 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS4','U4','HUỲNH QUỐC NAM 4','099889999','4 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS5','U5','HUỲNH QUỐC NAM 5','099889999','5 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS6','U6','HUỲNH QUỐC NAM 6','099889999','6 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS7','U7','HUỲNH QUỐC NAM 7','099889999','7 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS8','U8','HUỲNH QUỐC NAM 8','099889999','8 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS9','U9','HUỲNH QUỐC NAM 9','099889999','9 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS10','U10','HUỲNH QUỐC NAM 10','099889999','10 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS11','U11','HUỲNH QUỐC NAM 11','099889999','11 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS12','U12','HUỲNH QUỐC NAM 12','099889999','12 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS13','U13','HUỲNH QUỐC NAM 13','099889999','13 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS14','U14','HUỲNH QUỐC NAM 14','099889999','14 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS15','U15','HUỲNH QUỐC NAM 15','099889999','15 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS16','U16','HUỲNH QUỐC NAM 16','099889999','16 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS17','U17','HUỲNH QUỐC NAM 17','099889999','17 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS18','U18','HUỲNH QUỐC NAM 18','099889999','18 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS19','U19','HUỲNH QUỐC NAM 19','099889999','19 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS20','U20','HUỲNH QUỐC NAM 20','099889999','20 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS21','U21','HUỲNH QUỐC NAM 21','099889999','21 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS22','U22','HUỲNH QUỐC NAM 22','099889999','22 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS23','U23','HUỲNH QUỐC NAM 23','099889999','23 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS24','U24','HUỲNH QUỐC NAM 24','099889999','24 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS25','U25','HUỲNH QUỐC NAM 25','099889999','25 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS26','U26','HUỲNH QUỐC NAM 26','099889945','26 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS27','U27','HUỲNH QUỐC NAM 27','099889643','27 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS28','U28','HUỲNH QUỐC NAM 28','099889678','28 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS29','U29','HUỲNH QUỐC NAM 29','099889550','29 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS30','U30','HUỲNH QUỐC NAM 30','099889999','30 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS31','U31','HUỲNH QUỐC NAM 31','099889786','31 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS32','U32','HUỲNH QUỐC NAM 32','099889868','32 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS33','U33','HUỲNH QUỐC NAM 33','099889976','33 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS34','U34','HUỲNH QUỐC NAM 34','099889645','34 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS35','U35','HUỲNH QUỐC NAM 35','099889345','35 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS36','U36','HUỲNH QUỐC NAM 36','099889234','36 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS37','U37','HUỲNH QUỐC NAM 37','099884343','37 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS38','U38','HUỲNH QUỐC NAM 38','099889634','38 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS39','U39','HUỲNH QUỐC NAM 39','099889333','39 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS40','U40','HUỲNH QUỐC NAM 40','099889666','40 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS41','U41','HUỲNH QUỐC NAM 41','099889777','41 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS42','U42','HUỲNH QUỐC NAM 42','099888888','42 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS43','U43','HUỲNH QUỐC NAM 43','099889666','43 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS44','U44','HUỲNH QUỐC NAM 44','099882222','44 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS45','U45','HUỲNH QUỐC NAM 45','099889111','45 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS46','U46','HUỲNH QUỐC NAM 46','099889222','46 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS47','U47','HUỲNH QUỐC NAM 47','099889999','47 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS48','U48','HUỲNH QUỐC NAM 48','099889944','48 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS49','U49','HUỲNH QUỐC NAM 49','099889999','49 Linh Trung, Thu Duc , HCM');
INSERT INTO DELIVERY_ADDRESS VALUES ('ADRESS50','U50','HUỲNH QUỐC NAM 50','099889993','50 Linh Trung, Thu Duc , HCM');



INSERT INTO ANNOUNCEMENT VALUES ('ANM0','ORDER44','Thông báo 0','image/imageProduct/product33.jpg','Đơn hàng của bạn đã được xác nhận','2021-12-10 18:37:46',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM1','ORDER12','Thông báo 1','image/imageProduct/product9.jpg','Đơn hàng của bạn đã được hủy','2021-4-9 8:44:41',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM2','ORDER36','Thông báo 2','image/imageProduct/product29.jpg','Đơn hàng của bạn đã được hủy','2021-9-23 17:14:2',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM3','ORDER34','Thông báo 3','image/imageProduct/product2.jpg','Đơn hàng của bạn đã giao thành công','2022-5-10 15:33:14',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM4','ORDER40','Thông báo 4','image/imageProduct/product44.jpg','Đơn hàng của bạn đã được hủy','2022-7-24 19:0:51',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM5','ORDER26','Thông báo 5','image/imageProduct/product20.jpg','Đơn hàng của bạn đã được hủy','2021-6-24 7:1:33',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM6','ORDER1','Thông báo 6','image/imageProduct/product18.jpg','Đơn hàng của bạn đang giao đến bạn','2022-5-9 11:29:13',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM7','ORDER11','Thông báo 7','image/imageProduct/product43.jpg','Đơn hàng của bạn đã giao thành công','2022-6-19 21:28:54',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM8','ORDER9','Thông báo 8','image/imageProduct/product19.jpg','Đơn hàng của bạn đã được hủy','2021-8-18 3:18:10',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM9','ORDER19','Thông báo 9','image/imageProduct/product6.jpg','Đơn hàng của bạn đang giao đến bạn','2022-7-18 22:24:45',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM10','ORDER37','Thông báo 10','image/imageProduct/product28.jpg','Đơn hàng của bạn đã giao thành công','2022-2-11 2:49:19',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM11','ORDER34','Thông báo 11','image/imageProduct/product30.jpg','Đơn hàng của bạn đang giao đến bạn','2021-1-10 5:18:53',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM12','ORDER14','Thông báo 12','image/imageProduct/product1.jpg','Đơn hàng của bạn đã giao thành công','2021-8-13 17:0:53',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM13','ORDER13','Thông báo 13','image/imageProduct/product17.jpg','Đơn hàng của bạn đã giao thành công','2022-5-5 1:36:7',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM14','ORDER0','Thông báo 14','image/imageProduct/product28.jpg','Đơn hàng của bạn đang giao đến bạn','2022-4-11 17:54:24',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM15','ORDER0','Thông báo 15','image/imageProduct/product29.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2022-5-24 7:47:52',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM16','ORDER8','Thông báo 16','image/imageProduct/product22.jpg','Đơn hàng của bạn đã được hủy','2021-6-29 20:41:54',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM17','ORDER28','Thông báo 17','image/imageProduct/product15.jpg','Đơn hàng của bạn đã được xác nhận','2022-10-1 19:37:7',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM18','ORDER15','Thông báo 18','image/imageProduct/product29.jpg','Đơn hàng của bạn đang giao đến bạn','2022-9-2 22:59:41',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM19','ORDER9','Thông báo 19','image/imageProduct/product5.jpg','Đơn hàng của bạn đã giao thành công','2021-10-4 22:11:46',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM20','ORDER6','Thông báo 20','image/imageProduct/product8.jpg','Đơn hàng của bạn đã giao thành công','2021-9-12 16:35:22',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM21','ORDER14','Thông báo 21','image/imageProduct/product9.jpg','Đơn hàng của bạn đã giao thành công','2022-7-5 13:36:58',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM22','ORDER14','Thông báo 22','image/imageProduct/product42.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2022-8-20 9:28:19',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM23','ORDER21','Thông báo 23','image/imageProduct/product16.jpg','Đơn hàng của bạn đang giao đến bạn','2021-8-18 6:53:41',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM24','ORDER23','Thông báo 24','image/imageProduct/product40.jpg','Đơn hàng của bạn đã được xác nhận','2021-11-22 9:25:5',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM25','ORDER21','Thông báo 25','image/imageProduct/product37.jpg','Đơn hàng của bạn đã giao thành công','2021-7-3 15:57:20',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM26','ORDER22','Thông báo 26','image/imageProduct/product1.jpg','Đơn hàng của bạn đã được hủy','2021-7-30 3:24:0',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM27','ORDER0','Thông báo 27','image/imageProduct/product0.jpg','Đơn hàng của bạn đã giao thành công','2022-4-2 12:5:7',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM28','ORDER47','Thông báo 28','image/imageProduct/product49.jpg','Đơn hàng của bạn đang giao đến bạn','2022-8-5 6:0:55',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM29','ORDER23','Thông báo 29','image/imageProduct/product31.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2022-10-24 12:30:38',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM30','ORDER0','Thông báo 30','image/imageProduct/product27.jpg','Đơn hàng của bạn đang giao đến bạn','2021-11-2 0:38:24',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM31','ORDER39','Thông báo 31','image/imageProduct/product16.jpg','Đơn hàng của bạn đã giao thành công','2021-3-17 1:4:34',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM32','ORDER33','Thông báo 32','image/imageProduct/product0.jpg','Đơn hàng của bạn đã giao thành công','2022-4-20 23:52:1',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM33','ORDER46','Thông báo 33','image/imageProduct/product37.jpg','Đơn hàng của bạn đã được hủy','2022-6-12 10:27:16',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM34','ORDER43','Thông báo 34','image/imageProduct/product24.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2021-3-15 21:46:41',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM35','ORDER3','Thông báo 35','image/imageProduct/product8.jpg','Đơn hàng của bạn đã được xác nhận','2021-9-10 7:36:58',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM36','ORDER11','Thông báo 36','image/imageProduct/product12.jpg','Đơn hàng của bạn đã được hủy','2022-8-7 23:18:21',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM37','ORDER29','Thông báo 37','image/imageProduct/product30.jpg','Đơn hàng của bạn đã được xác nhận','2021-8-4 0:25:52',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM38','ORDER5','Thông báo 38','image/imageProduct/product26.jpg','Đơn hàng của bạn đã được hủy','2022-12-5 17:58:22',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM39','ORDER10','Thông báo 39','image/imageProduct/product22.jpg','Đơn hàng của bạn đã được hủy','2021-3-29 1:6:6',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM40','ORDER43','Thông báo 40','image/imageProduct/product15.jpg','Đơn hàng của bạn đã giao thành công','2021-8-7 2:57:41',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM41','ORDER32','Thông báo 41','image/imageProduct/product0.jpg','Đơn hàng của bạn đã được hủy','2022-7-6 14:33:29',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM42','ORDER45','Thông báo 42','image/imageProduct/product24.jpg','Đơn hàng của bạn đã giao thành công','2022-6-30 15:2:51',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM43','ORDER3','Thông báo 43','image/imageProduct/product48.jpg','Đơn hàng của bạn đã được hủy','2022-8-27 6:22:59',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM44','ORDER17','Thông báo 44','image/imageProduct/product5.jpg','Đơn hàng của bạn đã giao thành công','2021-4-1 23:2:12',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM45','ORDER7','Thông báo 45','image/imageProduct/product18.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2021-3-4 23:28:9',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM46','ORDER45','Thông báo 46','image/imageProduct/product31.jpg','Đơn hàng của bạn đã được xác nhận','2021-2-27 11:43:26',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM47','ORDER2','Thông báo 47','image/imageProduct/product30.jpg','Đơn hàng của bạn đã giao thành công','2021-3-6 15:35:3',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM48','ORDER2','Thông báo 48','image/imageProduct/product9.jpg','Đơn hàng của bạn đang giao đến bạn','2022-2-26 22:14:10',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM49','ORDER39','Thông báo 49','image/imageProduct/product44.jpg','Đơn hàng của bạn đã giao thành công','2021-4-8 17:14:47',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM50','ORDER39','Thông báo 50','image/imageProduct/product3.jpg','Đơn hàng của bạn đã được hủy','2022-10-2 0:33:12',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM51','ORDER16','Thông báo 51','image/imageProduct/product22.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2021-6-6 12:26:39',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM52','ORDER11','Thông báo 52','image/imageProduct/product15.jpg','Đơn hàng của bạn đã được xác nhận','2022-1-24 11:48:17',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM53','ORDER8','Thông báo 53','image/imageProduct/product26.jpg','Đơn hàng của bạn đang giao đến bạn','2021-8-15 20:57:24',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM54','ORDER35','Thông báo 54','image/imageProduct/product33.jpg','Đơn hàng của bạn đã được hủy','2022-7-20 0:38:10',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM55','ORDER29','Thông báo 55','image/imageProduct/product19.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2021-12-8 2:36:21',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM56','ORDER15','Thông báo 56','image/imageProduct/product12.jpg','Đơn hàng của bạn đã được hủy','2021-9-23 1:6:2',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM57','ORDER24','Thông báo 57','image/imageProduct/product42.jpg','Đơn hàng của bạn đã được xác nhận','2021-3-11 22:32:25',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM58','ORDER13','Thông báo 58','image/imageProduct/product18.jpg','Đơn hàng của bạn đã giao thành công','2022-9-13 11:12:52',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM59','ORDER18','Thông báo 59','image/imageProduct/product28.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2021-4-18 23:53:47',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM60','ORDER40','Thông báo 60','image/imageProduct/product33.jpg','Đơn hàng của bạn đang giao đến bạn','2022-8-22 16:10:11',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM61','ORDER33','Thông báo 61','image/imageProduct/product5.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2022-2-22 21:50:35',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM62','ORDER45','Thông báo 62','image/imageProduct/product25.jpg','Đơn hàng của bạn đang giao đến bạn','2022-5-20 14:31:40',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM63','ORDER16','Thông báo 63','image/imageProduct/product19.jpg','Đơn hàng của bạn đã được hủy','2021-8-18 20:21:17',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM64','ORDER8','Thông báo 64','image/imageProduct/product44.jpg','Đơn hàng của bạn đã được hủy','2021-5-10 15:3:23',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM65','ORDER49','Thông báo 65','image/imageProduct/product32.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2021-11-15 21:38:13',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM66','ORDER37','Thông báo 66','image/imageProduct/product29.jpg','Đơn hàng của bạn đang giao đến bạn','2021-6-30 5:46:55',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM67','ORDER12','Thông báo 67','image/imageProduct/product17.jpg','Đơn hàng của bạn đã giao thành công','2021-2-27 1:14:34',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM68','ORDER34','Thông báo 68','image/imageProduct/product7.jpg','Đơn hàng của bạn đã được xác nhận','2022-8-20 17:58:4',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM69','ORDER31','Thông báo 69','image/imageProduct/product25.jpg','Đơn hàng của bạn đang giao đến bạn','2021-11-20 5:34:14',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM70','ORDER3','Thông báo 70','image/imageProduct/product21.jpg','Đơn hàng của bạn đã được hủy','2021-8-27 9:8:34',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM71','ORDER18','Thông báo 71','image/imageProduct/product21.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2022-9-13 12:15:3',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM72','ORDER30','Thông báo 72','image/imageProduct/product15.jpg','Đơn hàng của bạn đang giao đến bạn','2022-4-17 4:39:4',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM73','ORDER40','Thông báo 73','image/imageProduct/product34.jpg','Đơn hàng của bạn đã được hủy','2022-7-13 13:34:56',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM74','ORDER33','Thông báo 74','image/imageProduct/product19.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2022-7-26 11:9:54',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM75','ORDER23','Thông báo 75','image/imageProduct/product46.jpg','Đơn hàng của bạn đã giao thành công','2021-5-19 3:21:49',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM76','ORDER23','Thông báo 76','image/imageProduct/product16.jpg','Đơn hàng của bạn đã được xác nhận','2022-3-22 4:8:40',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM77','ORDER16','Thông báo 77','image/imageProduct/product27.jpg','Đơn hàng của bạn đã được xác nhận','2021-6-3 10:24:21',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM78','ORDER29','Thông báo 78','image/imageProduct/product44.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2021-1-27 6:0:8',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM79','ORDER14','Thông báo 79','image/imageProduct/product41.jpg','Đơn hàng của bạn đang giao đến bạn','2021-2-10 13:17:23',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM80','ORDER14','Thông báo 80','image/imageProduct/product5.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2021-5-25 4:18:56',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM81','ORDER43','Thông báo 81','image/imageProduct/product18.jpg','Đơn hàng của bạn đang giao đến bạn','2022-8-8 0:11:48',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM82','ORDER6','Thông báo 82','image/imageProduct/product38.jpg','Đơn hàng của bạn đã được xác nhận','2021-3-17 0:40:9',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM83','ORDER12','Thông báo 83','image/imageProduct/product29.jpg','Đơn hàng của bạn đã được xác nhận','2021-12-3 12:38:45',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM84','ORDER13','Thông báo 84','image/imageProduct/product20.jpg','Đơn hàng của bạn đã được hủy','2021-5-2 21:29:56',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM85','ORDER39','Thông báo 85','image/imageProduct/product14.jpg','Đơn hàng của bạn đã giao thành công','2022-4-30 7:13:12',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM86','ORDER1','Thông báo 86','image/imageProduct/product35.jpg','Đơn hàng của bạn đang giao đến bạn','2021-7-12 16:53:43',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM87','ORDER16','Thông báo 87','image/imageProduct/product30.jpg','Đơn hàng của bạn đang giao đến bạn','2022-10-16 13:54:54',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM88','ORDER33','Thông báo 88','image/imageProduct/product21.jpg','Đơn hàng của bạn đang giao đến bạn','2022-1-9 13:37:47',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM89','ORDER5','Thông báo 89','image/imageProduct/product5.jpg','Đơn hàng của bạn đã được xác nhận','2022-3-18 14:3:0',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM90','ORDER35','Thông báo 90','image/imageProduct/product34.jpg','Đơn hàng của bạn đã được hủy','2021-5-20 1:57:41',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM91','ORDER34','Thông báo 91','image/imageProduct/product26.jpg','Đơn hàng của bạn đã được hủy','2021-5-24 21:2:18',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM92','ORDER23','Thông báo 92','image/imageProduct/product23.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2021-6-12 1:47:3',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM93','ORDER11','Thông báo 93','image/imageProduct/product45.jpg','Đơn hàng của bạn đang giao đến bạn','2022-6-19 19:1:6',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM94','ORDER14','Thông báo 94','image/imageProduct/product22.jpg','Đơn hàng của bạn đang giao đến bạn','2021-8-30 22:53:19',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM95','ORDER23','Thông báo 95','image/imageProduct/product48.jpg','Đơn hàng của bạn đang được người bán chuẩn bị','2021-1-18 13:0:48',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM96','ORDER21','Thông báo 96','image/imageProduct/product40.jpg','Đơn hàng của bạn đã giao thành công','2021-9-19 2:44:31',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM97','ORDER15','Thông báo 97','image/imageProduct/product16.jpg','Đơn hàng của bạn đã được xác nhận','2021-8-7 8:57:56',0);
INSERT INTO ANNOUNCEMENT VALUES ('ANM98','ORDER26','Thông báo 98','image/imageProduct/product27.jpg','Đơn hàng của bạn đã được hủy','2021-9-26 12:19:39',1);
INSERT INTO ANNOUNCEMENT VALUES ('ANM99','ORDER38','Thông báo 99','image/imageProduct/product49.jpg','Đơn hàng của bạn đã giao thành công','2022-9-29 23:30:53',1);





INSERT INTO CART VALUES ('U1','PR1',1);
INSERT INTO CART VALUES ('U2','PR2',2);
INSERT INTO CART VALUES ('U3','PR3',3);
INSERT INTO CART VALUES ('U4','PR4',4);
INSERT INTO CART VALUES ('U5','PR5',5);
INSERT INTO CART VALUES ('U6','PR6',6);
INSERT INTO CART VALUES ('U7','PR7',7);

INSERT INTO CART VALUES ('U8','PR8',8);
INSERT INTO CART VALUES ('U8','PR10',8);
INSERT INTO CART VALUES ('U8','PR11',8);

INSERT INTO CART VALUES ('U9','PR9',9);
INSERT INTO CART VALUES ('U9','PR1',9);
INSERT INTO CART VALUES ('U9','PR2',9);
INSERT INTO CART VALUES ('U9','PR6',9);

INSERT INTO CART VALUES ('U10','PR10',10);
INSERT INTO CART VALUES ('U10','PR9',9);

INSERT INTO CART VALUES ('U11','PR11',11);
INSERT INTO CART VALUES ('U11','PR15',11);
INSERT INTO CART VALUES ('U11','PR17',11);
INSERT INTO CART VALUES ('U11','PR18',11);
INSERT INTO CART VALUES ('U11','PR19',11);
INSERT INTO CART VALUES ('U11','PR12',11);

INSERT INTO CART VALUES ('U12','PR12',12);
INSERT INTO CART VALUES ('U12','PR23',11);
INSERT INTO CART VALUES ('U12','PR25',11);
INSERT INTO CART VALUES ('U12','PR21',11);
INSERT INTO CART VALUES ('U12','PR11',11);

INSERT INTO CART VALUES ('U13','PR13',13);
INSERT INTO CART VALUES ('U13','PR12',13);
INSERT INTO CART VALUES ('U13','PR14',13);
INSERT INTO CART VALUES ('U13','PR15',13);
INSERT INTO CART VALUES ('U13','PR16',13);
INSERT INTO CART VALUES ('U13','PR17',13);
INSERT INTO CART VALUES ('U13','PR18',13);
INSERT INTO CART VALUES ('U13','PR19',13);
INSERT INTO CART VALUES ('U13','PR20',13);
INSERT INTO CART VALUES ('U13','PR21',13);

INSERT INTO CART VALUES ('U14','PR1',14);
INSERT INTO CART VALUES ('U14','PR2',14);
INSERT INTO CART VALUES ('U14','PR4',14);
INSERT INTO CART VALUES ('U14','PR3',14);
INSERT INTO CART VALUES ('U14','PR5',14);
INSERT INTO CART VALUES ('U14','PR6',14);

INSERT INTO CART VALUES ('U15','PR15',15);
INSERT INTO CART VALUES ('U16','PR16',16);
INSERT INTO CART VALUES ('U17','PR17',17);
INSERT INTO CART VALUES ('U18','PR18',18);
INSERT INTO CART VALUES ('U19','PR19',19);
INSERT INTO CART VALUES ('U20','PR20',20);
INSERT INTO CART VALUES ('U21','PR21',21);
INSERT INTO CART VALUES ('U22','PR22',22);
INSERT INTO CART VALUES ('U23','PR23',23);
INSERT INTO CART VALUES ('U24','PR24',24);
INSERT INTO CART VALUES ('U25','PR25',25);
INSERT INTO CART VALUES ('U26','PR26',26);
INSERT INTO CART VALUES ('U27','PR27',27);
INSERT INTO CART VALUES ('U28','PR28',28);
INSERT INTO CART VALUES ('U29','PR29',29);
INSERT INTO CART VALUES ('U30','PR30',30);
INSERT INTO CART VALUES ('U31','PR31',31);
INSERT INTO CART VALUES ('U32','PR32',32);
INSERT INTO CART VALUES ('U33','PR33',33);
INSERT INTO CART VALUES ('U34','PR34',34);
INSERT INTO CART VALUES ('U35','PR35',35);
INSERT INTO CART VALUES ('U36','PR36',36);
INSERT INTO CART VALUES ('U37','PR37',37);
INSERT INTO CART VALUES ('U38','PR38',38);
INSERT INTO CART VALUES ('U39','PR39',39);
INSERT INTO CART VALUES ('U40','PR40',40);
INSERT INTO CART VALUES ('U41','PR41',41);
INSERT INTO CART VALUES ('U42','PR42',42);
INSERT INTO CART VALUES ('U43','PR43',43);
INSERT INTO CART VALUES ('U44','PR44',44);
INSERT INTO CART VALUES ('U45','PR45',45);
INSERT INTO CART VALUES ('U46','PR46',46);
INSERT INTO CART VALUES ('U47','PR47',47);
INSERT INTO CART VALUES ('U48','PR48',48);
INSERT INTO CART VALUES ('U49','PR49',49);
INSERT INTO CART VALUES ('U50','PR50',50);



INSERT INTO USER_VOUCHER VALUES ('U1','VC1',1);
INSERT INTO USER_VOUCHER VALUES ('U2','VC2',2);
INSERT INTO USER_VOUCHER VALUES ('U3','VC3',3);
INSERT INTO USER_VOUCHER VALUES ('U4','VC4',4);
INSERT INTO USER_VOUCHER VALUES ('U5','VC5',5);
INSERT INTO USER_VOUCHER VALUES ('U6','VC6',6);
INSERT INTO USER_VOUCHER VALUES ('U7','VC7',7);
INSERT INTO USER_VOUCHER VALUES ('U8','VC8',8);
INSERT INTO USER_VOUCHER VALUES ('U9','VC9',9);
INSERT INTO USER_VOUCHER VALUES ('U10','VC10',10);
INSERT INTO USER_VOUCHER VALUES ('U11','VC11',11);
INSERT INTO USER_VOUCHER VALUES ('U12','VC12',12);
INSERT INTO USER_VOUCHER VALUES ('U13','VC13',13);
INSERT INTO USER_VOUCHER VALUES ('U14','VC14',14);
INSERT INTO USER_VOUCHER VALUES ('U15','VC15',15);
INSERT INTO USER_VOUCHER VALUES ('U16','VC16',16);
INSERT INTO USER_VOUCHER VALUES ('U17','VC17',17);
INSERT INTO USER_VOUCHER VALUES ('U18','VC18',18);
INSERT INTO USER_VOUCHER VALUES ('U19','VC19',19);
INSERT INTO USER_VOUCHER VALUES ('U20','VC20',20);
INSERT INTO USER_VOUCHER VALUES ('U21','VC21',21);
INSERT INTO USER_VOUCHER VALUES ('U22','VC22',22);
INSERT INTO USER_VOUCHER VALUES ('U23','VC23',23);
INSERT INTO USER_VOUCHER VALUES ('U24','VC24',24);
INSERT INTO USER_VOUCHER VALUES ('U25','VC25',25);
INSERT INTO USER_VOUCHER VALUES ('U26','VC26',26);
INSERT INTO USER_VOUCHER VALUES ('U27','VC27',27);
INSERT INTO USER_VOUCHER VALUES ('U28','VC28',28);
INSERT INTO USER_VOUCHER VALUES ('U29','VC29',29);
INSERT INTO USER_VOUCHER VALUES ('U30','VC30',30);




INSERT INTO ORDER_VOUCHER VALUES ('ORDER1','VC1');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER2','VC2');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER3','VC3');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER4','VC4');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER5','VC5');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER6','VC6');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER7','VC7');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER8','VC8');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER9','VC9');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER10','VC10');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER11','VC11');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER12','VC12');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER13','VC13');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER14','VC14');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER15','VC15');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER16','VC16');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER17','VC17');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER18','VC18');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER19','VC19');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER20','VC20');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER21','VC21');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER22','VC22');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER23','VC23');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER24','VC24');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER25','VC25');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER26','VC26');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER27','VC27');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER28','VC28');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER29','VC29');
INSERT INTO ORDER_VOUCHER VALUES ('ORDER30','VC30');



INSERT INTO OPTION VALUES ('OPTION1','PR1','1',1000,1,1);
INSERT INTO OPTION VALUES ('OPTION2','PR2','1',2000,2,1);
INSERT INTO OPTION VALUES ('OPTION3','PR3','1',3000,3,1);
INSERT INTO OPTION VALUES ('OPTION4','PR4','1',4000,4,1);
INSERT INTO OPTION VALUES ('OPTION5','PR5','1',5000,5,1);
INSERT INTO OPTION VALUES ('OPTION6','PR6','1',6000,6,1);
INSERT INTO OPTION VALUES ('OPTION7','PR7','1',7000,7,1);
INSERT INTO OPTION VALUES ('OPTION8','PR8','1',8000,8,1);
INSERT INTO OPTION VALUES ('OPTION9','PR9','1',9000,9,1);
INSERT INTO OPTION VALUES ('OPTION10','PR10','1',10000,10,1);
INSERT INTO OPTION VALUES ('OPTION11','PR11','1',11000,11,1);
INSERT INTO OPTION VALUES ('OPTION12','PR12','1',12000,12,1);
INSERT INTO OPTION VALUES ('OPTION13','PR13','1',13000,13,1);
INSERT INTO OPTION VALUES ('OPTION14','PR14','1',14000,14,1);
INSERT INTO OPTION VALUES ('OPTION15','PR15','1',15000,15,1);
INSERT INTO OPTION VALUES ('OPTION16','PR16','1',16000,16,1);
INSERT INTO OPTION VALUES ('OPTION17','PR17','1',17000,17,1);
INSERT INTO OPTION VALUES ('OPTION18','PR18','1',18000,18,1);
INSERT INTO OPTION VALUES ('OPTION19','PR19','1',19000,19,1);
INSERT INTO OPTION VALUES ('OPTION20','PR20','1',20000,20,1);
INSERT INTO OPTION VALUES ('OPTION21','PR21','1',21000,21,1);
INSERT INTO OPTION VALUES ('OPTION22','PR22','1',22000,22,1);
INSERT INTO OPTION VALUES ('OPTION23','PR23','1',23000,23,1);
INSERT INTO OPTION VALUES ('OPTION24','PR24','1',24000,24,1);
INSERT INTO OPTION VALUES ('OPTION25','PR25','1',25000,25,1);
INSERT INTO OPTION VALUES ('OPTION26','PR26','1',26000,26,1);
INSERT INTO OPTION VALUES ('OPTION27','PR27','1',27000,27,1);
INSERT INTO OPTION VALUES ('OPTION28','PR28','1',28000,28,1);
INSERT INTO OPTION VALUES ('OPTION29','PR29','1',29000,29,1);
INSERT INTO OPTION VALUES ('OPTION30','PR30','1',30000,30,1);


INSERT INTO PRODUCT_ORDER VALUES ('ORDER1','PR1',1,1000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER2','PR2',1,2000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER3','PR3',1,3000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER4','PR4',1,4000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER5','PR5',1,5000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER6','PR6',1,6000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER7','PR7',1,7000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER8','PR8',1,8000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER9','PR9',1,9000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER10','PR10',1,10000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER11','PR11',1,11000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER12','PR12',1,12000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER13','PR13',1,13000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER14','PR14',1,14000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER15','PR15',1,15000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER16','PR16',1,16000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER17','PR17',1,17000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER18','PR18',1,18000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER19','PR19',1,19000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER20','PR20',1,20000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER21','PR21',1,21000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER22','PR22',1,22000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER23','PR23',1,23000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER24','PR24',1,24000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER25','PR25',1,25000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER26','PR26',1,26000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER27','PR27',1,27000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER28','PR28',1,28000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER29','PR29',1,29000);
INSERT INTO PRODUCT_ORDER VALUES ('ORDER30','PR30',1,30000);




INSERT INTO ADMIN VALUES ('1', 'Nguyễn Minh Thuận', '0359681217','20130426@st.hcmuaf.edu.vn','2002/1/1','nam','123');
INSERT INTO ADMIN VALUES ('2', 'Huỳnh Quốc Nam', '0111111111','20130001@st.hcmuaf.edu.vn','2002/1/1','nam','123');
INSERT INTO ADMIN VALUES ('3', 'Đỗ Phú Nguyên Chương', '0222222222','20130074@st.hcmuaf.edu.vn','2002/1/1','nam','123');



INSERT INTO REVIEW VALUES ('1','1','1',5,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('2','2','2',5,'Dùng tốt, mọi người nên dùng nhé','2022/12/20');
INSERT INTO REVIEW VALUES ('3','3','3',5,'Nhân viên nhiệt tình','2022/10/30');
INSERT INTO REVIEW VALUES ('4','4','4',5,'Nhân viên nhiệt tình','2022/9/20');
INSERT INTO REVIEW VALUES ('5','5','5',5,'Nhân viên nhiệt tình','2022/8/20');
INSERT INTO REVIEW VALUES ('6','6','6',5,'Nhân viên nhiệt tình','2022/7/20');
INSERT INTO REVIEW VALUES ('7','7','7',5,'Nhân viên nhiệt tình','2022/6/20');
INSERT INTO REVIEW VALUES ('8','8','8',5,'Nhân viên nhiệt tình','2022/5/20');
INSERT INTO REVIEW VALUES ('9','9','9',5,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('10','10','10',4,'Sản phẩm dùng rất tốt','2022/11/20');
INSERT INTO REVIEW VALUES ('11','11','11',4,'Hệ android dễ dùng nên mình thấy OK, hình ảnh sắc đẹp','2022/11/20');
INSERT INTO REVIEW VALUES ('12','12','12',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('13','13','13',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('14','14','14',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('15','15','15',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('16','16','16',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('17','17','17',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('18','18','18',4,'Nhân viên nhiệt tình','2022/9/20');
INSERT INTO REVIEW VALUES ('19','19','19',4,'Sản phẩm dùng rất tốt, thiết kế đẹp','2022/8/20');
INSERT INTO REVIEW VALUES ('20','21','21',4,'Nhân viên nhiệt tình','2022/7/20');
INSERT INTO REVIEW VALUES ('22','22','22',4,'Nhân viên nhiệt tình','2022/6/20');
INSERT INTO REVIEW VALUES ('23','23','23',4,'Sản phẩm rất tốt, hài lòng','2022/5/20');
INSERT INTO REVIEW VALUES ('24','24','24',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('25','25','25',4,'Sản phẩm dùng tốt','2022/11/20');
INSERT INTO REVIEW VALUES ('26','26','26',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('27','27','27',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('28','28','28',4,'Nhân viên nhiệt tình','2022/4/20');
INSERT INTO REVIEW VALUES ('29','29','29',4,'Nhân viên nhiệt tình','2022/3/20');
INSERT INTO REVIEW VALUES ('30','30','30',4,'Nhân viên nhiệt tình','2022/2/20');
INSERT INTO REVIEW VALUES ('31','31','31',4,'Nhân viên nhiệt tình','2022/1/20');
INSERT INTO REVIEW VALUES ('32','32','32',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('33','33','33',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('34','34','34',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('35','35','35',4,'Nhân viên nhiệt tình','2022/5/20');
INSERT INTO REVIEW VALUES ('36','36','36',4,'Nhân viên nhiệt tình','2022/6/20');
INSERT INTO REVIEW VALUES ('37','37','37',4,'Nhân viên nhiệt tình','2022/7/20');
INSERT INTO REVIEW VALUES ('38','38','38',4,'Nhân viên nhiệt tình','2022/8/20');
INSERT INTO REVIEW VALUES ('39','39','39',4,'Sản phẩm dùng rất tốt','2022/6/20');
INSERT INTO REVIEW VALUES ('40','40','40',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('41','41','41',4,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('42','42','42',4,'Nhân viên tư vấn ok sản phẩm tốt','2022/6/20');
INSERT INTO REVIEW VALUES ('43','43','43',3,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('44','44','44',3,'Nhân viên nhiệt tình ','2022/11/20');
INSERT INTO REVIEW VALUES ('45','45','45',3,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('46','46','46',3,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('47','47','47',3,'Nhân viên nhiệt tình','2022/11/20');
INSERT INTO REVIEW VALUES ('48','48','48',3,'Nhân viên nhiệt tình','2022/9/20');
INSERT INTO REVIEW VALUES ('49','49','49',2,'Sản phẩm OK vượt trội hình ảnh đẹp','2022/6/20');
INSERT INTO REVIEW VALUES ('50','50','50',1,'Dùng tốt, mọi người nên dùng nhé','2022/7/20');


INSERT INTO PRODUCER VALUES ('1','Xiaomi','image/producer/producer1.png',1);
INSERT INTO PRODUCER VALUES ('2','Samsung','image/producer/producer2.png',1);
INSERT INTO PRODUCER VALUES ('3','Apple','image/producer/producer3.png',1);
INSERT INTO PRODUCER VALUES ('4','Oppo','image/producer/producer4.png',1);
INSERT INTO PRODUCER VALUES ('5','Pisen','image/producer/producer5.png',1);
INSERT INTO PRODUCER VALUES ('6','Energizer','image/producer/producer6.png',1);
INSERT INTO PRODUCER VALUES ('7','Devia','image/producer/producer7.png',1);
INSERT INTO PRODUCER VALUES ('8','Mophie','image/producer/producer8.png',1);
INSERT INTO PRODUCER VALUES ('9','Havit','image/producer/producer9.png',1);
INSERT INTO PRODUCER VALUES ('10','Anker','image/producer/producer10.png',1);
INSERT INTO PRODUCER VALUES ('11','SoundPEATS','image/producer/producer11.png',1);
INSERT INTO PRODUCER VALUES ('12','QCY','image/producer/producer12.png',1);
INSERT INTO PRODUCER VALUES ('13','Mfi','image/producer/producer13.png',1);
INSERT INTO PRODUCER VALUES ('14','Defunc','image/producer/producer14.png',1);
INSERT INTO PRODUCER VALUES ('15','GOLF','image/producer/producer15.png',1);
INSERT INTO PRODUCER VALUES ('16','Aukey','image/producer/producer16.png',1);
INSERT INTO PRODUCER VALUES ('17','Harman Kardon','image/producer/producer17.png',1);
INSERT INTO PRODUCER VALUES ('18','Tomtoc','image/producer/producer18.png',1);
INSERT INTO PRODUCER VALUES ('19','Spigen','image/producer/producer19.png',1);
INSERT INTO PRODUCER VALUES ('20','HyperDrive','image/producer/producer20.png',1);
INSERT INTO PRODUCER VALUES ('21','Mipow','image/producer/producer21.png',1);
INSERT INTO PRODUCER VALUES ('22','UmeTravel','image/producer/producer22.png',1);
INSERT INTO PRODUCER VALUES ('23','iWALK','image/producer/producer23.png',1);
INSERT INTO PRODUCER VALUES ('24','Belkin','image/producer/producer24.png',1);
INSERT INTO PRODUCER VALUES ('25','Bose','image/producer/producer25.png',1);
INSERT INTO PRODUCER VALUES ('26','Inostyle','image/producer/producer26.png',1);
INSERT INTO PRODUCER VALUES ('27','Mophie','image/producer/producer27.png',1);
INSERT INTO PRODUCER VALUES ('28','RavPower','image/producer/producer28.png',1);
INSERT INTO PRODUCER VALUES ('29','JBL','image/producer/producer29.png',1);
INSERT INTO PRODUCER VALUES ('30','LG','image/producer/producer30.png',1);
INSERT INTO PRODUCER VALUES ('31','SONY','image/producer/producer31.png',1);
INSERT INTO PRODUCER VALUES ('32','Mazer','image/producer/producer32.png',1);
INSERT INTO PRODUCER VALUES ('33','Tronsmart','image/producer/producer33.png',1);
INSERT INTO PRODUCER VALUES ('34','Sennheiser','image/producer/producer34.png',1);
INSERT INTO PRODUCER VALUES ('35','Mipow','image/producer/producer35.png',1);
INSERT INTO PRODUCER VALUES ('36','UAG','image/producer/producer36.png',1);
INSERT INTO PRODUCER VALUES ('37','B&O','image/producer/producer37.png',1);

INSERT INTO IMG_PRODUCT VALUES ('1','1','image/IMG_PRODUCT/IMG_PRODUCT1.png');
INSERT INTO IMG_PRODUCT VALUES ('2','2','image/IMG_PRODUCT/IMG_PRODUCT2.png');
INSERT INTO IMG_PRODUCT VALUES ('3','3','image/IMG_PRODUCT/IMG_PRODUCT3.png');
INSERT INTO IMG_PRODUCT VALUES ('4','4','image/IMG_PRODUCT/IMG_PRODUCT4.png');
INSERT INTO IMG_PRODUCT VALUES ('5','5','image/IMG_PRODUCT/IMG_PRODUCT5.png');
INSERT INTO IMG_PRODUCT VALUES ('6','6','image/IMG_PRODUCT/IMG_PRODUCT6.png');
INSERT INTO IMG_PRODUCT VALUES ('7','7','image/IMG_PRODUCT/IMG_PRODUCT7.png');
INSERT INTO IMG_PRODUCT VALUES ('8','8','image/IMG_PRODUCT/IMG_PRODUCT8.png');
INSERT INTO IMG_PRODUCT VALUES ('9','9','image/IMG_PRODUCT/IMG_PRODUCT9.png');
INSERT INTO IMG_PRODUCT VALUES ('10','10','image/IMG_PRODUCT/IMG_PRODUCT10.png');
INSERT INTO IMG_PRODUCT VALUES ('11','11','image/IMG_PRODUCT/IMG_PRODUCT11.png');
INSERT INTO IMG_PRODUCT VALUES ('12','12','image/IMG_PRODUCT/IMG_PRODUCT12.png');
INSERT INTO IMG_PRODUCT VALUES ('13','13','image/IMG_PRODUCT/IMG_PRODUCT13.png');
INSERT INTO IMG_PRODUCT VALUES ('14','14','image/IMG_PRODUCT/IMG_PRODUCT14.png');
INSERT INTO IMG_PRODUCT VALUES ('15','15','image/IMG_PRODUCT/IMG_PRODUCT15.png');
INSERT INTO IMG_PRODUCT VALUES ('16','16','image/IMG_PRODUCT/IMG_PRODUCT16.png');
INSERT INTO IMG_PRODUCT VALUES ('17','17 Kardon','image/IMG_PRODUCT/IMG_PRODUCT17.png');
INSERT INTO IMG_PRODUCT VALUES ('18','18','image/IMG_PRODUCT/IMG_PRODUCT18.png');
INSERT INTO IMG_PRODUCT VALUES ('19','19','image/IMG_PRODUCT/IMG_PRODUCT19.png');
INSERT INTO IMG_PRODUCT VALUES ('20','20','image/IMG_PRODUCT/IMG_PRODUCT20.png');
INSERT INTO IMG_PRODUCT VALUES ('21','21','image/IMG_PRODUCT/IMG_PRODUCT21.png');
INSERT INTO IMG_PRODUCT VALUES ('22','22','image/IMG_PRODUCT/IMG_PRODUCT22.png');
INSERT INTO IMG_PRODUCT VALUES ('23','23','image/IMG_PRODUCT/IMG_PRODUCT23.png');
INSERT INTO IMG_PRODUCT VALUES ('24','24','image/IMG_PRODUCT/IMG_PRODUCT24.png');
INSERT INTO IMG_PRODUCT VALUES ('25','25','image/IMG_PRODUCT/IMG_PRODUCT25.png');
INSERT INTO IMG_PRODUCT VALUES ('26','26','image/IMG_PRODUCT/IMG_PRODUCT26.png');
INSERT INTO IMG_PRODUCT VALUES ('27','27','image/IMG_PRODUCT/IMG_PRODUCT27.png');
INSERT INTO IMG_PRODUCT VALUES ('28','28','image/IMG_PRODUCT/IMG_PRODUCT28.png');
INSERT INTO IMG_PRODUCT VALUES ('29','29','image/IMG_PRODUCT/IMG_PRODUCT29.png');
INSERT INTO IMG_PRODUCT VALUES ('30','30','image/IMG_PRODUCT/IMG_PRODUCT30.png');
INSERT INTO IMG_PRODUCT VALUES ('31','31','image/IMG_PRODUCT/IMG_PRODUCT31.png');
INSERT INTO IMG_PRODUCT VALUES ('32','32','image/IMG_PRODUCT/IMG_PRODUCT32.png');
INSERT INTO IMG_PRODUCT VALUES ('33','33','image/IMG_PRODUCT/IMG_PRODUCT33.png');
INSERT INTO IMG_PRODUCT VALUES ('34','34','image/IMG_PRODUCT/IMG_PRODUCT34.png');
INSERT INTO IMG_PRODUCT VALUES ('35','35','image/IMG_PRODUCT/IMG_PRODUCT35.png');
INSERT INTO IMG_PRODUCT VALUES ('36','36','image/IMG_PRODUCT/IMG_PRODUCT36.png');
INSERT INTO IMG_PRODUCT VALUES ('37','37','image/IMG_PRODUCT/IMG_PRODUCT37.png');
INSERT INTO IMG_PRODUCT VALUES ('38','38','image/IMG_PRODUCT/IMG_PRODUCT38.png');
INSERT INTO IMG_PRODUCT VALUES ('39','39','image/IMG_PRODUCT/IMG_PRODUCT39.png');
INSERT INTO IMG_PRODUCT VALUES ('40','40','image/IMG_PRODUCT/IMG_PRODUCT40.png');
INSERT INTO IMG_PRODUCT VALUES ('41','41','image/IMG_PRODUCT/IMG_PRODUCT41.png');
INSERT INTO IMG_PRODUCT VALUES ('42','42','image/IMG_PRODUCT/IMG_PRODUCT42.png');
INSERT INTO IMG_PRODUCT VALUES ('43','43','image/IMG_PRODUCT/IMG_PRODUCT43.png');
INSERT INTO IMG_PRODUCT VALUES ('44','44','image/IMG_PRODUCT/IMG_PRODUCT44.png');
INSERT INTO IMG_PRODUCT VALUES ('45','45','image/IMG_PRODUCT/IMG_PRODUCT45.png');
INSERT INTO IMG_PRODUCT VALUES ('46','46','image/IMG_PRODUCT/IMG_PRODUCT46.png');
INSERT INTO IMG_PRODUCT VALUES ('47','47','image/IMG_PRODUCT/IMG_PRODUCT47.png');
INSERT INTO IMG_PRODUCT VALUES ('48','48','image/IMG_PRODUCT/IMG_PRODUCT48.png');
INSERT INTO IMG_PRODUCT VALUES ('49','49','image/IMG_PRODUCT/IMG_PRODUCT49.png');
INSERT INTO IMG_PRODUCT VALUES ('50','50','image/IMG_PRODUCT/IMG_PRODUCT50.png');



INSERT INTO EDIT_PRODUCT VALUES ('1','1','1','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('2','2','2','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('3','3','3','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCT VALUES ('4','1','4','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('5','2','5','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('6','3','6','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('7','2','7','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('8','3','8','Chỉnh sửa ảnh ');
INSERT INTO EDIT_PRODUCT VALUES ('9','1','9','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('10','2','10','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('11','3','11','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('12','1','12','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('13','2','13','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCT VALUES ('14','3','14','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('15','1','15','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCT VALUES ('16','2','16','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('17','1','17','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('18','2','18','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCT VALUES ('19','3','19','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('20','2','20','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('21','3','21','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('22','1','22','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('23','2','23','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCT VALUES ('24','3','24','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('25','1','25','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('26','2','26','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('27','1','28','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('29','2','29','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('30','3','30','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCT VALUES ('31','1','31','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('32','2','32','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('33','3','33','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('34','2','34','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('35','3','35','Chỉnh sửa tên ');
INSERT INTO EDIT_PRODUCT VALUES ('36','1','36','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('37','2','37','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('38','3','39','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('39','1','39','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('40','2','40','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('41','3','41','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCT VALUES ('42','1','42','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('43','2','43','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('44','2','44','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('45','3','45','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('46','1','46','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('47','2','47','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCT VALUES ('48','3','48','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('49','1','49','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCT VALUES ('50','2','50','Chỉnh sửa trạng thái');



INSERT INTO EDIT_PRODUCER VALUES ('1','1','1','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('2','2','2','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('3','3','3','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCER VALUES ('4','1','4','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('5','2','5','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('6','3','6','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('7','2','7','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('8','3','8','Chỉnh sửa ảnh ');
INSERT INTO EDIT_PRODUCER VALUES ('9','1','9','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('10','2','10','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('11','3','11','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('12','1','12','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('13','2','13','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCER VALUES ('14','3','14','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('15','1','15','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCER VALUES ('16','2','16','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('17','1','17','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('18','2','18','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCER VALUES ('19','3','19','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('20','2','20','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('21','3','21','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('22','1','22','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('23','2','23','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCER VALUES ('24','3','24','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('25','1','25','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('26','2','26','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('27','1','28','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('29','2','29','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('30','3','30','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCER VALUES ('31','1','31','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('32','2','32','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('33','3','33','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('34','2','34','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('35','3','35','Chỉnh sửa tên ');
INSERT INTO EDIT_PRODUCER VALUES ('36','1','36','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('37','2','37','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('38','3','39','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('39','1','39','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('40','2','40','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('41','3','41','Chỉnh sửa tên');
INSERT INTO EDIT_PRODUCER VALUES ('42','1','42','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('43','2','43','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('44','2','44','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('45','3','45','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('46','1','46','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('47','2','47','Chỉnh sửa trạng thái');
INSERT INTO EDIT_PRODUCER VALUES ('48','3','48','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('49','1','49','Chỉnh sửa ảnh');
INSERT INTO EDIT_PRODUCER VALUES ('50','2','50','Chỉnh sửa trạng thái');



INSERT INTO EDIT_CATEGORY VALUES ('1','1','1','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('2','2','2','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('3','3','3','Chỉnh sửa tên');
INSERT INTO EDIT_CATEGORY VALUES ('4','1','4','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('5','2','5','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('6','3','6','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('7','2','7','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('8','3','8','Chỉnh sửa ảnh ');
INSERT INTO EDIT_CATEGORY VALUES ('9','1','9','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('10','2','10','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('11','3','11','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('12','1','12','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('13','2','13','Chỉnh sửa tên');
INSERT INTO EDIT_CATEGORY VALUES ('14','3','14','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('15','1','15','Chỉnh sửa tên');
INSERT INTO EDIT_CATEGORY VALUES ('16','2','16','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('17','1','17','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('18','2','18','Chỉnh sửa tên');
INSERT INTO EDIT_CATEGORY VALUES ('19','3','19','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('20','2','20','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('21','3','21','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('22','1','22','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('23','2','23','Chỉnh sửa tên');
INSERT INTO EDIT_CATEGORY VALUES ('24','3','24','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('25','1','25','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('26','2','26','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('27','1','28','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('29','2','29','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('30','3','30','Chỉnh sửa tên');
INSERT INTO EDIT_CATEGORY VALUES ('31','1','31','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('32','2','32','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('33','3','33','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('34','2','34','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('35','3','35','Chỉnh sửa tên ');
INSERT INTO EDIT_CATEGORY VALUES ('36','1','36','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('37','2','37','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('38','3','39','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('39','1','39','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('40','2','40','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('41','3','41','Chỉnh sửa tên');
INSERT INTO EDIT_CATEGORY VALUES ('42','1','42','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('43','2','43','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('44','2','44','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('45','3','45','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('46','1','46','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('47','2','47','Chỉnh sửa trạng thái');
INSERT INTO EDIT_CATEGORY VALUES ('48','3','48','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('49','1','49','Chỉnh sửa ảnh');
INSERT INTO EDIT_CATEGORY VALUES ('50','2','50','Chỉnh sửa trạng thái');



INSERT INTO EDIT_VOUCHER VALUES ('1','1','1','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('2','2','2','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('3','3','3','Chỉnh sửa tên');
INSERT INTO EDIT_VOUCHER VALUES ('4','1','4','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('5','2','5','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('6','3','6','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('7','2','7','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('8','3','8','Chỉnh sửa ảnh ');
INSERT INTO EDIT_VOUCHER VALUES ('9','1','9','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('10','2','10','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('11','3','11','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('12','1','12','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('13','2','13','Chỉnh sửa tên');
INSERT INTO EDIT_VOUCHER VALUES ('14','3','14','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('15','1','15','Chỉnh sửa tên');
INSERT INTO EDIT_VOUCHER VALUES ('16','2','16','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('17','1','17','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('18','2','18','Chỉnh sửa tên');
INSERT INTO EDIT_VOUCHER VALUES ('19','3','19','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('20','2','20','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('21','3','21','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('22','1','22','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('23','2','23','Chỉnh sửa tên');
INSERT INTO EDIT_VOUCHER VALUES ('24','3','24','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('25','1','25','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('26','2','26','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('27','1','28','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('29','2','29','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('30','3','30','Chỉnh sửa tên');
INSERT INTO EDIT_VOUCHER VALUES ('31','1','31','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('32','2','32','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('33','3','33','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('34','2','34','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('35','3','35','Chỉnh sửa tên ');
INSERT INTO EDIT_VOUCHER VALUES ('36','1','36','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('37','2','37','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('38','3','39','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('39','1','39','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('40','2','40','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('41','3','41','Chỉnh sửa tên');
INSERT INTO EDIT_VOUCHER VALUES ('42','1','42','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('43','2','43','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('44','2','44','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('45','3','45','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('46','1','46','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('47','2','47','Chỉnh sửa trạng thái');
INSERT INTO EDIT_VOUCHER VALUES ('48','3','48','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('49','1','49','Chỉnh sửa ảnh');
INSERT INTO EDIT_VOUCHER VALUES ('50','2','50','Chỉnh sửa trạng thái');



INSERT INTO EDIT_ORDER VALUES ('1','1','1','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('2','2','2','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('3','3','3','Chỉnh sửa tên');
INSERT INTO EDIT_ORDER VALUES ('4','1','4','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('5','2','5','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('6','3','6','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('7','2','7','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('8','3','8','Chỉnh sửa ảnh ');
INSERT INTO EDIT_ORDER VALUES ('9','1','9','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('10','2','10','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('11','3','11','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('12','1','12','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('13','2','13','Chỉnh sửa tên');
INSERT INTO EDIT_ORDER VALUES ('14','3','14','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('15','1','15','Chỉnh sửa tên');
INSERT INTO EDIT_ORDER VALUES ('16','2','16','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('17','1','17','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('18','2','18','Chỉnh sửa tên');
INSERT INTO EDIT_ORDER VALUES ('19','3','19','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('20','2','20','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('21','3','21','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('22','1','22','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('23','2','23','Chỉnh sửa tên');
INSERT INTO EDIT_ORDER VALUES ('24','3','24','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('25','1','25','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('26','2','26','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('27','1','28','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('29','2','29','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('30','3','30','Chỉnh sửa tên');
INSERT INTO EDIT_ORDER VALUES ('31','1','31','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('32','2','32','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('33','3','33','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('34','2','34','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('35','3','35','Chỉnh sửa tên ');
INSERT INTO EDIT_ORDER VALUES ('36','1','36','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('37','2','37','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('38','3','39','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('39','1','39','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('40','2','40','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('41','3','41','Chỉnh sửa tên');
INSERT INTO EDIT_ORDER VALUES ('42','1','42','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('43','2','43','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('44','2','44','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('45','3','45','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('46','1','46','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('47','2','47','Chỉnh sửa trạng thái');
INSERT INTO EDIT_ORDER VALUES ('48','3','48','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('49','1','49','Chỉnh sửa ảnh');
INSERT INTO EDIT_ORDER VALUES ('50','2','50','Chỉnh sửa trạng thái');
















