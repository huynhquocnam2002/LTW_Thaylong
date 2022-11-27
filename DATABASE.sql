CREATE DATABASE PROJECT_WEB;

USE PROJECT_WEB;

CREATE TABLE PRODUCT(
	ID VARCHAR(10) PRIMARY KEY,
	NAME VARCHAR(100),
	UNIT_PRICE LONG,
	IMG VARCHAR(255),
	INSURANCE INT,
	ID_CATEGORY VARCHAR(10),
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
	GENDER VARCHAR(3) CHECK( GENDER IN('NAM','NU')),
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
	ID_USER VARCHAR(10) REFERENCES USER(ID),
	CONTENT VARCHAR(255)
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
	NAME VARCHAR(50),
	PHONE_NUMBER VARCHAR(10),
	EMAIL VARCHAR(255),
	BIRTHDAY DATE,
	GENDER VARCHAR(3) CHECK( GENDER IN ('NAM','NU')),
	PASSWORD VARCHAR(50)
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

INSERT INTO PRODUCT VALUES ('1','Combo sạc Pisen Quick PD 20W kèm cáp Lightning',295000,'imageProduct/product1.jpg',9,'1','5',-1,'2022/11/20',281,null);
INSERT INTO PRODUCT VALUES ('2','Cáp Lightning tự ngắt 1.2m Pisen AL26',180000,'imageProduct/product2.jpg',6,'1','5',-1,'2022/11/20',101,null);
INSERT INTO PRODUCT VALUES ('3','Sạc dự phòng PISEN Quick 10500mAh(LED) – Ultra',405000,'imageProduct/product3.jpg',8,'2','5',1,'2022/11/20',250,null);
INSERT INTO PRODUCT VALUES ('4','Ốp lưng trong S-Case Chống sốc cho iPhone 7/8 Plus',81000,'imageProduct/product4.jpg',10,'3','3',2,'2022/11/20',137,null);
INSERT INTO PRODUCT VALUES ('5','Tai nghe Bluetooth không dây Energizer UB2609',590000,'imageProduct/product5.jpg',6,'5','6',1,'2022/11/20',135,null);
INSERT INTO PRODUCT VALUES ('6','Dán PPF iPhone 13 Pro Max full trong mặt sau',135000,'imageProduct/product6.jpg',9,'4','3',1,'2022/11/20',106,null);
INSERT INTO PRODUCT VALUES ('7','Sạc dự phòng PISEN Quick High Power Box 10000mAh 20W',590000,'imageProduct/product7.jpg',9,'2','5',0,'2022/11/20',186,null);
INSERT INTO PRODUCT VALUES ('8','Apple iPhone 11 dán Camera chống va đập S-Case',90000,'imageProduct/product8.jpg',12,'7','3',0,'2022/11/20',197,null);
INSERT INTO PRODUCT VALUES ('9','Củ sạc nhanh PD 20W chính hãng Apple (MHJE3ZA)',750000,'imageProduct/product9.jpg',12,'1','3',1,'2022/11/20',123,null);
INSERT INTO PRODUCT VALUES ('10','Apple iPhone 11 Pro Max dán Camera chống va đập S-Case',90000,'imageProduct/product10.jpg',12,'7','3',0,'2022/11/20',107,null);
INSERT INTO PRODUCT VALUES ('11','Tai nghe In-Ears Devia Smart Earpods có mic',95000,'imageProduct/product11.jpg',12,'5','7',2,'2022/11/20',131,null);
INSERT INTO PRODUCT VALUES ('12','Tai nghe Bluetooth không dây Apple AirPods Pro 2021',4890000,'imageProduct/product12.jpg',10,'5','3',0,'2022/11/20',278,null);
INSERT INTO PRODUCT VALUES ('13','Tai nghe Bluetooth không dây Apple AirPods 2',2790000,'imageProduct/product13.jpg',7,'5','3',2,'2022/11/20',191,null);
INSERT INTO PRODUCT VALUES ('14','Miếng Dán PPF Full Viền Mặt sau cho iPhone 11 Pro Max (A20K.012)',135000,'imageProduct/product14.jpg',11,'4','3',1,'2022/11/20',198,null);
INSERT INTO PRODUCT VALUES ('15','Củ sạc nhanh Mophie PD 18W Type-C',250000,'imageProduct/product15.jpg',6,'1','8',-1,'2022/11/20',253,null);
INSERT INTO PRODUCT VALUES ('16','Tai nghe không dây Havit TW967',290000,'imageProduct/product16.jpg',12,'5','9',1,'2022/11/20',170,null);
INSERT INTO PRODUCT VALUES ('17','Sạc dự phòng Energizer 15.000 mAh (UE15032PQ)',550000,'imageProduct/product17.jpg',12,'2','6',-1,'2022/11/20',154,null);
INSERT INTO PRODUCT VALUES ('18','Dán PPF full màn hình cao cấp cho iPhone 11',135000,'imageProduct/product18.jpg',10,'4','3',-1,'2022/11/20',225,null);
INSERT INTO PRODUCT VALUES ('19','Sạc nhanh PD 20W Anker Powerport III Nano (A2633)',360000,'imageProduct/product19.jpg',10,'1','10',-1,'2022/11/20',158,null);
INSERT INTO PRODUCT VALUES ('20','Dán PPF nhám cao cấp full mặt sau Apple iPhone 12 Pro Max',135000,'imageProduct/product20.jpg',8,'4','3',0,'2022/11/20',257,null);
INSERT INTO PRODUCT VALUES ('21','"Cáp sạc Lightning tự ngắt 1,2m Pisen ZINC Intelligent Pro XD"',175000,'imageProduct/product21.jpg',9,'1','5',1,'2022/11/20',283,null);
INSERT INTO PRODUCT VALUES ('22','Tai nghe chụp tai Gaming Havit HV-H2232D',350000,'imageProduct/product22.jpg',11,'5','9',1,'2022/11/20',235,null);
INSERT INTO PRODUCT VALUES ('23','Tai nghe In-Ear cổng Lightning Devia',205000,'imageProduct/product23.jpg',10,'5','7',2,'2022/11/20',168,null);
INSERT INTO PRODUCT VALUES ('24','Apple iPhone 11/XR ốp lưng Likgus Kickstand trong suốt',157000,'imageProduct/product24.jpg',8,'3','3',-1,'2022/11/20',176,null);
INSERT INTO PRODUCT VALUES ('25','Củ sạc nhanh PD Pisen Quick 20W',200000,'imageProduct/product25.jpg',11,'1','5',-1,'2022/11/20',119,null);
INSERT INTO PRODUCT VALUES ('26','Dán cường lực full màn hình 4D cho iPhone 7 Plus / 8 Plus',135000,'imageProduct/product26.jpg',6,'6','3',2,'2022/11/20',192,null);
INSERT INTO PRODUCT VALUES ('27','Tai nghe có dây cổng Lightning chính hãng Apple (MMTN2)',550000,'imageProduct/product27.jpg',12,'5','3',1,'2022/11/20',237,null);
INSERT INTO PRODUCT VALUES ('28','Tai nghe Bluetooth không dây SoundPEATS True Air 2',690000,'imageProduct/product28.jpg',6,'5','11',2,'2022/11/20',241,null);
INSERT INTO PRODUCT VALUES ('29','Tai nghe Bluetooth không dây SoundPEATS True Wings',790000,'imageProduct/product29.jpg',11,'5','11',0,'2022/11/20',177,null);
INSERT INTO PRODUCT VALUES ('30','Cáp sạc USB-C to Lightning 1m chính hãng Apple (MM0A3FE/A)',490000,'imageProduct/product30.jpg',8,'1','3',1,'2022/11/20',139,null);
INSERT INTO PRODUCT VALUES ('31','Miếng Dán Nhám PPF Full Viền Mặt sau cho iPhone Xs Max (A16D.004)',135000,'imageProduct/product31.jpg',10,'4','3',1,'2022/11/20',253,null);
INSERT INTO PRODUCT VALUES ('32','Tai nghe Bluetooth không dây Havit GAMING TW938',490000,'imageProduct/product32.jpg',9,'5','9',0,'2022/11/20',143,null);
INSERT INTO PRODUCT VALUES ('33','Apple iPhone 11 Pro Max dán chống va đập Kingkong Full cao cấp chống nhìn trộm Đen',270000,'imageProduct/product33.jpg',9,'6','3',1,'2022/11/20',290,null);
INSERT INTO PRODUCT VALUES ('34','Tai nghe Bluetooth không dây QCY T1C',260000,'imageProduct/product34.jpg',6,'5','12',-1,'2022/11/20',286,null);
INSERT INTO PRODUCT VALUES ('35','Sạc nhanh PD 20W Pisen Quick Teeny',230000,'imageProduct/product35.jpg',6,'1','5',0,'2022/11/20',294,null);
INSERT INTO PRODUCT VALUES ('36','Pin sạc dự phòng GOLF Candy 10.000 mAh (G80)',250000,'imageProduct/product36.jpg',12,'2','15',0,'2022/11/20',208,null);
INSERT INTO PRODUCT VALUES ('37','Tai nghe Bluetooth không dây Defunc True Basic',490000,'imageProduct/product37.jpg',12,'5','14',-1,'2022/11/20',212,null);
INSERT INTO PRODUCT VALUES ('38','Cáp sạc Lightning 1m MFi MOPHIE',230000,'imageProduct/product38.jpg',11,'1','13',0,'2022/11/20',192,null);
INSERT INTO PRODUCT VALUES ('39','Apple iPhone 11 Pro Max ốp lưng S-Case trong',81000,'imageProduct/product39.jpg',10,'3','3',1,'2022/11/20',219,null);
INSERT INTO PRODUCT VALUES ('40','Tai nghe Bluetooth không dây Havit TW959',450000,'imageProduct/product40.jpg',12,'5','9',1,'2022/11/20',217,null);
INSERT INTO PRODUCT VALUES ('41','Tai nghe Bluetooth không dây Xiaomi Earbud Basic S',450000,'imageProduct/product41.jpg',8,'5','1',0,'2022/11/20',198,null);
INSERT INTO PRODUCT VALUES ('42','Pin dự phòng Energizer 10.000 mAh tích hợp sạc không dây 5W (QE10007)',550000,'imageProduct/product42.jpg',7,'2','3',-1,'2022/11/20',287,null);
INSERT INTO PRODUCT VALUES ('43','Apple Iphone X/XS Dán Camera chống trầy S-Case',45000,'imageProduct/product43.jpg',11,'7','3',1,'2022/11/20',108,null);
INSERT INTO PRODUCT VALUES ('44','Tai nghe Bluetooth Earbuds SoundPEATS Mac',590000,'imageProduct/product44.jpg',12,'5','11',0,'2022/11/20',157,null);
INSERT INTO PRODUCT VALUES ('45','Combo sạc Pisen Quick PD 30W kèm cáp Lightning',495000,'imageProduct/product45.jpg',7,'1','5',1,'2022/11/20',190,null);
INSERT INTO PRODUCT VALUES ('46','Apple iPhone 11 ốp lưng S-Case Silicone',81000,'imageProduct/product46.jpg',12,'3','3',2,'2022/11/20',139,null);
INSERT INTO PRODUCT VALUES ('47','Sạc Aukey PD 20W PA-B1 Pro',270000,'imageProduct/product47.jpg',12,'1','16',2,'2022/11/20',103,null);
INSERT INTO PRODUCT VALUES ('48','Samsung Galaxy S20 Plus dán màn hình PPF Full cao cấp mặt trước',283000,'imageProduct/product48.jpg',11,'4','2',1,'2022/11/20',221,null);
INSERT INTO PRODUCT VALUES ('49','Tai nghe Bluetooth không dây QCY T7',380000,'imageProduct/product49.jpg',12,'5','12',1,'2022/11/20',259,null);
INSERT INTO PRODUCT VALUES ('50','Cáp sạc Mophie Type-C to Lightning 1m',250000,'imageProduct/product50.jpg',10,'1','8',2,'2022/11/20',215,null);

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

INSERT INTO CATEGORY VALUES ('1','Sạc','image/category/category1.png',1);
INSERT INTO CATEGORY VALUES ('2','Sạc dự phòng','image/category/category2.png',1);
INSERT INTO CATEGORY VALUES ('3','Ốp lưng','image/category/category3.png',1);
INSERT INTO CATEGORY VALUES ('4','Dán PPF','image/category/category4.png',1);
INSERT INTO CATEGORY VALUES ('5','Tai nghe','image/category/category5.png',1);
INSERT INTO CATEGORY VALUES ('6','Kính cường lực','image/category/category6.png',1);
INSERT INTO CATEGORY VALUES ('7','Dán camera','image/category/category7.png',1);
INSERT INTO CATEGORY VALUES ('8','Phụ kiện apple','image/category/category8.png',1);
INSERT INTO CATEGORY VALUES ('9','Giá đỡ điện thoại','image/category/category9.png',1);
INSERT INTO CATEGORY VALUES ('10','Túi chống nước','image/category/category10.png',1);

INSERT INTO ADMIN VALUES ('1', 'Nguyễn Minh Thuận', '0359681217','20130426@st.hcmuaf.edu.vn','2002/1/1','nam','123');
INSERT INTO ADMIN VALUES ('2', 'Huỳnh Quốc Nam', '0111111111','20130001@st.hcmuaf.edu.vn','2002/1/1','nam','123');
INSERT INTO ADMIN VALUES ('3', 'Đỗ Phú Nguyên Chương', '0222222222','20130074@st.hcmuaf.edu.vn','2002/1/1','nam','123');

INSERT INTO USER VALUES ('1','image/user/user1.png','Nguyen Van 1','0723074534','DKrUfs5TMg7hUqK@gmail.com','AFBAyKCn2aN1PB9','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('2','image/user/user2.png','Nguyen Van 2','0771742777','NaOiaANqQzdrsxU@gmail.com','oDhI2juyEICBeZq','nam','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('3','image/user/user3.png','Nguyen Van 3','0774216640','ca0MM21xJdkjuhn@gmail.com','2AdLYEpmPUyGKHR','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('4','image/user/user4.png','Nguyen Van 4','0788326256','ABUXofGl5kGh00F@gmail.com','Foz8POJrB5C0h74','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('5','image/user/user5.png','Nguyen Van 5','0700132505','emYKuwURCxm0lno@gmail.com','0XCx4S08z4HnGou','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('6','image/user/user6.png','Nguyen Van 6','0744404204','mQFIJI7Z0R0RoFb@gmail.com','XG6uobrSY4VUD1p','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('7','image/user/user7.png','Nguyen Van 7','0734887417','cNbFxNCld0Ycitm@gmail.com','ka8VBoOcNNXsDck','nam','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('8','image/user/user8.png','Nguyen Van 8','0711766627','W3yftyyLdWKz5WL@gmail.com','nJg7ut7PHqKurTT','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('9','image/user/user9.png','Nguyen Van 9','0740608247','WAAJkXq01VQubLY@gmail.com','6aR8cy2mfGl8XC1','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('10','image/user/user10.png','Nguyen Van 10','0753785443','QayM4dDXlGP9f6O@gmail.com','qsomXOS0vliBqVu','nam','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('11','image/user/user11.png','Nguyen Van 11','0785513515','qOv5WMNVucRRlKl@gmail.com','jTkNlAbrepkgh4k','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('12','image/user/user12.png','Nguyen Van 12','0782501250','9SAL8iFQdo5XsdF@gmail.com','eOvdMX3ZzTFar1k','nu','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('13','image/user/user13.png','Nguyen Van 13','0726281424','fCVp8eSO96TfVOe@gmail.com','6CVS5qdY22IbGFW','nu','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('14','image/user/user14.png','Nguyen Van 14','0765575635','57Gh6tvUiRXhRK6@gmail.com','FXuOCpur57LvBsi','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('15','image/user/user15.png','Nguyen Van 15','0756123882','KrcidAolqTWWYrG@gmail.com','fCCwaw3OqqLtTom','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('16','image/user/user16.png','Nguyen Van 16','0775427081','1TuJrEl9Vr6Phjv@gmail.com','YvcIwMtYTLnaSUv','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('17','image/user/user17.png','Nguyen Van 17','0774564818','iUaHcf29FFsbXD3@gmail.com','MgJPGtFrMcFDsf1','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('18','image/user/user18.png','Nguyen Van 18','0778352487','UOMvMHyQsefU0yA@gmail.com','6N6xskYlNclhf2k','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('19','image/user/user19.png','Nguyen Van 19','0718086684','FvzXJBCEz29XWTP@gmail.com','aVAXCJWxyqi7xiE','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('20','image/user/user20.png','Nguyen Van 20','0721478750','QVRUdp0e3AXI6Ux@gmail.com','Cf8Obr1L4kjhcGy','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('21','image/user/user21.png','Nguyen Van 21','0711630551','95i9cxwMLNkWVCU@gmail.com','ERJ69VPEOolfMAN','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('22','image/user/user22.png','Nguyen Van 22','0765572873','HugKYVBhJArHHxj@gmail.com','kMUxZWx9OFID95N','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('23','image/user/user23.png','Nguyen Van 23','0722031061','MFF75daYpnHc3Tr@gmail.com','zW0ZB0OvFx4PIYO','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('24','image/user/user24.png','Nguyen Van 24','0745811534','pXqumQF9T6Jto1x@gmail.com','xQMfkiQt75S8wZ6','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('25','image/user/user25.png','Nguyen Van 25','0706550145','6gbE6huPC3vM88t@gmail.com','g6TTLQGc5p9Mvqz','nu','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('26','image/user/user26.png','Nguyen Van 26','0780146613','qgJQSfFIMHHmKUN@gmail.com','OyMTCgNyxYeOQFf','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('27','image/user/user27.png','Nguyen Van 27','0702406604','dqUyqNSe0R7Rr3R@gmail.com','FWXJZEEXTTfOL1S','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('28','image/user/user28.png','Nguyen Van 28','0736586776','Pkd7GEh69utMAcQ@gmail.com','N32LU7sA9nESRdD','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('29','image/user/user29.png','Nguyen Van 29','0716375326','8eJaiARtl2cJBGv@gmail.com','hf4ir7UL4hV6oyD','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('30','image/user/user30.png','Nguyen Van 30','0751706831','SSix6i65bCHYGVO@gmail.com','9STn4a4ZOxoEWqu','nu','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('31','image/user/user31.png','Nguyen Van 31','0755875643','akrjnwrWo4Dqiwb@gmail.com','XqZGv0OyV7feRhh','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('32','image/user/user32.png','Nguyen Van 32','0743048152','wpuTaLMHVfBUMhS@gmail.com','HJStfCFtdoVYKvF','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('33','image/user/user33.png','Nguyen Van 33','0767648570','EuB0PQ1xp9ItWhH@gmail.com','e59PhBzYGHpqRgj','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('34','image/user/user34.png','Nguyen Van 34','0766776071','bdREn06JWNi0a84@gmail.com','EgfFZ2QneaS1sMo','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('35','image/user/user35.png','Nguyen Van 35','0720723188','14f6GdpHP5C0nCD@gmail.com','BGZMLSA3YpUilMf','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('36','image/user/user36.png','Nguyen Van 36','0763216704','8ZWCwu9Hw6zMe9k@gmail.com','kQQtSTPDFIvir7O','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('37','image/user/user37.png','Nguyen Van 37','0713826012','kRaGzr0fZjdnXwf@gmail.com','0as8KYv2hIVTW4N','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('38','image/user/user38.png','Nguyen Van 38','0740117840','CUKV4Fc4MJx6S7U@gmail.com','rSgq85R7GRW0Tw5','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('39','image/user/user39.png','Nguyen Van 39','0775730417','LEoHT4pAjvY7BOC@gmail.com','4ZP8hzmiArQGBGk','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('40','image/user/user40.png','Nguyen Van 40','0767527033','E9kKhfe2QwQEpSN@gmail.com','jYMa5jFFyaKvRsx','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('41','image/user/user41.png','Nguyen Van 41','0773428352','00wBhY40CMu6dy5@gmail.com','dccIj1MaMfVG4yg','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('42','image/user/user42.png','Nguyen Van 42','0772252144','Nyi070DZDj71yYn@gmail.com','C9F4m56R4Nte3uI','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('43','image/user/user43.png','Nguyen Van 43','0743823460','ZwMiCSy57NMEGy1@gmail.com','ppXPMBh0a0S95Zb','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('44','image/user/user44.png','Nguyen Van 44','0727128602','p2RVkJtpBKHxE3p@gmail.com','SsdV9CHIXcDzFzU','nu','1997/11/20',-1,'2022/11/20');
INSERT INTO USER VALUES ('45','image/user/user45.png','Nguyen Van 45','0727318650','WxQvdAMjfL7M6WM@gmail.com','iT6b90bRsU1kAAC','nam','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('46','image/user/user46.png','Nguyen Van 46','0755520172','SX6LSYj08IunQOO@gmail.com','qHu8BIy4Si1ZDS4','nam','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('47','image/user/user47.png','Nguyen Van 47','0781174624','XH2FvL2qPJZLSBe@gmail.com','6PPqN27EtTt1Wmo','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('48','image/user/user48.png','Nguyen Van 48','0753683271','hPL3ECkhs0JBDpz@gmail.com','BCXaHstteyem7fd','nu','1997/11/20',1,'2022/11/20');
INSERT INTO USER VALUES ('49','image/user/user49.png','Nguyen Van 49','0721374326','T4jm3hECzi2aVtn@gmail.com','k7J0I02CfIfrLmD','nu','1997/11/20',0,'2022/11/20');
INSERT INTO USER VALUES ('50','image/user/user50.png','Nguyen Van 50','0715688187','qm6ZmaoS7bg87iv@gmail.com','ZpxMSG0prcUuBtf','nu','1997/11/20',-1,'2022/11/20');

INSERT INTO VOUCHER_TYPE VALUES ('1','Miễn phí vận chuyển','image/voucher_type/free_ship.png');
INSERT INTO VOUCHER_TYPE VALUES ('2','Giảm giá','image/voucher_type/discount.png');

INSERT INTO STATUS_ORDER VALUES ('1', 'Chờ xác nhận','image/status_oder/waiting.png');
INSERT INTO STATUS_ORDER VALUES ('2', 'Đang giao','image/status_oder/shipping.png');
INSERT INTO STATUS_ORDER VALUES ('3', 'Đã giao','image/status_oder/completed.png');
INSERT INTO STATUS_ORDER VALUES ('4', 'Đã hủy','image/status_oder/canceld.png');

INSERT INTO VOUCHER VALUES ('1','2','Giảm giá 40k',40000,600000,'2022/11/20','2023/1/24',1);
INSERT INTO VOUCHER VALUES ('2','2','Giảm giá 30k',30000,200000,'2022/11/20','2023/1/30',1);
INSERT INTO VOUCHER VALUES ('3','2','Giảm giá 20k',20000,600000,'2022/11/20','2023/1/24',1);
INSERT INTO VOUCHER VALUES ('4','1','Miễn phí vận chuyển',50000,800000,'2022/11/20','2023/1/19',1);
INSERT INTO VOUCHER VALUES ('5','1','Miễn phí vận chuyển',10000,1000000,'2022/11/20','2023/1/10',1);
INSERT INTO VOUCHER VALUES ('6','1','Miễn phí vận chuyển',10000,600000,'2022/11/20','2023/1/19',1);
INSERT INTO VOUCHER VALUES ('7','2','Giảm giá 30k',30000,700000,'2022/11/20','2023/1/25',1);
INSERT INTO VOUCHER VALUES ('8','2','Giảm giá 20k',20000,100000,'2022/11/20','2023/1/4',1);
INSERT INTO VOUCHER VALUES ('9','2','Giảm giá 40k',40000,300000,'2022/11/20','2023/1/20',1);
INSERT INTO VOUCHER VALUES ('10','1','Miễn phí vận chuyển',50000,400000,'2022/11/20','2023/1/26',1);
INSERT INTO VOUCHER VALUES ('11','1','Miễn phí vận chuyển',10000,900000,'2022/11/20','2023/1/31',1);
INSERT INTO VOUCHER VALUES ('12','1','Miễn phí vận chuyển',30000,700000,'2022/11/20','2023/1/6',1);
INSERT INTO VOUCHER VALUES ('13','1','Miễn phí vận chuyển',30000,700000,'2022/11/20','2023/1/13',1);
INSERT INTO VOUCHER VALUES ('14','1','Miễn phí vận chuyển',30000,200000,'2022/11/20','2023/1/21',1);
INSERT INTO VOUCHER VALUES ('15','1','Miễn phí vận chuyển',10000,600000,'2022/11/20','2023/1/27',1);
INSERT INTO VOUCHER VALUES ('16','1','Miễn phí vận chuyển',50000,200000,'2022/11/20','2023/1/23',1);
INSERT INTO VOUCHER VALUES ('17','2','Giảm giá 50k',50000,900000,'2022/11/20','2023/1/30',1);
INSERT INTO VOUCHER VALUES ('18','1','Miễn phí vận chuyển',10000,500000,'2022/11/20','2023/1/28',1);
INSERT INTO VOUCHER VALUES ('19','2','Giảm giá 30k',30000,200000,'2022/11/20','2023/1/4',1);
INSERT INTO VOUCHER VALUES ('20','2','Giảm giá 30k',30000,100000,'2022/11/20','2023/1/3',1);

