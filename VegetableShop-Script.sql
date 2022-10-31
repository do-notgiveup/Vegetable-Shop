use master
CREATE DATABASE AssShop;
USE ASSshop
SET DATEFORMAT dmy; 

CREATE TABLE tblRoles(
	roleID varchar(50),
	roleName varchar(50),
	PRIMARY KEY (roleID),
);

CREATE TABLE tblUsers(
	userID varchar(50),
	fullName varchar(50),
	password varchar(50),
	roleID varchar(50),
	addr varchar(50),
	birthday DATE,
	phone int,
	email varchar(50),
	PRIMARY KEY (userID),
    FOREIGN KEY (roleID) REFERENCES tblRoles(roleID),
);

CREATE TABLE tblOrder(
	orderID varchar(50),
	orderDate DATE,
	total int,
	userID varchar(50),
	PRIMARY KEY (orderID),
	FOREIGN KEY (userID) REFERENCES tblUsers(userID),
);

CREATE TABLE tblCategory(
	categoryID varchar(50),
	categoryName varchar(50),
	PRIMARY KEY (categoryID),
);

CREATE TABLE tblProduct(
	productID varchar(50),
	productName varchar(50),
	price int,
	quantity float,
	image varchar(1500),
	categoryID varchar(50),
	importDate DATE,
	usingDate DATE,
	PRIMARY KEY (productID),
	FOREIGN KEY (categoryID) REFERENCES tblCategory(CategoryID),
);

CREATE TABLE tblOrderDetail(
	detailID varchar(50),
	price int,
	quantity float,
	orderID varchar(50),
	productID varchar(50),
	PRIMARY KEY (detailID),
	FOREIGN KEY (orderID) REFERENCES tblOrder(orderID),
	FOREIGN KEY (productID) REFERENCES tblProduct(productID),
);


INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES ('AD', 'admin');
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES ('US', 'user');
GO

INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [addr], [birthday], [phone], [email]) VALUES 
(N'admin', N'admin', N'1', N'AD', N'tpHCM', N'20/01/2001', N'098123941', N'admin@gmail.com'),
(N'asuser1', N'Nguyen Huu Vinh', N'1', N'US', N'Dong Nai', N'23/04/2001', N'0472942', N'vinhnguyen50501@gmail.com')
GO

INSERT [dbo].[tblCategory] ([categoryID], [categoryName]) VALUES
(N'ra', N'rau'),
(N'qu', N'qua'),
(N'cu', N'cu'),
(N'gv', N'gia vi')
GO

INSERT [dbo].[tblProduct] ([productID], [productName], [price], [quantity], [image], [categoryID], [importDate], [usingDate]) VALUES
(N'rm', N'rau muong', N'2000', N'100', N'https://vinmec-prod.s3.amazonaws.com/images/20201118_142430_628828_rau-muong.max-800x800.jpg', 'ra', '09/03/2022', '11/03/2022'),
(N'rc', N'rau cai', N'4000', N'100', N'https://vcdn-ngoisao.vnecdn.net/2021/07/23/cai-canh-1722-1627025572.jpg', 'ra', '09/03/2022', '11/03/2022'),
(N'rn', N'rau ngot', N'4000', N'100', N'https://product.hstatic.net/1000380122/product/thiet_ke_khong_ten__2__f71edc3c57de4f13819b6a374937d127_master.png', 'ra', '19/03/2022', '11/03/2022'),
(N'rcn', N'rau cai ngot', N'4000', N'100', N'https://orfarm.com.vn/images/products/2020/07/11/original/27_f102291_rau_muong_3962a35b44254dcda56c59ebc01f7594_large_1594437180.jpg', 'ra', '09/03/2022', '11/03/2022'),
(N'ckl', N'cu khoai lang', N'4000', N'100', N'https://cdn.tgdd.vn/Products/Images/8785/226905/bhx/khoai-lang-nhat-1kg-202101150934398643.jpg', 'cu', '09/03/2022', '11/03/2022'),
(N'cr', N'ca rot', N'4000', N'100', N'https://photo-cms-tpo.zadn.vn/w890/Uploaded/2022/rwbvhvobvvimsb/2021_09_26/cacc80-rocc82cc81t-8919.jpg', 'cu', '09/03/2022', '11/03/2022'),
(N'qcc', N'qua ca chua', N'2500', N'100', N'https://dayngusac.com/wp-content/uploads/2020/05/cong-dung-cua-qua-ca-chua-doi-voi-suc-khoe-con-nguoi1.jpg', 'qu', '09/03/2022', '11/03/2022'),
(N'qm', N'qua muop', N'3000', N'100', N'https://vnn-imgs-f.vgcloud.vn/2019/07/02/10/an-muop-cach-nay-tot-hon-uong-nghin-vien-thuoc-bo-2.jpg', 'qu', '09/03/2022', '11/03/2022'),
(N'gvto', N'toi', N'1800', N'100', N'https://mauthoitrang.com/wp-content/uploads/2021/09/Cong-dung-cua-toi.jpg', 'gv', '09/03/2022', '11/03/2022'),
(N'rauti', N'tieu', N'1000', N'100', N'https://baoquocte.vn/stores/news_dataimages/tranlieu/072021/19/16/0407_shutterstock.jpg?rt=20220118213118', 'gv', '09/03/2022', '11/03/2022'),
(N'gvh', N'hanh kho', N'1500', N'100', N'https://ngonaz.com/wp-content/uploads/2021/06/bao-quan-hanh-kho-1.jpg', 'gv', '09/03/2022', '11/03/2022')
GO



