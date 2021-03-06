USE [master]
GO
/****** Object:  Database [qlbhat]    Script Date: 05/28/2017 17:10:41 ******/
CREATE DATABASE [qlbhat] ON  PRIMARY 
( NAME = N'qlbhat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\qlbhat.mdf' , SIZE = 14336KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qlbhat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\qlbhat_1.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [qlbhat] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlbhat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlbhat] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [qlbhat] SET ANSI_NULLS OFF
GO
ALTER DATABASE [qlbhat] SET ANSI_PADDING OFF
GO
ALTER DATABASE [qlbhat] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [qlbhat] SET ARITHABORT OFF
GO
ALTER DATABASE [qlbhat] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [qlbhat] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [qlbhat] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [qlbhat] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [qlbhat] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [qlbhat] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [qlbhat] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [qlbhat] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [qlbhat] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [qlbhat] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [qlbhat] SET  DISABLE_BROKER
GO
ALTER DATABASE [qlbhat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [qlbhat] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [qlbhat] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [qlbhat] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [qlbhat] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [qlbhat] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [qlbhat] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [qlbhat] SET  READ_WRITE
GO
ALTER DATABASE [qlbhat] SET RECOVERY FULL
GO
ALTER DATABASE [qlbhat] SET  MULTI_USER
GO
ALTER DATABASE [qlbhat] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [qlbhat] SET DB_CHAINING OFF
GO
USE [qlbhat]
GO
/****** Object:  Table [dbo].[ALBUM]    Script Date: 05/28/2017 17:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALBUM](
	[maalbum] [nvarchar](50) NOT NULL,
	[tenalbum] [nvarchar](100) NULL,
	[namphathanh] [nvarchar](4) NULL,
 CONSTRAINT [PK_ALBUM] PRIMARY KEY CLUSTERED 
(
	[maalbum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'10', N'Con Sóng Yêu Thương ', N'2010')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'11', N'Điều Lặng Thầm Trong Anh ', N'2012')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'12', N'Tình Ca Lam Phương', N'2009')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'13', N'Điều Ngọt Ngào Nhất', N'2010')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'15', N'Thương Hoài Ngàn Năm ', N'2009')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'16', N'Sao Em Nỡ Đành Quên', N'2008')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'17', N'Nửa Vầng Trăng', N'2009')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'18', N'Khóc Cho Người Đi ', N'2010')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'19', N'Mãi Còn Yêu ', N'2011')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'20', N'Hạnh Phúc Lang Thang', N'2006')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'21', N'Trăng Khóc ', N'2011')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'22', N'Ngày Mình Hạnh Phúc', N'2012')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'ab1', N'abcdef', N'2017')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'album1', N'asd', N'')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'conlaijsauconmua', N'Còn Lại Gì Sau Cơn Mưa', N'2012')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'damtrongtim', N'Dằm trong tim', N'2000')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'demoithuquadi', N'Để Mọi Thứ Qua Đi', N'2012')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'gockhuat', N'Góc Khuất', N'2012')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'maimai1tinhyeu', N'Mãi Mãi Một Tình Yêu', N'2011')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'saumoigiacmo', N'Sau Mỗi Giấc Mơ (Single)', N'2000')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'tranggiaytrang', N'Trang Giấy Trắng', N'2012')
INSERT [dbo].[ALBUM] ([maalbum], [tenalbum], [namphathanh]) VALUES (N'xoatenanh', N'Xóa Tên Anh (Single)', N'2011')
/****** Object:  Table [dbo].[THELOAI]    Script Date: 05/28/2017 17:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[matheloai] [nvarchar](50) NOT NULL,
	[tentheloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_THELOAI] PRIMARY KEY CLUSTERED 
(
	[matheloai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'fdgsfds', N'test123')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'nhactest', N'theloaitest')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'tesaa', N'tasdsad')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloai1', N'theloai1123')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloaigdd', N'bSas')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloainhac_cachmang', N'Nhạc Cách Mạng')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloainhac_danca', N'Nhạc Dân Ca')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloainhac_dance', N'Nhạc Dane')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloainhac_hanquoc', N'Nhạc Hàn Quốc')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloainhac_nhacvang', N'Nhạc Vàng')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloainhac_quehuong', N'Nhạc Quê Hương')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloainhac_rock', N'Nhạc Rock')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloainhac_thieunhi', N'Nhạc Thiếu Nhi')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloainhac_tre', N'Nhạc Trẻ')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloainhac_trutinh', N'Nhạc Trử Tình')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'theloainhacmoi', N'Nh?c m?i')
INSERT [dbo].[THELOAI] ([matheloai], [tentheloai]) VALUES (N'tt111', N'sfsdfds')
/****** Object:  Table [dbo].[TACGIA]    Script Date: 05/28/2017 17:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[matacgia] [nvarchar](50) NOT NULL,
	[tentacgia] [nvarchar](100) NULL,
	[thongtintacgia] [nvarchar](max) NULL,
 CONSTRAINT [PK_TACGIA] PRIMARY KEY CLUSTERED 
(
	[matacgia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'1', N'Bùi Anh Tú', N'nhac sy noi tieng')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'20', N'Võ Thiện Thanh', N'Nhạc sỹ Việt Nam')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'21', N'Trần Thanh Tùng', N'Nhạc sỹ Việt Nam')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'22', N'Anh Bằng', N'Nhạc sỹ Việt Nam')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'24', N'Nguyễn Hồng Thuận', N'Nhạc sỹ Việt Nam
')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'25', N'Trịnh Công Sơn', N'Nhac sỹ Việt Nam')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'26', N'Tuấn Khanh', N'Nhạc sỹ Việt Nam')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'27', N'Chế Thanh', N'Nhạc sỹ Việt Nam')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'28', N'Nguyễn Hữu Thiết', N'Nhạc sỹ Việt Nam')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'29', N'Nguyễn Quang Hưng', N'Nhạc sỹ Việt Nam')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'30', N'Nguyễn Đình Vũ', N'Nhạc sỹ Việt Nma')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'dongnhi', N'Đông Nhi', N'Tên thật: Đông Nhi

Tên thật: Mai Hồng Ngọc
Ngày sinh: 13/10 - Quốc gia: Việt Nam
Công ty đại diện: Tinu Production
Thuở nhỏ sống ở Hà Nội, được khoảng lớp 4 thì chuyển vào TP.HCM sống
Tên thân mật thường gọi: Nu Nu
Nick trong FC: POTATO Chúa
Cao: 1m66, nặng 49 kg
Sở thích: ca hát (tất nhiên rùi ^^), nhảy múa, đánh đàn piano, sáng tác, xem phim, shopping, ăn uống cực pro nhưng không hề "bé bự" nhá
Tật xấu: hạy quên, hay trễ giờ (vì điệu), ngủ nướng.
Các blog, forum FC trên mạng: 
Là ca sĩ kiêm nhạc sĩ, diễn viên người Việt Nam. Cô được biết đến với một số ca khúc hit dành cho lứa tuổi teen như: "Khóc", "Bối Rối", "Bí Mật Của Hạnh Phúc", "Lời Thú Tội Ngọt Ngào",.. Cùng với: Bảo Thy, Noo Phước Thịnh,... Đông Nhi được coi là người đi tiên phong cho phong trào ca sĩ bước ra từ thế giới mạng. Thân thiện với fan, không scandal, dòng nhạc dễ nghe, ca từ sâu sắc, Đông Nhi trở thành một trong những ca sĩ đắc show nhất hiện nay. Sau một thời gian ấp ủ, album đầu tay The First Step được phát hành vào tháng 9/2010. Đông Nhi đã mạnh dạn thay đổi hình ảnh, trở nên trưởng thành hơn và được giới chuyên môn đánh giá cao. Đúng một năm sau, nữa ca sĩ có lượng fan đông đảo nhất Vpop phát hành mini-album The Singer - album kết hợp với nhạc sĩ Đức Trí đánh dấu một bước phát triển mới của Đông Nhi.Trong album còn có những sáng tác của những nhạc sĩ trẻ như Linh VND,Lưu Thiên Hương,M.r Siro,...
Thuở nhỏ sống ở Hà Nội, được khoảng lớp 4 thì chuyển vào TP.HCM sống
Tên thân mật thường gọi: Nu Nu
Nick trong FC: POTATO Chúa
Cao: 1m66, nặng 49 kg
Sở thích: ca hát (tất nhiên rùi ^^), nhảy múa, đánh đàn piano, sáng tác, xem phim, shopping, ăn uống cực pro nhưng không hề "bé bự" nhá
Tật xấu: hạy quên, hay trễ giờ (vì điệu), ngủ nướng.
Các blog, forum FC trên mạng: 

Tóm lược sự nghiệp và các giải thưởng đã đạt được:
- Đơn ca xuất sắc nhất Chú Ve Con.
- Giải nhất Tuổi Đời Mênh Mông – khu vực TPHCM.
- Huy chương Bạc song ca cuộc thi Tiếng hát Học sinh – Sinh viên toàn quốc.
- Các phim tham gia: Giải Cứu Thần Chết, Thứ Ba Học Trò, Công chúa teen và ngũ Hổ Tướng
- Phát hành Album Vol.1 The First Step ngày 17 tháng 9 năm 2010. Album đoạt giải album được khán giả bình chọn nhiều nhất trong chương trình Album Vàng tháng 12 của HTV
14/9/2011:Mini Album The Singer
chiến thắng cuộc thi BFF và được tặng "sao trên trời" mang tên Dong Nhi - White Swan
Hiện đang là sinh viên trường Nhạc viện TPHCM.')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'hoaian', N'Hoài An', N'Hoài An là một nhạc sĩ Việt Nam có nhiều ca khúc nổi tiếng và đạt một số giải thưởng như Giải Mai Vàng báo Người Lao Động năm 2001; Giải Làn Sóng Xanh 2000, 2001 và 2002; Giải ấn tượng báo Mực Tím năm 2000; Giải VTV - Bài Hát Tôi Yêu 2002, 2003, 2004; Giải Ngôi sao bạch kim - báo MASK 2006...
Anh là con của nhà giáo Võ Đại Mau, người viết nhiều sách trong lĩnh vực toán học. Gia đình có 7 anh chị em. Anh có em trai là nhạc sĩ Võ Hoài Phúc (Võ Đại Hoài Phúc).[1] Anh đã và đang cộng tác với Thúy Nga Paris được 15 năm.
Anh còn là cộng tác viên của báo tin học Echip.')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'nguyenvanchung', N'Nguyễn Văn Chung', N'Nguyễn Văn Chung sinh ngày 12 tháng 4 năm 1983, là nhạc sĩ của dòng nhạc trẻ Việt Nam. Hiện nay, anh đang sinh sống và làm việc tại Thành phố Hồ Chí Minh.')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'phamtruong', N'Phạm Trưởng', N'Tên thật: Phạm Trưởng

Phạm Trưởng sinh ngày 12, tháng 01 , năm 1985 tại Bình Định. Anh hát với thể loại nhạc Pop-Pallad, R&B. Bắt đầu sự nghiệp tại Thành Phố Hồ Chí Minh, anh được biết khi là thành viên nhóm Vboys và được chú ý hơn sau các ca khúc "Yêu Không Dám Nói", "Trang Giấy Trắng.
Sinh ra trong gia đình có 3 anh chị em, Ca sĩ Phạm Trưởng là con út trong gia đình. Ngay sau khi tốt nghiệp cấp 3, chàng trai đất Bình Định vào thành phố Hồ Chí Minh sống và lập nghiệp. Thời gian đầu anh học thanh nhạc, học sáng tác và làm việc ở phòng thu, thi thoảng đi hát ở vài địa điểm nhỏ.')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'phanmanhquynh', N'Phan Mạnh Quỳnh', NULL)
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'quanghuy', N'Quang Huy', N'Ca sĩ/ ban nhạc: Quang Huy
Tên thật/ tên đầy đủ: Nguyễn Quang Huy
Ngày sinh/ Năm sinh/ thành lập: 25/08 
Nước/ quốc gia: Việt Nam
Nhóm/đại diện: Thế giới Giải trí
Giám đốc của công ty Thế Giới Giải Trí
Các tác phẩm đã phổ biến : Tình quay gót, Yêu Dại Khờ, Bước Chân Lẻ Loi, Sắc Màu Trái Tim, Hứa thật nhiều ... thất hứa thật nhiều, Không đau vì quá đau, Chàng khờ thủy chung, Lựa chọn một vì sao, Giọt nắng cuối chiều, Bước chân cuối cùng, Làm lại từ đầu
Quá trình họat động nghệ thuật :
13 tuổi tham gia ban nhạc Hải Âu, chơi nhạc tại nhà hát Hòa Bình - Tp.HCM.
18 tuổi sáng tác ca khúc đầu tay Tình Quay Gót.
21 tuổi thành lập công ty Thế Giới Giải Trí.
Hiện đang quản lý ca sĩ Ưng Hòang Phúc, H.A.T, Anh Kiệt, Phạm Quỳnh Anh, nhóm WeBOYs.')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'thuha', N'Thu Hà', N'Tên thật: Trần Thu Hà

Hình ảnh một ca sỹ nhiều màu sắc.

Là con của nhạc sỹ Trần Hiếu, cháu nhạc sỹ Trần Tiến. Năm 10 tuổi, thi vào hệ sơ cấp thanh nhạc Trường Nghệ thuật Hà Nội, sau đó học thanh nhạc tại Nhạc viện Hà Nội (hệ Đại học).Năm 1997, chính thức trở thành ca sĩ chuyên nghiệp.
- Giải "Giọng hát vàng anh" (Nhật Bản)
- Giải đặc biệt "Liên hoan ca nhạc sinh viên toàn quốc"
Lên 10 tuổi Trần Thu Hà đã theo học thanh nhạc. Công việc học hát vất vả không kém việc học đàn piano trước kia nhưng lại cuốn hút niềm say mê của cô bé. Sau 13 năm bền bỉ học tập, tháng 07 năm 2000 Hà tốt nghiệp Đại học thanh nhạc Nhạc viện Hà Nội. Hà vào nghề thời điểm không thuận lợi, "vào thời hoàng kim của nhiều người khác thì bắt buộc mình để tồn tại mình phải khác đi. Có lẽ cho đến lúc già Hà sẽ luôn luôn thay đổi, như Tắc kè hoa vậy"')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'tramtuthieng', N'Trầm Tử Thương', N'Tuổi thiếu niên

Ông tên thật là Nguyễn Văn Lợi, sinh ngày 1 tháng 10 năm 1937 tại Đại Lộc, Quảng Nam, nhưng trên giấy tờ ghi ông sinh năm 1940. Lớn lên ở miền Nam, Trầm Tử Thiêng bắt đầu ca hát từ năm lên 10 ở các thôn quê miền Nam Việt Nam trong thời kỳ kháng chiến chống Pháp 1945 đến 1949. Sau đó ông lên Sài Gòn tiếp tục học và tham gia hoạt động âm nhạc ở các học đường và các đoàn thể trẻ.
[sửa]Con đường sáng tác

Năm 1958 Trầm Tử Thiêng tốt nghiệp trường Sư Phạm và bắt đầu dạy học. Cũng năm đó đó ông bắt đầu viết nhạc, trong đó có bản "Bài Hương Ca Vô Tận" được sáng tác trong thời kỳ đầu nổi tiếng qua giọng hát Thái Thanh.
Năm 1966 Trầm Tử Thiêng nhập ngũ, thuộc Cục Tâm lý chiến thuộc Tổng Cục Chiến Tranh Chính Trị Quân lực Việt Nam Cộng Hòa. Thời gian đó ông viết các bản nhạc về lính Quân Lực Việt Nam Cộng Hòa như: "Quân trường vang tiếng gọi", "Đêm di hành", "Mưa trên poncho". Sự kiện Tết Mậu Thân 1968, Trầm Tử Thiêng sáng tác bài "Chuyện một chiếc cầu đã gãy" nói về cầu Trường Tiền trên sông Hương bị giật sập. Năm 1970 ông viết "Tôn Nữ còn buồn" về trận bão tàn phá miền Nam. Từ năm 1970, ông làm việc trong ngành Phát thanh Học đường cho đến ngày 30 tháng 4 năm 1975. Trầm Tử Thiêng cũng tham gia vào phong trào Du ca Việt Nam.
Các sáng tác của Trầm Tử Thiêng khá đa dạng nhiều loại nhạc, từ âm hưởng dân ca cho đến tình ca. Một số ca khúc nổi tiếng từ trước 1975 như: "Kinh khổ", "Chợt nghĩ về hai nơi", "Mười năm yêu em", "Tình ca mùa đông", "Mây hạ"...
Sau 1975, sau nhiều lần vượt biên không thành, ông có bị tù cải tạo một thời gian. Trầm Tử Thiêng đến Hoa Kỳ năm 1985, định cư tại Little Saigon, tiểu bang California. Ông là cố vấn ban chấp hành Hội Ký giả Việt Nam Hải ngoại 2 nhiệm kỳ 1996 - 2000. Cuối năm 1999, ông cùng các bạn văn nghệ sĩ sáng tác lập Thư viện Việt Nam tại Little Saigon.
Tại Hoa Kỳ, hợp tác làm việc với Mây Productions, Hollywood Night và trung tâm Asia, Trầm Tử Thiêng đã cùng Trúc Hồ sáng tác nhiều ca khúc cho thể loại nhạc đồng ca như: "Bước chân Việt Nam", "Việt Nam niềm nhớ", "Một ngày Việt Nam", "Tình đầu thời áo trắng", "Cám ơn anh"... và những tình khúc như "Cơn mưa hạ", "Đêm", "Đã qua thời mong chờ". Một bài hát khác của ông là "Đêm nhớ về Sài Gòn" viết 1987 cũng được nhiều người biết đến.
Tháng 8 1996, Trầm Tử Thiêng viết bản "Có tin vui giữa giờ tuyệt vọng" nhân sự kiện một làng Việt Nam được xây dựng ở Philippines dành cho người Việt lưu vong. Và bài hát đó đã nổi tiếng với tiếng hát của ca sĩ Khánh Ly.
Trầm Tử Thiêng mất tại bệnh viện Anaheim West Medical Center ngày 25 tháng 1 năm 2000. Trong chương trình Paris By Night tưởng niệm ông do trung tâm nhạc Thúy Nga tổ chức, Khánh Ly đã hát lại ca khúc "Mây hạ" cùng tiếng hát của ông được ghi âm trước đó.')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'trucphuong', N'Trúc Phương', N'Thân thế & sự nghiệp

Ông tên thật là Nguyễn Thiên Lộc, sinh năm 1933 tại xã Mỹ Hoà, quận Cầu Ngang, tỉnh Trà Vinh (Vĩnh Bình), một xứ chùa tháp ở hạ lưu sông Cửu Long, miền Nam Việt Nam. Ông sinh hoạt văn nghệ tại Ty Thông tin tỉnh Vĩnh Bình cuối thập niên 1950 trong một thời gian ngắn rồi lên Sài Gòn. Trúc Phương bắt đầu viết nhạc và lập nghiệp luôn ở đó. Bản nhạc đầu tay của Trúc Phương là bản Chiều cuối tuần và Nửa đêm ngoài phố viết vào cuối thập niên 1950. Bản nhạc Tàu đêm năm cũ của Trúc Phương được viết vào đầu 1960, tặng cho những người sĩ quan phải đi xa nhà vì lúc đó chính phủ Đệ Nhất Cộng Hoà của Ngô Đình Diệm có sắc lệnh hoán chuyển công tác sĩ quan, công chức miền Nam ra miền Trung và ngược lại.
Trúc Phương có một số lượng sáng tác rất lớn, được biết đến từ những năm cuối thập niên 1950 và được phổ biến nhiều trong suốt thập niên 1960 và sau này tại hải ngoại như: Nửa đêm ngoài phố, Buồn trong kỷ niệm, Thói đời, Hai lối mộng, Kẻ ở miền xa... Ông từng được xem như là "ông hoàng" của dòng nhạc bolero. Nhiều ca sĩ nổi tiếng nhờ trình bày những tác phẩm của ông như Chế Linh, Thanh Thúy...
Năm 1975, Trúc Phương không di tản và sống tại Sài Gòn. Ông vượt biên lần đầu năm 1976 nhưng không thành công, do vậy bị tịch thu nhà số 301 Lý Thường Kiệt, Quận 11. Những năm sau đó, ông đã nhiều lần vượt biên, nhiều lần bị bắt. Lúc ra tù, vợ con li tán, ông sống không nhà cửa, không giấy tờ tuỳ thân. Khoảng giữa năm 1985, ông được nhận vào công tác tại Hội Văn nghệ Cửu Long và được cấp một căn phòng tại số 6 Hưng Ðạo Vương, thị xã Vĩnh Long để ở. Không lâu sau, ông trở về sống ở Thành phố Hồ Chí Minh. [1]
Suốt hai mươi năm (1975-1995) nhiều ca sĩ, trung tâm ca nhạc hải ngoại đã thu thanh, thu hình những bài hát của Trúc Phương nhưng hầu như không ai biết rằng ông đang sống âm thầm, ngày lang thang hè phố, đêm ngủ trên manh chiếu... thuê ở xa cảng... rồi từ giã cõi đời trong cảnh bi đát, cô đơn trên căn gác trọ tồi tàn ở quận 11, Sài Gòn... Ông mất ngày 18 tháng 9 năm 1995, được lối xóm an táng tại nghĩa trang Lái Thiêu.

Note : - Trúc Phương quê ở Trà Vinh , có lần ông ghé thăm Xã An Quãng Hữu và sáng tác bài hát Về An Quãng Hữu , tiếc là không còn bản lưu nào để nghe')
INSERT [dbo].[TACGIA] ([matacgia], [tentacgia], [thongtintacgia]) VALUES (N'vuquocbinh', N'Vũ Quốc Bình', NULL)
/****** Object:  Table [dbo].[HANGSANXUAT]    Script Date: 05/28/2017 17:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGSANXUAT](
	[mahangsanxuat] [nvarchar](50) NOT NULL,
	[tenhangsanxuat] [nvarchar](100) NULL,
	[thongtinnhasanxuat] [nvarchar](max) NULL,
 CONSTRAINT [PK_HANGSANXUAT] PRIMARY KEY CLUSTERED 
(
	[mahangsanxuat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[HANGSANXUAT] ([mahangsanxuat], [tenhangsanxuat], [thongtinnhasanxuat]) VALUES (N'donga', N'ĐÔNG A FILM', N'Các nhà làm phim của Đông A luôn hướng đến mục tiêu mang lại cho người xem những phút giây thử giãn và bổ ích. Nhằm mang lại những sản phẩm và dịch vụ tốt nhất tới khách hàng, Đông A đã chú trọng đầu tư xây dựng một hệ thống máy móc, công nghệ sản xuất phim hiện đại, đủ khả năng cho ra đời những bộ phim nhựa, phim truyền hình, phim quảng cáo, chương trình truyền hình… đạt chất lượng cao và phù hợp với nhu cầu đa dạng của khán giả hiện nay. Đông A cũng là điểm hội tụ của nghệ thuật, cuộc sống và kinh doanh, nơi các công nghệ và kỹ năng truyền thông được sử dụng triết để nhằm giúp các doanh nghiệp đạt thành quả tối ưu cho thương hiệu và hoạt động kinh doanh của mình.Và điều quan trọng nhất là Đông A rất quan tâm đầu tư vào yếu tố con người. Với đội ngũ nhân viên và quản lý chuyên nghiệp, Đông A luôn sẵn sàng phục vụ mọi nhu cầu của quý khách hàng.')
INSERT [dbo].[HANGSANXUAT] ([mahangsanxuat], [tenhangsanxuat], [thongtinnhasanxuat]) VALUES (N'rangdong', N'Rạng Đông', N'Trung Tâm Băng Nhạc Rạng Đông được thành lập ngày 18/01/1993 được sự chấp thuận của Uỷ Ban Nhân Dân TP.HCM, Sở Kế Hoạch Đầu Tư và Sở Văn Hóa Thông Tin TP.HCM với chức năng cho phép: Sản xuất và phát hành băng đĩa nhạc sân khấu (phải thực hiện theo quy định của pháp luật có nội dung được phép lưu hành).
Dịch vụ in sang băng Video-Audio-CD-VCD-DVD và dịch vụ tổ chức biểu diễn (khi được sở Văn Hoá Thông Tin cấp phép). Dịch vụ quảng cáo trên băng đĩa có nội dung được phép lưu hành.
Thế mạnh của trung tâm hiện tại là sản xuất phát hành băng đĩa nhạc các chương trình: Ca nhạc, Cải lương, Hài, Tân hài, Tân cổ, Karaoke.
Trong 10 năm qua trung tâm đã sản xuất và phát hành được rất nhiều chương trình mang tính giáo dục tốt, tính nghệ thuật cao theo kịp với cuộc sống và nhu cầu với thị yếu của khán giả góp phần tạo ra được nhiều sản phẩm văn hóa phục vụ khán giả trong và ngoài nước.

Ngoài ra Trung Tâm còn tổ chức những Live Show ca nhạc lưu diễn xuyên Việt ở các tỉnh miền Trung, miền Tây và TP.HCM – mang chủ đề: “Ấn tượng Sài Gòn, Một thoáng Việt Nam” – đã được khán giả tin tưởng và khen ngợi. Trung tâm được khán giả tin yêu bình chọn qua báo Sài Gòn Tiếp Thị, sản phẩm của trung tâm được vào danh sách HÀNG VIỆT NAM Chất Lượng Cao nhiều năm liền. Với một bộ máy tổ chức gọn nhẹ năng động, nhiệt tình tâm huyết, yêu nghề hết mình vì nghệ thuật. Trung tâm cố gắng phấn đấu sản xuất ra nhiều sản phẩm văn hóa hoàn thiện hơn nữa để phục vụ khán giả ngày càng tốt hơn mong rằng sẽ đáp ứng xứng đáng đối với lòng tin yêu mà quý khán giả đã dành cho Trung tâm.')
/****** Object:  Table [dbo].[CASI]    Script Date: 05/28/2017 17:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASI](
	[macasi] [nvarchar](50) NOT NULL,
	[tencasi] [nvarchar](100) NULL,
	[thongtincasi] [nvarchar](max) NULL,
 CONSTRAINT [PK_CASI] PRIMARY KEY CLUSTERED 
(
	[macasi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CASI] ([macasi], [tencasi], [thongtincasi]) VALUES (N'bangcuong', N'Bằng Cường', N'')
INSERT [dbo].[CASI] ([macasi], [tencasi], [thongtincasi]) VALUES (N'damvinhhung', N'Đàm Vĩnh Hưng', N'Đàm Vĩnh Hưng tên thiệt là: Huỳnh Minh Hưng. Anh sinh ngày 2 tháng 10 năm 1971 và anh là anh cả trong gia đình của 2 anh em.
Anh đã tham gia sinh hoạt văn nghệ từ CLB ca sĩ trẻ, Trung tâm văn hoá quận 10 năm 1991. Thời đó trong CLB có rất nhiều ca sĩ nổi tiếng như Tường Vy, Minh Thuận, Ðức Lâm, Nhật Hào, Tô Thanh Phương... Sau khi đoạt giải nhất cuộc thi tuyển chọn giọng ca trẻ do Công ty Văn hoá quận 10 tổ chức tại công viên hồ Kỳ Hoà năm 1992, Vĩnh Hưng chính thức đi vào con đường ca hát chuyên nghiệp.Hiện nay, CD của anh đang tạo nên một cơn sốt trên thị trường băng nhạc và không bao lâu một VCD nhạc được sản xuất bằng hệ thống kỹ thuật số sẽ được Vĩnh Hưng thực hiện như một món quà đánh dấu quá trình đi hát của mình.
Đàm Vĩnh Hưng là một ca sỹ nhạc pop nổi tiếng tại Việt Nam.Bên cạnh thể loại pop Đàm Vĩnh Hưng còn hát rất nhiều các ca khúc nhạc tiền chiến mang tính chất trữ tình cũng như nhạc Trịnh Công Sơn. Hiện nay Đàm Vĩnh Hưng hoạt động cả ở trong nước lẫn hải ngoại và được nhiều sự mến mộ của nhiều tầng lớp thính giả.
Tiểu Sử:
Thời còn là học trò, Đàm Vĩnh Hưng từng theo học tại trường phổ thông cơ sở Ngô Quyền và trường trung học phổ thông Nguyễn Thượng Hiền tại quận Tân Bình - Thành phố Hồ Chí Minh.
Đàm Vĩnh Hưng đoạt giải nhất trong cuộc bình chọn những giọng ca xuất sắc do Câu lạc bộ bạn trẻ nhạc chiều thứ 5 của Nhà hát Bến Thành tổ chức từ tháng 9/2000 - 9/2001. Đây là cột mốc đầu tiên cho sự nghiệp của Đàm Vĩnh Hưng.
Đàm Vĩnh Hưng tham gia sinh hoạt văn nghệ từ CLB Ca Sĩ Trẻ tại Trung tâm văn hoá quận 10 từ năm 1991. Sau khi đoạt giải nhất cuộc thi tuyển chọn giọng ca trẻ do Công ty Văn hoá quận 10 tổ chức tại công viên Hồ Kỳ Hoà năm 1992, Đàm Vĩnh Hưng chính thức đi vào con đường ca hát chuyên nghiệp. Anh đã tự học đàn, tự nghiên cứu tài liệu để được làm quen với ký xướng âm và cả phong cách biểu diễn. Năm 1999, Đàm Vĩnh Hưng đã vượt qua 300 thí sinh để lọt vào danh sách 10 giọng ca có triển vọng của Trung tâm ca nhạc nhẹ Sài Gòn. Có thể xem Giọt nước mắt cho đời (Vol.05) là album đưa Đàm Vĩnh Hưng thật sự bật thành sao trong làng nhạc Việt
1991 - Tham gia vào sinh hoạt văn nghệ tụ CLB ca sỹ trẻ
1992 - Đạt giải nhất tuyển chọn giọng ca trẻ tại công viên Hồ Kỳ Hoà
1999 - Được chọn vào 10 giọng ca có triển vọng của Trung Tam Ca Nhan Nhe Sai Gòn
2001 - Đoạt giải nhất trong cuộc tuyển chọn những giọng ca xuất sắc nhất do CLB tổ chức
2002 - Đoạt giải thưởng Làn Sóng Xanh
2003 - Đoạt giải thường Làn Sóng Xanh
2003 - Đoạt giải nhất "Ngôi Sao Bạch Kim" giọng ca nam xuất sắc nhất
2004 - Đoạt giải thưởng Làn Sóng Xanh
2005 - Đoạt giải thưởng Yêu Am Nhạc, giọng ca nam xuất sắc nhất
- Bài hát yêu thích nhất: Khát vọng (Thuận Yến)
- Diễn viên thích nhất: Kim Cương, Thành Lộc
- Thích đọc báo Sài Gòn tiếp thị, Tuổi trẻ, Người lao động và sách của Nhà xuất bản Trẻ.
Liveshow:
1996: Giải Khuyến Khích trong cuộc thi "Bài ca tháng 4" do khu du lịch Đầm Sen tổ chức.
1997: Giải nhất cuộc thi "Liên hoan các giọng hát hay bán chuyên nghiệp".
1998: Giải tư Tiếng hát truyền hình Thành phố Hồ Chí Minh.
2001: Giải nhất giọng ca và gương mặt ca sĩ trẻ được yêu thích do chương trình Chiều thứ 5 dành cho các sinh viên bình chọn.
2002: Giải thưởng Làn Sóng Xanh của Đài tiếng nói Thành phố Hồ Chí Minh.
2003: Giải nhất Ngôi sao bạch kim - "Giọng ca nam xuất sắc nhất".
2004: Giải thưởng Làn Sóng Xanh: "Ca sĩ được yêu thích nhất" trong năm 2004.
2005: Giải thưởng Lá Phong của Tổng lãnh sự Canada.
2005: Hai giải thưởng Làn Sóng Xanh: "Ca sĩ được yêu thích nhất" và Ca sĩ của năm 2005.
2006: Giải thưởng Ngôi sao bạch kim - Ca sĩ có phong cách ấn tượng nhất.
2007: Giải cống hiến 2007 - Ca sĩ xuất sắc nhất 2007.
2008: Hai giải thưởng Làn Sóng Xanh: "10 ca sĩ được yêu thích nhất" và "Ca sĩ của năm". Huy chương bạc thể loại nhạc nhẹ và nhạc dân gian trong cuộc thi Liên hoan giọng hát vàng Asean 2008.
2009 : Nam ca sỹ được yêu thích nhất của HTV Awards - giải thưởng của Đài truyền hình TP.HCM; Giải thưởng Làn Sóng Xanh : Gương mặt của năm
2010: 5 giải thưởng Zing Music Awards 2010 và Ca sĩ được yêu thích nhất giải thưởng HTV Awards
2011: Giải thưởng HTV Awards : Ca sĩ được yêu thích nhất lần thứ hai.
2012: 
Đàm Vĩnh Hưng phát hành single Tuổi Hồng Thơ Ngây, một ca khúc nổi tiếng, sáng tác khuyết danh vào những năm đầu thập niên 1990. Đây là single đầu tay trong sự nghiệp 15 năm ca hát của mình.')
INSERT [dbo].[CASI] ([macasi], [tencasi], [thongtincasi]) VALUES (N'dantruong', N'Đan Trường', N'Từ những năm cuối thập niên 90, cái tên Đan Trường được các khán giả yêu nhạc trẻ luôn nhắc đến! Một gương mặt đẹp trai, một vóc dáng lý tưởng trên sân khấu và một chất giọng ngọt ngào, êm dịu, Đan Trường làm người ta hy vọng về một “hiện tượng mới” của nhạc trẻ trong năm 1999.

Tên của Đan Trường là Phạm Đan Trường, sinh 29-11-1976, là con trưởng trong gia đình của 4 anh em. Đan trường có 3 em gái và gia đình không có ai hoạt động trong nghành nghề nghệ thuật.

Hồi nhỏ, Đan Trường rất mê nhạc, thích hát và hát khá haỵ Năm 1996, Nhà văn hoá quận 10 tổ chức cuộc thi giọng hát hay, Đan Trường dự thi với ca khúc Gửi người tôi yêu và đoạt giải ba. Nhưng phải đến năm 1997, Đan Trường mới thực sự theo nghề ca hát.

Mỗi ca sĩ đều có phong cách thể hiện khác nhau, không ai giống ai Đan Trường đang nỗ lực hết sức để có một phong cách thể hiện bài hát mang dấu ấn riêng của mình.

Đan Trường rất cẩn trọng trong việc chọn bài hát cho phù hợp với chất giọng của mình. May mắn Đan Trường được ngay chính các nhạc sĩ sáng tác bài hát hướng dẫn. Đan Trường đang cố gắng học thêm thanh nhạc ở cô Mỹ An (Nhạc viện thành phố), cũng như ngoại ngữ để củng cố thêm nghề nghiệp cho mình.

Trong suốt quá trình tham gia vào ca hát, Đan Trường đạt được nhiều giải thưởng như: Ca sĩ được yêu thích nhất năm 1999 do Tạp chí Thanh niên trao tặng; Nhân vật được yêu thích năm 1999 do bạn đọc và báo Mực Tím trao tặng, Cúp vàng ngôi sao 2000 do Báo Văn hóa, Đặc san Văn hóa và Đài truyền hình Việt Nam trao tặng; Giải thưởng Mai Vàng do báo Người Lao Động bình chọn; Giải thưởng Làn Sóng Xanh (Đài Tiếng nói Nhân dân TP.HCM) nhiều năm liền; Giải thưởng VTV Bài hát tôi yêu (Đài Truyền hình Việt Nam); Giải thưởng ca sĩ được yêu thích nhất của HTV 3 năm liền; cùng nhiều giải thưởng lớn nhỏ khác...

Đầu tháng 12 vừa qua. Đan Trường đã tổ chức cho mình 1 liveshow tại sân khấu Trống Đồng với chủ đề Ngôi Sao Bay, trong liveshow này Đan Trường đã giới thiệu những ca khúc mới nhất của mình trong 2 Album Vol 20 và 21 vừa phát hành trước đó vài ngày. Liveshow đã được đầu tư rất lớn với kinh phí gần 1 tỷ đồng, lớn nhất trong cái show mà sân khấu Trống Đồng thực hiện.

Sở thích: Du lịch, thời trang bụi
Thể thao: Thể hình, bơi lội
Niềm đam mê lớn nhất: Âm nhạc
Người yêu kính nhất: Ba, Mẹ và anh Hoàng Tuấn
Tính tình: Hiền nhưng quyết đoán
Ca khúc thể hiện được yêu thích nhất: Đi về nơi xa, Kiếp ve sầu, Bước chân lẻ loi, Dòng sông băng, Tình khúc vàng, Mãi mãi một tình yêu…
Nhạc sĩ yêu thích nhất: Vũ Thành, Tuấn Khanh
Ca sĩ yêu thích nhất: Mỹ Linh, Thanh Lam, Whitney Houston, Mariah Carey.
Ban nhạc yêu thích: Backstreetboys, Boyzone.')
INSERT [dbo].[CASI] ([macasi], [tencasi], [thongtincasi]) VALUES (N'dongnhi', N'Đông Nhi', N'Tên thật: Mai Hồng Ngọc
Ngày sinh: 13/10 - Quốc gia: Việt Nam
Công ty đại diện: Tinu Production
Tên thật: Mai Hồng Ngọc
Ngày sinh: 13 tháng 10 năm 1988) 
- Quốc gia: Việt Nam
Công ty đại diện: Tinu Production
Thuở nhỏ sống ở Hà Nội, được khoảng lớp 4 thì chuyển vào TP.HCM sống
Tên thân mật thường gọi: Nu Nu
Nick trong FC: POTATO Chúa
Cao: 1m66, nặng 49 kg
Sở thích: ca hát (tất nhiên rùi ^^), nhảy múa, đánh đàn piano, sáng tác, xem phim, shopping, ăn uống cực pro nhưng không hề "bé bự" nhá
Tật xấu: hạy quên, hay trễ giờ (vì điệu), ngủ nướng.
Các blog, forum FC trên mạng: 
Là ca sĩ kiêm nhạc sĩ, diễn viên người Việt Nam. Cô được biết đến với một số ca khúc hit dành cho lứa tuổi teen như: "Khóc", "Bối Rối", "Bí Mật Của Hạnh Phúc", "Lời Thú Tội Ngọt Ngào",.. Cùng với: Bảo Thy, Noo Phước Thịnh,... Đông Nhi được coi là người đi tiên phong cho phong trào ca sĩ bước ra từ thế giới mạng. Thân thiện với fan, không scandal, dòng nhạc dễ nghe, ca từ sâu sắc, Đông Nhi trở thành một trong những ca sĩ đắc show nhất hiện nay. Sau một thời gian ấp ủ, album đầu tay The First Step được phát hành vào tháng 9/2010. Đông Nhi đã mạnh dạn thay đổi hình ảnh, trở nên trưởng thành hơn và được giới chuyên môn đánh giá cao. Đúng một năm sau, nữa ca sĩ có lượng fan đông đảo nhất Vpop phát hành mini-album The Singer - album kết hợp với nhạc sĩ Đức Trí đánh dấu một bước phát triển mới của Đông Nhi.Trong album còn có những sáng tác của những nhạc sĩ trẻ như Linh VND,Lưu Thiên Hương,M.r Siro,...
Thuở nhỏ sống ở Hà Nội, được khoảng lớp 4 thì chuyển vào TP.HCM sống
Tên thân mật thường gọi: Nu Nu
Nick trong FC: POTATO Chúa
Cao: 1m66, nặng 49 kg
Sở thích: ca hát (tất nhiên rùi ^^), nhảy múa, đánh đàn piano, sáng tác, xem phim, shopping, ăn uống cực pro nhưng không hề "bé bự" nhá
Tật xấu: hạy quên, hay trễ giờ (vì điệu), ngủ nướng.
Các blog, forum FC trên mạng: 

Tóm lược sự nghiệp và các giải thưởng đã đạt được:
- Đơn ca xuất sắc nhất Chú Ve Con.
- Giải nhất Tuổi Đời Mênh Mông – khu vực TPHCM.
- Huy chương Bạc song ca cuộc thi Tiếng hát Học sinh – Sinh viên toàn quốc.
- Các phim tham gia: Giải Cứu Thần Chết, Thứ Ba Học Trò, Công chúa teen và ngũ Hổ Tướng
- Phát hành Album Vol.1 The First Step ngày 17 tháng 9 năm 2010. Album đoạt giải album được khán giả bình chọn nhiều nhất trong chương trình Album Vàng tháng 12 của HTV
14/9/2011:Mini Album The Singer
chiến thắng cuộc thi BFF và được tặng "sao trên trời" mang tên Dong Nhi - White Swan
Hiện đang là sinh viên trường Nhạc viện TPHCM.')
INSERT [dbo].[CASI] ([macasi], [tencasi], [thongtincasi]) VALUES (N'luongbichhuu', N'Lương Bích Hữu', N'Tên thật: Lương Bích Hữu

Cựu thành viên của nhóm hát H.A.T

Từ trước khi cộng tác cùng Công ty Thế giới Giải trí (TGGT), Lương Bích Hữu đã là ca sĩ độc quyền của Nguyễn Production. Sau một thời gian làm việc cùng TGGT và nhóm H.A.T, Lương Bích Hữu trở về lại Nguyễn Production và cho phát hành album đơn đầu tay, đây có thể xem là album solo đầu tiên của các thành viên nhóm H.A.T.

Thông tin thêm về Lương Bích Hữu:
Tên thật: Lương Bích Hữu
Ngày sinh: 01/9/1984
Nguyên quán: Trung Hoa
Tính cách: chân thật, sâu sắc
Ca sĩ yêu thích: Coco Lee
Nhạc sĩ yêu thích: Nguyễn Hà, Đức Huy, Jacky Cheung 
Thể loại nhạc: Pop, ballad
Sở thích thể thao: bơi lội, xem võ thuật
Thời gian rãnh: học thêm tiếng Việt (đã nói lưu loát tiếng Quảng Đông, Phổ thông)
Loài hoa yêu thích: Hồng
Loài vật yêu thích: chó Bắc Kinh 
Thích phim hoạt hình, hài
Màu yêu thích thì có lẽ là màu vàng')
INSERT [dbo].[CASI] ([macasi], [tencasi], [thongtincasi]) VALUES (N'namcuong', N'Nam Cường', N'Tên thật: Nam Cường

Tên thật: Nguyễn Nam Cường
Ngày sinh: 16/09 - Quốc gia: Việt Nam
Công ty đại diện: Music Box Entertaiment
Website: http://www.musicbox.vn/
Nam Cường (sinh năm 1985, quê ở Đà Nẵng) là ca sĩ, diễn viên người Việt Nam. Anh được biết đến là cựu thành viên nhóm nhạc Yo!Band (là nhóm nhạc gồm những người thắng cuộc trong cuộc thi Yo! Cùng ước mơ anh năm 2003 do nhãn hàng Yo Most và VTV thực hiện năm 2003). 

Cuối năm 2009, anh tạo được dấu ấn với album vol.2 mang tên Bay giữa ngân hà, gồm các ca khúc như: Một lần thôi, Hãy cho anh biết tên nhé,... và đặc biệt là ca khúc chủ đề Bay giữa ngân hà đã tạo được làn sóng hâm mộ với các bạn trẻ và công động dân mạng.Với ca từ nhẹ nhàng, sâu lắng, ca khúc này đã chiếm được tình cảm với khán giả.
Thành tích
- Giải nhất HSSV Thanh lịch Ðà Nẵng (2002)
- Huy chương vàng tiếng hát HSSV Đà Nẵng (2003)
- Giải nhất Yo cùng ước mơ xanh (2004)
- Huy chương vàng liên hoan ca múa nhạc trường nghệ thuật toàn quốc(2008).
- Đạt giải nhất Học Sinh-Sinh Viên thanh lịch toàn thành phố Đà Nẵng (2002).
- Đạt huy chương Vàng tiếng hát HSSV toàn thành phố Đà Nẵng (2003).
- Top 5 Album Vàng tháng 6 với album Bay giữa ngân hà (2010).')
INSERT [dbo].[CASI] ([macasi], [tencasi], [thongtincasi]) VALUES (N'phamtruong', N'Phạm Trưởng', N'Tên thật: Phạm Trưởng
Ngày sinh: 12/01 - Quốc gia: Việt Nam
Công ty đại diện: Ca sĩ Tự Do
Quê quán: Bình Định
Khởi nghiệp: NV Phòng thu, và là thành viên của nhóm Vboys.
Video clip đã phát hành: Đàn Ông Là Thế, Gió Sẽ Đưa Em Về, Yêu Không Dám Nói
Chiều Cao:1,67m
Cân nặng: 56 kg
Nick Yahoo: phamtruong.info
Email:phamtruong@ptmusic.info
Gia Đình: Cha, Mẹ, Chị, Anh, Chị, Trưởng út.
Sở Thích: Du lịch, chơi Game.
Sở Trường: Thu Âm và Sáng Tác.
Màu Yêu Thích: Trắng & Đen.
Món ăn ưa thích: cá kèo nướng.
Môn thể thao thích nhất: Bóng đá.
Thần tượng: Lý Liên Kiệt.
Con vật thích nhất: chó
Điều ghét nhất: Bị người khác nói xấu sau lưng.
Điều thích nhất: Uống cafe cùng bạn bè.
Tính tình: hiền ,hòa đồng, vui vẻ.
Ước mơ: Viết một bài hát cực đỉnh (bất hũ)

Với sự thành công rực rỡ của nhóm Vboys qua các ca khúc ; Đàn Ông Là Thế, Xin Lỗi Anh Đã Sai,...do chính mình sáng tác Phạm Trưởng đã nhận đươc những tình cảm rất quý báu của các bạn gần xa . Sau khi nhóm Vboys tách rời , thời gian đầu Phạm Trưởng gặp rất nhiều khó khăn nhưng nhờ động lực của gia đình va các bạn Phạm Trưởng cũng đã vượt qua khó khăn đó để phát hành 2 album vol1 , vol2 và được khán giả yêu thích qua các ca khúc do mình sáng tác: Chiếc Áo Cô Đơn, Yêu Không Dám Nói, Người Dự Bị, Em Vô Tình Hay Cố Ý...

Phạm Trưởng lúc mới vào nghề gặp rất nhiều khó khăn để có được như ngày hôm nay cũng nhờ vào những tình cảm yêu mến của các bạn. Phạm Trưởng sẽ cố gắng thật nhiều cho ra đời nhiều bài hát hay để không phụ lòng các bạn đã yêu thương.')
INSERT [dbo].[CASI] ([macasi], [tencasi], [thongtincasi]) VALUES (N'sonca', N'Sơn Ca', N'Tên thật: Sơn Ca

Sơn Ca tên thật là Nguyễn Thiên Sơn Ca. Sinh ngày 1/1/1985.
Sơn Ca hoạt động ca hát từ những năm 1990 khi còn là học sinh tiểu học tại Nhà Văn Hoá Quận 11. Năm 2003 Sơn Ca tốt nghiệp Phổ Thông Trung Học và thi đậu Đại Học Kinh Tế nhưng không theo học vì điều kiện kinh tế gia đình khó khăn.

Năm 2004 Sơn Ca sinh hoạt tại Trung Tâm Văn Hoá Tp.HCM và là phó chủ nhiệm CLB ca sĩ. Năm 2005 Sơn Ca lại thi đậu Cao Đẳng Văn Hoá Nghệ thuật nhưng lại không thể theo học vì điều kiện kinh tế.

Trong thời gian này Sơn Ca thành lập nhóm SMS và một năm sau nhóm ta rã do một định hướng trong biểu diễn. Vào tháng 7/2007 sau khi ca khúc trong bộ phim "Gọi Giấc Mơ Về" được nhiều khán giả yêu thích, Sơn Ca đã mạnh dạn thực hiện album đầu tay với sự giúp đỡ của nhạc sĩ Vũ Quốc Bình.')
INSERT [dbo].[CASI] ([macasi], [tencasi], [thongtincasi]) VALUES (N'unghoangphuc', N'Ưng Hoàng Phúc', N'Là một nam ca sĩ có ngoại hình đẹp, chất giọng nam trung ấm áp dễ nghe, từng là thành viên nhóm 1088 và được hâm mộ nhiều nhất, tuy không phải là người hát chính.

Khi 1088 tan rã, Ưng Hoàng Phúc chính thức ký hợp đồng độc quyền và chịu sự quản lý của công ty Thế giới Giải Trí. Đến nay, Ưng Hoàng Phúc đã phát hành được 4 album đơn và 1 album cùng nhóm HAT.')
/****** Object:  Table [dbo].[BAIHAT]    Script Date: 05/28/2017 17:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIHAT](
	[mabaihat] [nvarchar](50) NOT NULL,
	[tenbaihat] [nvarchar](100) NULL,
	[matheloai] [nvarchar](50) NULL,
	[maalbum] [nvarchar](50) NOT NULL,
	[macasi] [nvarchar](50) NULL,
	[matacgia] [nvarchar](50) NULL,
	[mahangsanxuat] [nvarchar](50) NULL,
	[loibaihat] [nvarchar](max) NULL,
 CONSTRAINT [PK_BAIHAT] PRIMARY KEY CLUSTERED 
(
	[mabaihat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'1', N'ANH CÒN NỢ EM', N'theloainhac_trutinh', N'18', N'damvinhhung', N'nguyenvanchung', N'donga', N'Anh còn nợ em công viên ghế đá, công viên ghế đá, lá đổ chiều êm…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'10', N'ẤY', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Tôi gởi bông hoa này cho ấy luôn nhớ, mãi luôn có tôi trong lòng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'100', N'ĐỊA CHỈ EM ĐÂU ', N'theloainhac_tre', N'maimai1tinhyeu', N'dantruong', N'1', N'rangdong', N'Một bầy cừu non không người chăn đón, một bọn trẻ con lót tót đi vào đêm…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'101', N'ĐIỀU KHÔNG THỂ MẤT', N'theloainhac_tre', N'21', N'namcuong', N'1', N'donga', N'Như con sóng trào dạt dào yêu thương, mưa giông bão nổi trên thế gian…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'102', N'ĐIỆU DÂN CA BUỒN ', N'theloainhac_danca', N'gockhuat', N'dantruong', N'hoaian', N'rangdong', N'Một điệu dân ca sao mà nghe thấm đượm ân tình…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'103', N'ĐỊU CON ĐI NHÀ TRẺ', N'theloainhac_thieunhi', N'tranggiaytrang', N'bangcuong', N'trucphuong', N'donga', N'Con thương ơi con quý ơi, nhà trẻ đó con nằm con chơi...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'104', N'ĐOẠN CUỐI CON ĐƯỜNG', N'theloainhac_tre', N'xoatenanh', N'luongbichhuu', N'thuha', N'donga', N'Anh gọi tên em trong chiều thu, mưa nhẹ ướt con đường lá đổ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'105', N'ĐÔI CHÂN TRẦN ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Tôi muốn quên đi tháng với ngày cha đi lượm quả ngọt rừng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'106', N'ĐÔI TIM YÊU (TÌNH YÊU ĐẸP 2) ', N'theloainhac_tre', N'saumoigiacmo', N'dongnhi', N'trucphuong', N'rangdong', N'Muốn nắm tay em ta phiêu du khắp nơi chân trời…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'107', N'ĐỘI TA LỚN LÊN CÙNG ĐẤT NƯỚC', N'theloainhac_quehuong', N'gockhuat', N'damvinhhung', N'trucphuong', N'donga', N'Đất nước muôn ngàn yêu dấu đang rợp bóng cờ, khắp nơi tưng bừng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'108', N'ĐỜI KHÔNG NHƯ LÀ MƠ', N'theloainhac_tre', N'16', N'bangcuong', N'tramtuthieng', N'donga', N'Đêm kia em nằm mơ, mơ thấy anh lìa xa cuộc đời…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'109', N'ĐỢI CHỜ ', N'theloainhac_tre', N'damtrongtim', N'namcuong', N'quanghuy', N'donga', N'Đến đến bên em một lần, nói nói cho em một lời…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'11', N'BA THÁNG TẠ TỪ', N'theloainhac_trutinh', N'17', N'damvinhhung', N'nguyenvanchung', N'donga', N'Người ơi thấm thoát niên học hết rồi, chúc đi cạn lời giây phút ly bôi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'110', N'ĐƯA EM ', N'theloainhac_danca', N'gockhuat', N'damvinhhung', N'tramtuthieng', N'donga', N'Đưa em đến ngõ đi tìm bao la, đưa chân chim nhỏ đi về hiền hòa…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'111', N'ĐỪNG SỢ ', N'theloainhac_tre', N'tranggiaytrang', N'sonca', N'vuquocbinh', N'rangdong', N'ĐỪNG SỢ ')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'112', N'ĐỪNG TRÁCH EM ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Đừng trách em, sẽ có lúc anh hiểu ra, đừng trách em…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'113', N'ĐỪNG TRÁCH NGƯỜI ƠI', N'theloainhac_tre', N'damtrongtim', N'damvinhhung', N'trucphuong', N'rangdong', N'Đừng trách người ơi tội thân em, làm sao bắt con tim vâng lời…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'114', N'ĐỪNG VỘI VÀNG', N'theloainhac_tre', N'saumoigiacmo', N'bangcuong', N'trucphuong', N'donga', N'Em đi loanh quanh đã lâu, em đi xa xôi đến đâu…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'115', N'ĐƯỜNG VẮNG EM', N'theloainhac_tre', N'maimai1tinhyeu', N'dongnhi', N'nguyenvanchung', N'rangdong', N'Có nhiều đêm mưa vẫn rơi, trong lòng chợt nghĩ về em...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'116', N'ĐƯỜNG VỀ HAI LỐI', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Em yêu giờ có lẽ ta mãi chia tay nhau rồi')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'117', N'ĐƯỜNG VỀ VIỆT BẮC ', N'theloainhac_cachmang', N'gockhuat', N'damvinhhung', N'vuquocbinh', N'donga', N'Chiều nào áo tím nhiều quá, lòng thấy rộn ràng nhớ người…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'118', N'EM ', N'theloainhac_tre', N'18', N'sonca', N'vuquocbinh', N'rangdong', N'Này em có thấu, anh đang mỏi mệt, ngần ấy năm…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'119', N'EM BAY TRONG ĐÊM PHÁO HOA ', N'theloainhac_nhacvang', N'12', N'damvinhhung', N'nguyenvanchung', N'rangdong', N'Bay lên nào em bay lên nào, hội vui toàn thắng tưng bừng pháo hoa...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'12', N'BÀN TAY TRẮNG', N'theloainhac_tre', N'tranggiaytrang', N'dantruong', N'hoaian', N'rangdong', N'Một lần nhìn vào lòng bàn tay trắng xóa, ôi những nếp nhăn…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'120', N'EM CHỜ ANH TRỞ LẠI ', N'theloainhac_tre', N'saumoigiacmo', N'bangcuong', N'tramtuthieng', N'rangdong', N'Em đi giữa biển vàng, nghe mênh mang trên đồng lúa hát...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'121', N'EM ĐI TRONG TƯƠI XANH', N'theloainhac_thieunhi', N'16', N'sonca', N'tramtuthieng', N'donga', N'Em đi trong tươi xanh, chim hòa bình tung cánh, mênh mang một bầu trời...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'122', N'EM KHÔNG CẦN ', N'theloainhac_hanquoc', N'tranggiaytrang', N'luongbichhuu', N'vuquocbinh', N'rangdong', N'thì lại đi, rồi thì lại chẳng cần gì, trách than dối gian…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'123', N'GIÁ NHƯ TÔI ĐỪNG YÊU EM ', N'theloainhac_tre', N'tranggiaytrang', N'luongbichhuu', N'dongnhi', N'rangdong', N'Em giờ đây đã xa, bao ngày qua chỉ là con tim anh trót lỡ yêu em…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'124', N'GIAO MÙA ', N'theloainhac_cachmang', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'háng giêng đến sớm lộc nõn như em, em thơm như ')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'125', N'GIẤC MƠ ANH VÀ EM BÊN NHAU ', N'theloainhac_nhacvang', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'rangdong', N'Cho anh yêu em như ngày xưa, là lần đầu mình mới gặp nhau')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'126', N'GIẤC MỘNG PHÙ DU ', N'theloainhac_tre', N'saumoigiacmo', N'luongbichhuu', N'dongnhi', N'rangdong', N'Biết nói gì với nhau khi tình yêu ta đã không còn…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'127', N'GIỌT BUỒN ', N'theloainhac_tre', N'tranggiaytrang', N'sonca', N'quanghuy', N'rangdong', N'Tôi đi giữa dòng đời, một khung trời xanh biếc, giọt buồn nào lắng đọng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'128', N'GIỌT SƯƠNG ', N'theloainhac_tre', N'saumoigiacmo', N'dantruong', N'1', N'rangdong', N'Ngồi một mình nhìn ra cánh vườn, nhìn từng giọt sương trong trắng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'129', N'GIỜ MÌNH EM ÔM BAO ĐẮNG CAY ', N'theloainhac_tre', N'saumoigiacmo', N'sonca', N'tramtuthieng', N'rangdong', N'Nơi đâu phương nao mong gặp anh, ngậm ngùi đếm những vì sao đêm…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'13', N'BẠN CÙNG TÔI', N'theloainhac_nhacvang', N'demoithuquadi', N'damvinhhung', N'nguyenvanchung', N'donga', N'Mênh mông bao la chốn rừng người chập chùng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'130', N'GIỮ LẠI CHO ẤU THƠ ', N'theloainhac_rock', N'tranggiaytrang', N'bangcuong', N'tramtuthieng', N'donga', N'Còn tiếng nói giữ cho êm đềm, còn bối rối giữ cho tay mềm…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'131', N'GÓC KHUẤT ', N'theloainhac_tre', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'hế giới nơi em thuộc về là một góc khuất cho anh đợi chờ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'132', N'GÓT SON LẤP VÙI', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'trucphuong', N'donga', N'Em đi chẳng ngó gì lúc Sài Gòn đang vui, Sài Gòn nhìn theo khóc…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'133', N'GỬI BỨC THƯ SANG', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Gửi bức thì thư i i i sang ấy mấy ngồi là em ư ư ngồi rồi...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'134', N'GỬI GIÓ VỀ TRỜI', N'theloainhac_tre', N'maimai1tinhyeu', N'sonca', N'tramtuthieng', N'rangdong', N'Ngày ấy trong vòng tay ta cùng nhau ước mơ dựng xây…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'135', N'HÀ NỘI RƠI RƠI TIẾNG NGUYỆT CẦM', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'thuha', N'donga', N'Nguyệt cầm nguyệt cầm từng giọt rơi rơi, mùa xuân gió như đưa hương…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'136', N'HÀ NỘI VÀ TÔI', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'hoaian', N'donga', N'Nơi tôi sinh Hà Nội, ngày tôi sinh một ngày bỏng cháy…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'137', N'HẠ BUỒN ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'quanghuy', N'donga', N'Mượn một ca khúc viết lên tâm sự, biết bao nỗi niềm phút giây tạ từ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'138', N'HAI CON THẰN LẰN CON ', N'theloainhac_thieunhi', N'saumoigiacmo', N'namcuong', N'quanghuy', N'donga', N'Hai con thằn lằn con đùa nhau cắn nhau đứt đuôi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'139', N'HAI KỶ NIỆM MỘT CHUYẾN ĐI ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'trucphuong', N'donga', N'Tôi đưa người đi, bước chân hoa mộng vào đời, một chiều nhẹ mưa bay…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'14', N'BAY ĐI THẦM LẶNG', N'theloainhac_danca', N'xoatenanh', N'bangcuong', N'tramtuthieng', N'rangdong', N'Có chút bồi hồi trong phút chia ly, có những mặt người không yêu là vì…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'140', N'HAI NGƯỜI LÍNH', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'trucphuong', N'donga', N'Một ngày bình yên mây trắng bay, người lính Việt Minh già…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'141', N'HẠNH PHÚC CHÍNH LÀ EM', N'theloainhac_tre', N'22', N'sonca', N'quanghuy', N'rangdong', N'Có ấm áp nào bằng vòng tay của em khi đêm lạnh về…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'142', N'HẠNH PHÚC CỦA CON ', N'theloainhac_tre', N'maimai1tinhyeu', N'damvinhhung', N'phamtruong', N'donga', N'Đời con chưa nghe tiếng mẹ ầu ơ ru trong giấc ngủ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'143', N'HẠNH PHÚC MỈM CƯỜI ', N'theloainhac_tre', N'saumoigiacmo', N'sonca', N'vuquocbinh', N'rangdong', N'Từng ngày trôi sao quá nhanh, cuốn tan đi vui buồn trong nắng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'144', N'HẠNH PHÚC THOÁNG QUA ', N'theloainhac_tre', N'tranggiaytrang', N'dantruong', N'nguyenvanchung', N'donga', N'Đến với nhau một lần nữa thôi, hãy lắng nghe con tim này khóc…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'145', N'HÁT RU TÌNH YÊU ', N'theloainhac_tre', N'13', N'namcuong', N'quanghuy', N'rangdong', N'Hát trong đêm tình nhớ, hát cho anh mộng mơ, hát ru ta ngàn nỗi đau này…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'146', N'HÁT THẦM ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'quanghuy', N'donga', N'Đêm rất đêm và xa rất xa, con dế kêu rất buồn')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'147', N'HÃY SỐNG THẬT LÒNG', N'theloainhac_tre', N'12', N'luongbichhuu', N'vuquocbinh', N'donga', N'Dối gian mà chi tình ta sẽ hết khi biệt ly, trái tim cuồng si..')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'148', N'HÃY TIN VÀO TÌNH YÊU CỦA ANH', N'theloainhac_tre', N'saumoigiacmo', N'dantruong', N'1', N'rangdong', N'HÃY TIN VÀO TÌNH YÊU CỦA ANH')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'149', N'HÃY VỀ VỚI ANH', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Có phải em về đêm nay, anh nghe bước chân ngập ngừng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'15', N'BẾN BỜ YÊU THƯƠNG', N'theloainhac_tre', N'saumoigiacmo', N'bangcuong', N'nguyenvanchung', N'donga', N'Từng đêm em mơ mơ có anh bên đời, dù ta đang cách hai phương trời…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'150', N'HẸN MÙA TRĂNG SAU ', N'theloainhac_tre', N'20', N'bangcuong', N'trucphuong', N'donga', N'Ai ca dưới trăng mà sao nghe nhói đau tim mình..')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'151', N'HOA NHỚ THƯƠNG AI ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'trucphuong', N'donga', N'Nhớ ngày nào hoa tươi sắc khoe màu, một đời hoa yêu dấu…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'152', N'HOA VÀ NÚI ', N'theloainhac_tre', N'saumoigiacmo', N'luongbichhuu', N'vuquocbinh', N'donga', N'Hoa kia sẽ rơi sẽ tan vào núi, bao nhiêu sắc hoa tả tơi vì nhớ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'153', N'HOÀI NIỆM BẾN SÔNG ', N'theloainhac_tre', N'gockhuat', N'bangcuong', N'trucphuong', N'donga', N'Trên bến sông mưa giông hiu quạnh niềm thương...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'154', N'HỌC TRÒ ', N'theloainhac_thieunhi', N'gockhuat', N'luongbichhuu', N'thuha', N'donga', N'Nhìn cành phượng vĩ đỏ thắm sân trường rêu phủ xanh…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'155', N'HỌC TRÒ TRƯỜNG LÀNG ', N'theloainhac_thieunhi', N'saumoigiacmo', N'luongbichhuu', N'thuha', N'donga', N'Tình yêu học trò từ thuở hàn vi, tình yêu học trò hoa phượng rớt sân trường…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'156', N'HÒN ĐÁ TRONG VƯỜN TÔI ', N'theloainhac_tre', N'tranggiaytrang', N'luongbichhuu', N'tramtuthieng', N'donga', N'HÒN ĐÁ TRONG VƯỜN TÔI ')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'157', N'HỒ GƯƠM SÁNG SỚM ', N'theloainhac_tre', N'saumoigiacmo', N'luongbichhuu', N'vuquocbinh', N'donga', N'Bàn chân ai nhẹ êm ái, Hồ Gươm sớm mai, hàng cây xanh về soi bóng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'158', N'HỐI TIẾC ', N'theloainhac_tre', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Còn gì nữa đâu mà bảo nhau đợi chờ, tình em hút sâu…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'159', N'HỒNG MÔI ', N'theloainhac_rock', N'xoatenanh', N'dongnhi', N'vuquocbinh', N'rangdong', N'Có cơn gió khe khẽ đùa tóc mây, có tia nắng e ấp hồng môi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'16', N'BẾN NƯỚC CON ĐÒ', N'theloainhac_quehuong', N'gockhuat', N'luongbichhuu', N'trucphuong', N'rangdong', N'Bến nước con đò ngày nào tôi vẫn thường qua…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'160', N'HƠN CẢ MỘT TÌNH YÊU', N'theloainhac_tre', N'damtrongtim', N'sonca', N'quanghuy', N'donga', N'Nhiều đêm rồi nhìn sao trời lòng như vẫn muốn tìm về…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'161', N'HỢP RỒI TAN', N'theloainhac_tre', N'saumoigiacmo', N'bangcuong', N'quanghuy', N'rangdong', N'Ngày tháng vẫn cứ thế trôi dần đi, bao yêu thương mộng mơ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'162', N'HUẾ NGỌC', N'theloainhac_danca', N'gockhuat', N'damvinhhung', N'tramtuthieng', N'donga', N'Huế có gì để tôi phải thương, bên ni bên nớ mấy độ đường…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'163', N'HY VỌNG MONG MANH ', N'theloainhac_tre', N'tranggiaytrang', N'bangcuong', N'thuha', N'rangdong', N'Ngắm những áng mây cứ trôi lờ lững, bầu trời cao trong xanh...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'164', N'IM LẶNG THỞ DÀI (TÔI ĐANG LẮNG NGHE)', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'im lặng của đêm tôi đã lắng nghe, im lặng của ngày tôi đã lắng nghe…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'165', N'KHÁT KHAO MÔI HỒNG', N'theloainhac_tre', N'saumoigiacmo', N'sonca', N'quanghuy', N'donga', N'Bỏ lại đằng sau bao vương vấn theo tôi suốt những tháng ngày…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'166', N'KHẮC TÊN EM TRÊN CÁT', N'theloainhac_tre', N'tranggiaytrang', N'sonca', N'trucphuong', N'donga', N'Khắc tên Kiều trên cát, ngọn sóng phút chốc xóa nhòa…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'167', N'KHẮC TÊN EM TRÊN CÁT', N'theloainhac_quehuong', N'gockhuat', N'sonca', N'1', N'donga', N'Khắc tên Kiều trên cát, ngọn sóng phút chốc xóa nhòa…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'168', N'KHĂN QUÀNG THẮP SÁNG BÌNH MINH', N'theloainhac_hanquoc', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'KHĂN QUÀNG THẮP SÁNG BÌNH MINH')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'169', N'KHI CÓ EM ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Em một ngày xa nhau là muôn nỗi sầu, để rồi không gian…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'17', N'BIỂN ĐÊM', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Nửa đêm biển mệt nhoài vì suốt ngày ầm ĩ, nên đã nằm ngủ yên')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'170', N'KHI ĐỜI TRẮNG TAY ', N'theloainhac_tre', N'maimai1tinhyeu', N'damvinhhung', N'nguyenvanchung', N'donga', N'Tôi trắng tay sao còn nói yêu tôi làm chi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'171', N'KHI EM NHẬN RA', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Dường như thiếu vắng một hình bóng chờ em, chỉ còn nỗi nhớ')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'173', N'KHI LÁ VÀNG RƠI ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Có những đêm nào mình nhớ tên nhau, có phút giây nào đời vắng xôn xao…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'174', N'KHI MỘT MÌNH ', N'theloainhac_tre', N'saumoigiacmo', N'bangcuong', N'quanghuy', N'donga', N'Khi con đường một mình hai hàng cây nhớ gió, khi con trăng một mình…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'175', N'KHI TỔ QUỐC CẦN', N'theloainhac_cachmang', N'gockhuat', N'damvinhhung', N'tramtuthieng', N'donga', N'Ta đang bước đi trên con đường vinh quang, trong tim khắc ghi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'176', N'KHOẢNG CÁCH HAI TÂM HỒN', N'theloainhac_trutinh', N'12', N'damvinhhung', N'nguyenvanchung', N'donga', N'Sao khi bên nhau nước mắt em tuôn rơi, người hờn trách…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'18', N'BIỂN VẮNG ', N'theloainhac_trutinh', N'gockhuat', N'sonca', N'trucphuong', N'donga', N'Biển vắng hoàng hôn không bóng người mờ xa đôi cánh chim rã rời…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'19', N'BÌNH YÊN', N'theloainhac_tre', N'gockhuat', N'bangcuong', N'phamtruong', N'rangdong', N'Chiều nay có cơn mưa, mưa rơi trôi vào nỗi nhớ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'2', N'ANH HÃY ĐẾN QUÊ EM ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'1', N'rangdong', N'Em ơi hãy đến thăm quê hương anh Thái Bình, về tắm biển Đồng Châu...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'21', N'BÔNG MÙ U', N'theloainhac_quehuong', N'gockhuat', N'luongbichhuu', N'phanmanhquynh', N'rangdong', N'Anh chờ em dưới bóng cây mù u che mắt tình yêu chúng mình…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'22', N'BỨC TRANH TRONG TIM ', N'theloainhac_quehuong', N'gockhuat', N'luongbichhuu', N'trucphuong', N'rangdong', N'Cứ nhắm mắt là bàn tay anh vẽ một nụ cười...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'23', N'CA DAO TỰ TÌNH ', N'theloainhac_quehuong', N'gockhuat', N'dantruong', N'dongnhi', N'rangdong', N'Ví dầu em là cô dâu, cau ngon anh đốn, vườn trầu anh khai...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'24', N'CÀ PHÊ ĐẮNG', N'theloainhac_tre', N'21', N'phamtruong', N'phamtruong', N'rangdong', N'Cà phê đắng ơi, cà phê đắng ơi, người yêu dấu ơi, cà phê đắng buồn ơi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'25', N'CÀ PHÊ ĐẮNG VÀ MƯA ', N'theloainhac_tre', N'conlaijsauconmua', N'unghoangphuc', N'nguyenvanchung', N'rangdong', N'Ngồi lặng thinh quán vắng tanh, em một mình chẳng còn anh…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'26', N'CẢM ƠN', N'theloainhac_tre', N'saumoigiacmo', N'bangcuong', N'hoaian', N'rangdong', N'Ngày trôi qua ngày, giờ quanh ta dường như biết bao điều đổi thay…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'27', N'CÁNH HOA PENSEE', N'theloainhac_dance', N'17', N'unghoangphuc', N'vuquocbinh', N'rangdong', N'Ngày nao xa anh em gửi lại, gửi trao cho anh một cành hoa...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'28', N'CĂN GÁC TRỐNG ', N'theloainhac_tre', N'conlaijsauconmua', N'unghoangphuc', N'phamtruong', N'rangdong', N'Căn gác nhỏ một ngày mưa, không gian tĩnh lặng trong muôn giấc mơ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'29', N'CHỈ CẦN ', N'theloainhac_nhacvang', N'22', N'sonca', N'thuha', N'rangdong', N'Chỉ cần có một đóa hoa nở trước vườn nhà là ước mơ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'3', N'ANH NHẬN RA', N'theloainhac_tre', N'saumoigiacmo', N'unghoangphuc', N'tramtuthieng', N'rangdong', N'Có biết bao con đường mà sao ta vẫn đi con đường ấy…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'30', N'CHỈ CẦN EM HẠNH PHÚC ', N'theloainhac_tre', N'17', N'bangcuong', N'vuquocbinh', N'rangdong', N'Tình yêu đôi lúc không cùng cảm giác yêu thương từ hai người…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'31', N'CHỈ CÒN BÓNG EM BÊN ĐỜI ', N'theloainhac_tre', N'21', N'phamtruong', N'vuquocbinh', N'rangdong', N'Còn đâu nữa bao nhiêu tháng năm ta bên nhau...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'32', N'CHỈ HAI ĐỨA MÌNH THÔI NHÉ ', N'theloainhac_tre', N'saumoigiacmo', N'luongbichhuu', N'quanghuy', N'rangdong', N'Chỉ hai đứa mình thôi nhé, đừng cho trăng nép sau hè…')
GO
print 'Processed 100 total records'
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'33', N'CHỈ LÀ MÙA THU RƠI ', N'theloainhac_nhacvang', N'gockhuat', N'damvinhhung', N'quanghuy', N'rangdong', N'Một mình ta bước thôi trong buồn tênh bóng tối…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'34', N'CHỈ MUỐN YÊU ANH', N'theloainhac_tre', N'tranggiaytrang', N'luongbichhuu', N'vuquocbinh', N'rangdong', N'Ngày xưa trong vòng tay anh, anh hay ví em là giọt sương sớm…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'35', N'CHỈ RIÊNG MÌNH EM HIỂU', N'theloainhac_tre', N'10', N'dongnhi', N'tramtuthieng', N'rangdong', N'Đời không như ước mơ nên tình yêu bất diệt, anh vội mang nó đi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'36', N'CHIẾC LÁ CUỐI CÙNG ', N'theloainhac_danca', N'gockhuat', N'damvinhhung', N'tramtuthieng', N'rangdong', N'Em thời gian sương gió phôi pha, anh ngồi đây anh nhớ đến em…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'37', N'CHIẾC LÁ TÌNH YÊU', N'theloainhac_tre', N'10', N'luongbichhuu', N'quanghuy', N'rangdong', N'Một chút nắng đem cho mùa đông để mây kia thêm hồng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'38', N'CHIỀU CUỐI NĂM ', N'theloainhac_rock', N'damtrongtim', N'namcuong', N'phamtruong', N'rangdong', N'Chiều cuối năm ngoài sân tuyết trắng, nghe gió đông về…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'39', N'CHIỀU MƯA XỨ DỪA ', N'theloainhac_trutinh', N'21', N'namcuong', N'nguyenvanchung', N'rangdong', N'Về quê em Bến Tre giữa cơn mưa chiều gió lạnh buồn se...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'4', N'ANH Ở ĐÂU', N'theloainhac_tre', N'saumoigiacmo', N'luongbichhuu', N'hoaian', N'donga', N'Anh đã từng yêu em âm thầm, theo bước đường em đi đến cùng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'40', N'CHIỀU TRÊN ĐỒI THÔNG ', N'theloainhac_quehuong', N'gockhuat', N'damvinhhung', N'hoaian', N'donga', N'Chiều xưa trên đồi thông ta đi dưới mây hồng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'41', N'CHIỀU VẮNG EM ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'vuquocbinh', N'rangdong', N'Chiều nay vắng em lòng bỗng dưng sao thấy buồn…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'42', N'CHIM VÀNH KHUYÊN ', N'theloainhac_thieunhi', N'maimai1tinhyeu', N'phamtruong', N'tramtuthieng', N'rangdong', N'Có con chim vành khuyên nhỏ, dáng trông thật ngoan ngoãn quá…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'43', N'CHÌM DƯỚI CƠN MƯA ', N'theloainhac_trutinh', N'gockhuat', N'luongbichhuu', N'thuha', N'rangdong', N'Chìm dưới cơn mưa và chìm dưới đêm khuya, trời đất bao la…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'44', N'CHO ANH QUAY LẠI NƠI BẮT ĐẦU ', N'theloainhac_tre', N'tranggiaytrang', N'phamtruong', N'phanmanhquynh', N'rangdong', N'Nếu biết trước mình yêu một ngày, nếu biết trước mình xa một đời…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'45', N'CHO EM MỘT CON ĐƯỜNG', N'theloainhac_rock', N'conlaijsauconmua', N'dongnhi', N'tramtuthieng', N'rangdong', N'Hạnh phúc nơi đâu sao lại trôi đi quá mau…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'46', N'CHO MỘT NGƯỜI TÌNH XA', N'theloainhac_tre', N'tranggiaytrang', N'sonca', N'quanghuy', N'rangdong', N'Người đến đời tôi một chiều rồi người đi, tình đến đời tôi một mùa rồi tình 
xa…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'47', N'CHO TÌNH YÊU CHÚNG MÌNH', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'thuha', N'donga', N'Thôi đã xa nhau rồi kể từ đêm nay, từ con đường có lá me rơi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'48', N'CHỜ ĐỢI QUÁ KHỨ ', N'theloainhac_tre', N'damtrongtim', N'bangcuong', N'thuha', N'rangdong', N'Ngọn nến lấp lánh quanh căn phòng anh, ngọn nến ấy…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'49', N'CHỜ EM TRONG MƯA ', N'theloainhac_tre', N'conlaijsauconmua', N'namcuong', N'vuquocbinh', N'rangdong', N'Trời mưa gió con đường trơn đó bây giờ em đâu…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'5', N'ANH SẼ CỐ QUÊN EM', N'theloainhac_trutinh', N'tranggiaytrang', N'namcuong', N'nguyenvanchung', N'rangdong', N'Bao ngày qua khi bóng em dần xa, mình anh lẻ bước trên đường dài…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'50', N'CHỢT NHƯ GIẤC MƠ', N'theloainhac_nhacvang', N'gockhuat', N'dongnhi', N'vuquocbinh', N'rangdong', N'Đường phố xung quanh tấp nập, người người, xe xe cộ cộ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'51', N'CHỦ NHẬT TÌNH YÊU (SUNDAY BUỒN) ', N'theloainhac_nhacvang', N'saumoigiacmo', N'luongbichhuu', N'phanmanhquynh', N'rangdong', N'Chiều chủ nhật chờ em trước lối cũ, đi cà phê ta bên nhau…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'52', N'CHÚC EM HẠNH PHÚC ', N'theloainhac_tre', N'saumoigiacmo', N'phamtruong', N'vuquocbinh', N'rangdong', N'Đoạn đường ngày hôm nay sao bỗng dài đến thế…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'53', N'CHUYỆN TÌNH PHONG NHA', N'theloainhac_trutinh', N'gockhuat', N'dantruong', N'tramtuthieng', N'rangdong', N'Hơ ai về thăm động Phong Nha. Ngược dòng sông theo con thuyền..')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'54', N'CHUYỆN TÌNH XÓM LÁ ', N'theloainhac_cachmang', N'gockhuat', N'dongnhi', N'trucphuong', N'rangdong', N'Chiều về làng quê bên mái tranh xóm lá yên lặng, chuyện tình của tôi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'55', N'CÓ BAO GIỜ', N'theloainhac_tre', N'17', N'bangcuong', N'tramtuthieng', N'rangdong', N'Có bao giờ đoạn đường em đi, nhớ đến anh dù là giây phút…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'56', N'CÓ NHỮNG CON ĐƯỜNG', N'theloainhac_quehuong', N'gockhuat', N'damvinhhung', N'hoaian', N'rangdong', N'Đường phố dài, một đường phố dài, đường phố này một chiều tôi tới…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'57', N'CỎ VÀ MƯA ', N'theloainhac_nhacvang', N'saumoigiacmo', N'phamtruong', N'dongnhi', N'rangdong', N'Em cỏ khát, anh mưa rào đầu hạ, cỏ uống mưa, run rẩy cỏ đang thì…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'58', N'CON CHIM HÓT TRÊN CÀNH CÂY ', N'theloainhac_thieunhi', N'19', N'phamtruong', N'vuquocbinh', N'rangdong', N'Con chim hót trên cành cây, chào chúng em tới trường đấy…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'59', N'CON ĐÊ CHUNG TÌNH', N'theloainhac_tre', N'tranggiaytrang', N'unghoangphuc', N'tramtuthieng', N'rangdong', N'Tôi muốn cùng anh đi về lại quê xưa, đi qua con mương cây cầu tre đã cũ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'6', N'ANH SẼ QUAY VỀ ', N'theloainhac_tre', N'16', N'phamtruong', N'nguyenvanchung', N'donga', N'Cười đi em dẫu cho mình cần phải chia ly…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'60', N'CON NHÀ NGHÈO ', N'theloainhac_tre', N'17', N'luongbichhuu', N'dongnhi', N'rangdong', N'Nghèo xác nghèo xơ nghèo đâu có gì, đời mình tay trắng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'61', N'CON QUAY', N'theloainhac_rock', N'xoatenanh', N'luongbichhuu', N'tramtuthieng', N'rangdong', N'Từ khi bé tôi rất thích nhìn con quay tít quay tròn…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'62', N'CÒN MÃI NỒNG NÀN', N'theloainhac_tre', N'15', N'bangcuong', N'tramtuthieng', N'rangdong', N'Vì anh đã yêu dại khờ hay vì em hững hờ, tình yêu đến trong vội vàng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'63', N'CÒN NHỮNG DẤU YÊU ', N'theloainhac_tre', N'xoatenanh', N'sonca', N'trucphuong', N'rangdong', N'Ngàn lời yêu thương ghép thư tình xanh, dòng mực mong manh…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'64', N'CÔ BÉ DỄ THƯƠNG (CÔ BÉ NHỎ XINH)', N'theloainhac_tre', N'damtrongtim', N'luongbichhuu', N'thuha', N'donga', N'Này em cô bé nhỏ xinh, chờ ai em ngồi một mình…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'65', N'CÔ BÉ MẮT TRÒN ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'CÔ BÉ MẮT TRÒN ')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'66', N'CÔ ĐƠN BIỂN ', N'theloainhac_quehuong', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Bâng khuâng chiều mênh mang biển, xôn xao ngọn gió bay về đâu')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'67', N'CÙNG MỘT KIẾP HOA ', N'theloainhac_tre', N'17', N'luongbichhuu', N'vuquocbinh', N'rangdong', N'Trông em xinh xinh mắt tình tình, đôi môi tươi tươi má hồng hồng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'68', N'CŨNG SẼ CHÌM TRÔI ', N'theloainhac_tre', N'tranggiaytrang', N'luongbichhuu', N'trucphuong', N'rangdong', N'Nhật nguyệt í a trên cao, ta ngồi ôi a dưới thấp, một dòng í a trong veo...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'69', N'CUỘC SỐNG MUÔN MÀU', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Tôi luôn hay vu vơ mình là ai, sao như đang mơ, đôi khi vô tư…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'7', N'ANH YÊU EM (I LOVE YOU) ', N'theloainhac_tre', N'tranggiaytrang', N'phamtruong', N'vuquocbinh', N'donga', N'Ngại ngùng em nhớ anh, đã yêu từ lâu lắm, chỉ biết lặng thầm nhìn…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'70', N'CUỘC TÌNH ĐÊM', N'theloainhac_tre', N'15', N'luongbichhuu', N'thuha', N'donga', N'Ngồi trong đêm vắng nhìn lá rụng rơi, ngồi im trong gió tóc cuốn tả tơi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'71', N'CUỘC TÌNH THẦM LẶNG ', N'theloainhac_tre', N'xoatenanh', N'sonca', N'vuquocbinh', N'donga', N'Ngày nào bên em tình anh như dại khờ, và ngày em đi để lòng anh…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'72', N'CUỘC TÌNH XƯA', N'theloainhac_tre', N'saumoigiacmo', N'sonca', N'tramtuthieng', N'rangdong', N'Em đã cho tôi cho tôi lời hẹn hò, em đã cho tôi cho tôi nhiều ước mơ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'73', N'DẤU PHỐ EM QUA', N'theloainhac_tre', N'15', N'bangcuong', N'tramtuthieng', N'rangdong', N'Dấu phố em qua một chiều thu nắng vàng, nhẹ nhàng rơi rơi đón lá thu bay…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'74', N'DỆT MỘNG UYÊN ƯƠNG', N'theloainhac_tre', N'saumoigiacmo', N'namcuong', N'tramtuthieng', N'rangdong', N'Nửa hồn tôi đang mang bao nhớ mong, bóng dáng em ở nơi xa vời…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'75', N'DỆT TẦM GAI', N'theloainhac_quehuong', N'gockhuat', N'damvinhhung', N'vuquocbinh', N'rangdong', N'Cài then tiếng khóc của em bằng đôi môi anh…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'76', N'DÒNG ĐỜI', N'theloainhac_tre', N'tranggiaytrang', N'namcuong', N'tramtuthieng', N'donga', N'Cuộc đời như dòng sông theo con nước cuộn trôi, mà ai cũng thầm mong…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'77', N'DÒNG SÔNG ÊM Ả ', N'theloainhac_dance', N'17', N'dongnhi', N'vuquocbinh', N'donga', N'Ta ẩn mình trong dòng sông êm ả, trôi qua đời em như khúc tự tình…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'78', N'DÒNG SÔNG XƯA ', N'theloainhac_tre', N'19', N'dongnhi', N'thuha', N'donga', N'Ngày xưa mỗi lần nghỉ học, tôi thường thơ thẩn bên sông…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'79', N'DỐI NGƯỜI DỐI LÒNG', N'theloainhac_tre', N'saumoigiacmo', N'luongbichhuu', N'trucphuong', N'rangdong', N'Đã bao lần em gặp anh tay cùng ai sánh vai, lòng em nhói đau...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'8', N'ANH YÊU EM LẮM ', N'theloainhac_tre', N'damtrongtim', N'sonca', N'thuha', N'donga', N'Đoạn đường hôm nay sao thấy như thật ngắn, đi bên em…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'80', N'DÙ CÓ CÁCH XA', N'theloainhac_tre', N'conlaijsauconmua', N'dongnhi', N'vuquocbinh', N'rangdong', N'Na na… Nếu mai kia mà người yêu anh đi về nơi nào xa vời…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'81', N'DÙ MẤT BAO NHIÊU THỜI GIAN ', N'theloainhac_nhacvang', N'gockhuat', N'bangcuong', N'tramtuthieng', N'rangdong', N'Tình giờ tan vỡ, mộng giờ đã lỡ, phải chăng vì anh hững hờ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'82', N'DUNG NHAN MÙA HẠ', N'theloainhac_quehuong', N'gockhuat', N'damvinhhung', N'vuquocbinh', N'donga', N'Khi em tắm nắng cho tôi xin hai thứ, mặt trời vẻ kiêu sa…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'83', N'DUYÊN HẢI QUÊ EM ', N'theloainhac_quehuong', N'13', N'damvinhhung', N'tramtuthieng', N'donga', N'Quê hương em miền duyên hải, vùng đất xanh biển cả mênh mông…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'84', N'DUYÊN PHẬN', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'hoaian', N'rangdong', N'Phận là con gái chưa một lần yêu ai, nhìn về tương lai mà thấy như…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'85', N'ĐA ĐA BAY XA', N'theloainhac_tre', N'tranggiaytrang', N'sonca', N'trucphuong', N'rangdong', N'Đa đa giờ đã sổ lồng, để cho bến mãi đợi trông con thuyền')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'86', N'ĐA NGHI (RIGHT NOW)', N'theloainhac_tre', N'13', N'namcuong', N'trucphuong', N'donga', N'Vì em đây ngu ngơ em đôi khi dại khờ theo anh…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'87', N'ĐÁNH THỨC BÌNH MINH ', N'theloainhac_trutinh', N'20', N'damvinhhung', N'trucphuong', N'donga', N'Vùi lấp buồn đau từ trong con tim, mình tôi về đâu đập tan màn ')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'88', N'ĐÀNH XA NHAU ', N'theloainhac_tre', N'saumoigiacmo', N'sonca', N'vuquocbinh', N'donga', N'Ngày hôm qua em cứ nghĩ là mình có lỗi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'89', N'ĐẮM SAY TÌNH ĐẦU ', N'theloainhac_tre', N'damtrongtim', N'bangcuong', N'quanghuy', N'rangdong', N'Tình đầu như trong giấc mơ, tình đầu vương bao ý thơ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'9', N'ÁNH TRĂNG LẺ LOI ', N'theloainhac_tre', N'19', N'luongbichhuu', N'tramtuthieng', N'donga', N'Ngày anh ra đi trong đêm cho tình em phải hững hờ…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'90', N'ĐEN TRẮNG', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'vuquocbinh', N'donga', N'Có một chiều ngồi vuốt tóc em, một sợi tóc trắng bỗng buông rơi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'91', N'ĐẸP MÃI TÌNH TA', N'theloainhac_cachmang', N'gockhuat', N'dongnhi', N'tramtuthieng', N'donga', N'Lả lướt nàng mây buông cánh tiên rũ mềm, đẩy đưa cơn gió…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'92', N'ĐỂ ĐỜI MỘT CÂU NGHĨA TÌNH ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Sống ở đời tình nghĩa chi, yêu hết con tim cũng chẳng được gì…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'93', N'ĐỂ MÃI ĐƯỢC GẦN ANH', N'theloainhac_tre', N'gockhuat', N'sonca', N'trucphuong', N'donga', N'Có khi chợt quên lối đi phía sau nhà, khúc quanh đầu tiên')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'94', N'ĐỂ TRÁI TIM LUÔN GẦN NHAU', N'theloainhac_nhacvang', N'gockhuat', N'damvinhhung', N'trucphuong', N'donga', N'Chia tay nơi đây những đêm dài vui bất tận…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'95', N'ĐÊM Ả ĐÀO ', N'theloainhac_nhacvang', N'tranggiaytrang', N'sonca', N'thuha', N'rangdong', N'Đèn mờ như ánh sao rơi, đời như ly rượu đầy vơi, đầy vơi nghĩa gì…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'96', N'ĐÊM HOANG VU ', N'theloainhac_quehuong', N'12', N'damvinhhung', N'trucphuong', N'donga', N'Một mình tôi giữa bóng đêm lạc loài, thương về em nhớ về em.')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'97', N'ĐÊM NAY ANH NHỚ EM ', N'theloainhac_tre', N'conlaijsauconmua', N'dongnhi', N'tramtuthieng', N'rangdong', N'Đêm nay anh nhớ phút giây hôm nào, nhẹ nhàng mình trao lời yêu lúc đầu…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'98', N'ĐÊM TRẮNG ', N'theloainhac_trutinh', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Nắng đã tắt cho đêm đen hiện về, bóng tối xuống cho tim tôi nặng nề…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'99', N'ĐI TÌM DĨ VÃNG ', N'theloainhac_tre', N'21', N'bangcuong', N'tramtuthieng', N'rangdong', N'Đêm chưa tròn giấc ngủ, canh dài lẻ loi ngồi nhìn mưa rơi…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'anh van doi cho', N'Anh Vẫn Đợi Chờ', N'theloainhac_trutinh', N'maimai1tinhyeu', N'dantruong', N'quanghuy', N'donga', N'Nhìn là bay mùa thu dịu êm, lòng nhớ em anh thầm gọi tên
Lời đó như dòng sông tình ơi, mà nay em vì sao ra khơi
Lặng ngắm lá mùa thu, nhìn cơn mưa con mưa lá vàng
Lặng nghe tiếng thời gian để hồn anh mơ về dĩ vãng

Tình là chiếc lá thu vàng rơi, buồn rơi
Tình là nhung nhớ đôi mắt em, hỡi người
Tình là lưu luyến sống trong kỷ niệm
Nhẹ nhàng ôm lấy từng ngày tay trong vòng tay
Ngồi buồn anh hát nhớ về em, tình ca
Gởi vào cơn gió thu nhẹ đưa, trời xa
Từng ngày ta yêu, nhớ nhau rất nhiều
Dịu dàng tình em như là giấc mơ
Anh vẫn đợi chờ
Oh oh oh oh oh ... Trở về cùng anh, em hỡi
Oh oh oh oh oh ... Nàng là giấc mơ anh vẫn đợi chờ')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'anhchicancoem', N'Tim Anh Chỉ Có Em', N'theloainhac_tre', N'16', N'phamtruong', N'phamtruong', N'rangdong', N'khi ta bên nhau em biet ko long anh khat khao cuoc tinh minh mai mai ,mai ben nhau ko xa roi nhau ,dau the gian doi roi tinh anh van chi can co em ,nguoi yeu oi em co hay chang,khi ta xa nhau em biet ko ,long anh nho em tung nu cuoi anh mat van ben anh ko bao gio quen nho chiec hon ban dau ngay xua do ma ta da trao du xa nhau nhung long anh van yeu.,nguyen the tinh anh mai mai chi co rieng minh em ,du cuoc doi bao giong to nhugn tim anh van co em,em hay quay ve day ben anh nhu xua ta cugn ben nhau,va minh cugn nhau sanh buoc thap sagn cho tinh yeu ,vi that long anh chi co rieng em biet ko,nhugn co sao em gio dau em noi phuong nao cho long anh dau em biet ko.')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'anhphailamsao', N'Anh Phải Làm Sao (mp3)', N'theloainhac_trutinh', N'maimai1tinhyeu', N'dantruong', N'nguyenvanchung', N'rangdong', N'Làm sao anh yêu thương một người đã không còn yêu anh như ngày nào
Đã không cần bên anh như ngày nào , dường như ta chẳng quen
Làm sao anh quên đi một người với bao lời hứa trong tình yêu
Hứa trọn đời vẫn yêu mãi không hề cách xa dù có phôi pha .
Là em em đó người biết không đã cho anh một vết thương
vết thương giờ vẫn đau , nỗi đau giờ vẫn chưa nguôi ngoai .

Làm sao để xóa hết vết thương đang còn đây
Làm sao để xóa hết nỗi đau trong trái tim
Anh đang lạc lối đi , anh đang phải cố quên
Quên đi người không cần anh nữa.
Tại sao lại đánh thức vết thương đã ngủ quên
Tại sao lại đánh thức vết thương đã cố quên
Thôi thôi chỉ thế thôi ,dẫu biết không còn chi .
Tại sao lòng cứ mãi khổ đau')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'bhgockhuat', N'Góc Khuất', N'theloainhac_tre', N'gockhuat', N'damvinhhung', N'nguyenvanchung', N'donga', N'Em ơi !
Lời cuối cùng của em.. hãy nói cho anh biết !
Vì sao như thế ?
Anh phải làm sao ?
Phải làm sao đây ?

Thế giới nơi em thuộc về là một góc khuất cho anh đợi chờ
Thế giới nơi em thuộc về chỉ của riêng em
Chuốc lấy bao nhiêu hận sầu mà vẫn cứ mong em quay đầu
Chẳng lẽ yêu thương anh đây không thay đổi được em ?
Nước mắt cho nhau nghẹn lời mình cùng khóc cho duyên bẽ bàng
Em biết anh yêu em nhiều mà sao không thể ?

Đã có đôi lần cố thay đổi số phận để sống bên nhau giống như bao người
Đã có đôi khi em nói sẽ quên đi cuộc tình oan trái để về bên anh
Đã có đôi lần cố thay đổi số phận mà cớ sao ta mãi không bình thường ?
Cố gắng bao nhiêu tan vỡ giấc mơ yêu, một đời dang dở anh vẫn hoài đợi em.

Trời gieo chi bao trái ngang ?
Gần anh em mất đi linh hồn
Đành thôi đau đớn riêng mình anh
Nhìn em hạnh phúc khi là chính em.')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'bhhaydemoithuquendi', N'Để Mọi Thứ Qua Đi', N'theloainhac_trutinh', N'demoithuquadi', N'unghoangphuc', N'phanmanhquynh', N'donga', N'Để mọi thứ qua đi em nhé?!
Vì bao lâu nay đôi ta không gần nhau
Và valentine anh không đến bên em..
Em cũng vậy

Để mọi thứ qua đi em nhé?!
Dù cuốn nhật ký khơi lại những kỷ niệm
Và tim anh lại rung lên như khi mới yêu..
Năm tháng đầu

Từ khi không biết nghĩ cho em
Thì thật ra trong anh đâu phải yêu
Và khi xa cách 2 trái tim
Nên chia tay và tìm lối khác

Hãy để mọi thứ được qua đi
Cho ngày mới bắt đầu
Hãy để ngày tháng mình bên nhau
Trở thành hồi ức mãi trong ta
Những lời hẹn ước còn chưa phai
Nhưng tình đã hết rồi
Đành quên...!

Hãy để mọi thứ được qua đi
Nỗi buồn sẽ vơi dần
Anh tin sẽ có 1 bờ vai yêu thương lắng lo cho em
Anh mong ước những niềm vui mới bên cạnh em trong đời
Và mong em hãy quên mãi mãi 1 kỷ niệm buồn

Để mọi thứ qua đi em nhé?!
Vì khi yêu nhau đâu ai mong giả từ
Và những lời hứa lúc ta bên nhau..
Đâu phải gian dối

Hãy để mọi thứ được qua đi em nhé?!
Và mong con tim đón lấy những yêu thương
Vì anh hôm nay đã thấy 1 tâm hồn cho anh niềm vui..
Nhưng không phải em')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'changbabymilo', N'Chàng Baby Milo', N'theloainhac_tre', N'19', N'bangcuong', N'dongnhi', N'rangdong', N'Baby là anh đó, baby thật xinh trai
Baby đội nón hiphop, áo Baby Milo cùng quần tụt
Baby làm quen bé, baby thật ga lăng
Baby tặng bé chocolate thơm ngon với chú gấu xinh Teddy
Và rồi mến thật nhiều, nhớ thật nhiều
Nhểnh mặt lời nói ngại ngùng lời nói ngại ngùng của baby
Rồi rất muốn gặp baby, rất muốn được yêu thương
Được baby xinh trai chở đi ăn kem nè

ĐK:
Hai mắt ngại ngùng ấp e thẹn thùng khi baby nhìn
Rồi ca hát thật nhiều với bao điệu nhạc con tim nhảy múa
Cùng đi khắp con đường ấm êm trong lòng khi tay trong tay
Một ngày trong xanh, một ngày chỉ có chúng ta
Oh baby! I love you!')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'chim trang moi coi', N'Chim Trắng Mồ Côi', N'theloainhac_quehuong', N'maimai1tinhyeu', N'dantruong', N'nguyenvanchung', N'donga', N'Tình Anh như con nước sông dài
Con nước về cho cây trái trổ bông
Tình Em như lúa xanh trên đồng
Cây lúa chờ ngày mùa đơm bông
Chiều quê hai đưa hay vui đùa
Em cánh cò, Anh chim sáo mồ côi
Phù sa vun đắp chia đôi bờ
Anh bên bồi Em bên lở mong chờ

(Thương nghe câu mái đẩy
Nhớ điệu lý tình tang)
Ngân nga khúc chờ nhau
Khi mùa lúa chín sẽ đón đưa nhau

Trăng sắp tàn trôi xa nơi bến đậu
Chim sáo bay xa mãi không về
Em vẫn chờ Anh nơi đây bên lở
Rồi nhớ thương Anh câu hát mong chờ

(Thương chim quyên nức nở
Thương con cá rô trên đồng)
Nghe chim trắng mồ côi
Đâu còn ai đón ai nhớ mà mong

Ơ… ơ lý chàng ơi (Ơ lý nàng ơi)
Ơ lý chàng ơi em thương mà em đợi
Con nước buồn tênh câu hát lý mong chờ
Mùa lúa thơm đã chín chín lâu rồi
Mà bấy lâu Anh chưa ghé về thăm
Ơi chim sáo mồ côi (Chim trắng mình ên)
Chim sáo mồ côi thương Anh mà Em đợi
Đêm trắng cò than nghe tái tái tê lòng
Ngồi nhớ Anh, Em ngó ngó lên trời
Chim sáo không về, cánh cò mô côi
Em nhớ Anh nhiều sao phụ tình Em')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'damtrongtim', N'Dằm trong tim new', N'theloainhac_tre', N'damtrongtim', N'luongbichhuu', N'thuha', N'rangdong', N'Bao ngày qua dù tình yêu đã xa


Đêm từng đêm nỗi nhớ chẳng phai nhoà


Bao ngày qua từng lời anh nói yêu 


Vẫn còn đây thật lòng không thể quên.





Khi tình yêu đến em không nhận ra


Để ngày hôm nay nỗi nhớ như dằm trong tim.





Vì một tình yêu không thể nói


Vì một hình dung không thể quên


Vì ngày anh đến em vô tình để mình anh lạnh lùng.


Rồi ngày tình ra đi thật xa


Rồi ngày con tim đã nhận ra 


Nhưng chỉ còn biết nhớ biết thương trong muộn màng nỗi đau.





Vì một tình yêu không thể nói


Vì một hình dung không thể quên


Vì dằm trong tim em cứ khẽ nhói đau khi đợi chờ.


Chờ một ngày anh sẽ lại đến


Và em sẽ không để lần nữa mất anh


Vì không biết yêu anh quá dại khờ.')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'den mot luc nao do', N'Đến Một Lúc Nào Đó', N'theloainhac_trutinh', N'maimai1tinhyeu', N'dantruong', N'phanmanhquynh', N'donga', N'Đêm từng đêm khi màn sương buông xuống trên
thênh thang bao nhiêu nẻo đường.
Anh ngồi đây nhớ em nhiều và thầm mong
một ngày rực rỡ tình yêu.
Anh chờ em như lúc xưa
như bây giờ và chờ đợi mai sau...
cho dù mưa giông cho dù nắng cháy anh vẫn chờ ...

Những tiếng cười rộn vang khung trời
rồi lúc dỗi hờn em lặng im không nói.
Những tháng ngày hồn nhiên nô đùa
tuổi thơ tuyệt vời người ơi !

Chiếc lá vàng nhẹ rơi cung đàn
những nốt nhạc cho bài ca anh hát.
Hát với đời nagỳ vui bên người
để con tim nghe thiết tha.

Đk:
Lòng anh trót yêu em lâu rồi
mà chưa dám nói câu yêu người
sợ tình mong manh xóa nhòa ngày xanh
đành câm nín em đâu hay tình anh.

Mùa xuân đến bên em tươi cười
hạ vàng tung nắng mai yêu đời
mùa thu đi qua nói gì cùng em
mùa đông đến anh lơ ngơ từng đêm...

Ngày xưa đã cho anh hi vọng
một mai em hiểu anh nỗi lòng.
Cuộc đời cho ta quá nhiều niềm vui
cần chi nói những lời đầu môi......phải không em?')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'doi nguoi ca si', N'Đời Người Ca Sĩ', N'theloainhac_tre', N'maimai1tinhyeu', N'dantruong', N'nguyenvanchung', N'rangdong', N'Đời Người Ca Sĩ
Đóng góp: Jtaimehung
Là người ca sĩ hát ca phiêu lãng 1 đời lúc vinh quang lúc tả tơi mấy ai biết đến cuộc đời.

Và tôi đã hát hát say sưa với nụ cười nhưng trái tim tôi vẫn lẻ loi vẫn cô đơn theo từng đêm xuống,

Tôi mang lới ca tiếng hát giúp vui mong người quên đi năm tháng buồn đau chỉ mong sao đời ca vang khắp chốn.

Lắng tai nghe lời hát giọt lệ ai đang ướt mi vì lời tôi ca là bài tình ca thiết tha 1 ngày bình yên khi thấy em thơ lắng nghe tôi,vỗ tay theo câu ca nhạc vui hôm nay nào cùng hát vang.

Buồn đau ai biết đắng cay luôn đến cùng tôi cất tiếng ca khi mắt lệ rơi vẫn luôn cố gắng gượng cười,rùi người ta nói hát ca không có ngày mai nhưng trái tim tôi đã trọn trao vẫn mong sao 1 đời hát mãi.

Tôi mang lới ca tiếng hát giúp vui mong người quên đi năm tháng buồn đau chỉ mong sao đời ca vang khắp chốn.

Lắng tai nghe lời hát giọt lệ ai đang ướt mi vì lời tôi ca là bài tình ca thiết tha 1 ngày bình yên khi thấy em thơ lắng nghe tôi,vỗ tay theo câu ca nhạc vui hôm nay nào cùng hát vang.

đời người ca sĩ thật buồn những lúc với ánh sáng nụ cười i,rồi từng đêm vắng đơn côi có ai hay ha há.

Lắng tai nghe lời hát giọt lệ ai đang ướt mi vì lời tôi ca là bài tình ca thiết tha 1 ngày bình yên khi thấy em thơ lắng nghe tôi,rồi cùng ca vang câu hát trong tiếng yêu thương triền miên hát vang trong cuộc đời.(nào cùng hát vang trong cuộc đời')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'dongthoai', N'Đồng Thoại (Mp3)', N'theloainhac_quehuong', N'tranggiaytrang', N'namcuong', N'quanghuy', N'donga', N'Ngày đông, đàn chim tìm nơi tránh gió,
Ngày ta còn nguyên thơ ấu,
Còn nắm tay nhau hát vang trời.

Ngày gió, ngày ca bài ca ngây ngô,
Ngày ta còn tâm trong vắt,
Còn tắm mưa bên lối về.

Con đường xưa mùa đông dài theo màn mưa
Vẫn cánh đồng gió hương nồng.
Mưa ngày xưa còn chưa mòn những vệt loang,

Chong chóng chiều vẫn quay đều

[ĐK:]
Giữ lấy nhé chút nắng, chút gió, chút ngây ngô của ngày xưa.
Dẫu có muốn, dẫu có ước muốn chẳng thể nào bé lại đâu.
Để được nghe câu ru ấm áp lòng,
Ôm cơn mơ thoát hết mù mờ giữa chốn phồn hoa không yên bình')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'giac mo mua dong', N'Giấc Mơ Mùa Đông', N'theloainhac_tre', N'maimai1tinhyeu', N'dantruong', N'vuquocbinh', N'donga', N'Nghe đâu đây mùa đông đang quay về
Ôi từng chiếc lá úa lác đác mùa thu rơi
Mơ một đêm cuối đông cùng người yêu dấu ngày xưa
Dẫu đã có tiếc nuối cơn mơ đầu
Đông dài mòn hết những ước muốn còn hoài mong
Ôi mùa đông đã xa và giấc mơ vội tan
Người yêu hỡi giờ còn đâu
Ôi vòng tay giờ đây đã giá băng

Những giấc mơ trong tim giờ đây em đã xa rồi
Mùa đông đã qua ôi cơn mơ vụt hết
Tình buồn giờ đây ôi con tim mình giá băng nơi chân trời
Người tình giờ xa một giấc mơ buồn
(Và một mùa đông với giấc mơ buồn)')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'khongcobaitinhcacuoi', N'Không Có Bài Tình Ca Cuối (Mp3)', N'theloainhac_nhacvang', N'12', N'namcuong', N'phanmanhquynh', N'rangdong', N'Vườn rụng đầy hoang sơ lá úa khi mùa đông tới

Sau cơn mưa đêm qua có thấy bầu trời sáng hơn

Con chim non không đi tránh rét rách tiếng hót rồi

Ta không sao cất tiếng hát sáng trút hết cô đơn



Biết rằng (vẫn biết) không có bài tình ca cuối (có đâu ta)

Trách mùa đông biết không biết không bay qua mùa tình ca mới



Ta muốn đốt cháy làn da đã già nua quá

Muốn đốt cháy cả bờ môi héo

Ta muốn thiêu căn phòng bên ô cửa buốt giá

Muốn bốc cháy cả mùa đông ấy, muốn nghe câu tình ca

Bàn tay ve vuốt trên bờ vai giờ đây đã mòn

Nụ hôn vẫn còn khát khao



***

Sương giăng giăng phía cuối góc phố khi đèn vừa sáng



Ta không mang khăn hay áo ấm đâu thể giá thêm

Con chim non cô đơn mới sáng đã hoá đá rồi

Ta hoang mang cất tiếng hát lớn, trút hết âu lo



Biết rằng (vẫn biết) không có bài tình ca cuối (có đâu ta)

Khóc vì sao biết đâu biết đâu ai mang mùa tình ca mới...



Ta muốn đốt cháy bờ mi vẫn còn nhoen ướt

Muốn đốt cháy cả bàn tay cóng

Ta muốn thiêu con đường sương giăng mùa đông trắng

Muốn bốc cháy cả ngày xưa ấy

Muốn ôm ai vào lòng, nụ hôn ấm áp trên bờ môi giờ tan biến hết

Mùa đông vẫn phủ trắng đêm!')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'khongmuadong', N'Không Mùa Đông (Mp3)', N'theloainhac_trutinh', N'demoithuquadi', N'namcuong', N'vuquocbinh', N'donga', N'Không còn ai nhớ tiếng chuông chiều bên giáo đường vắng tanh,

Và không còn ai nữa tới đây tìm nắng gió ngày cuối đông.

Không mùa đông khác khi bóng người đã hết đường khuất xa,

Và không mùa đông nữa không quay về nữa lối mòn dốc trơn.

Không đành lòng dấu tâm ngoan bình yên mất rồi,

Không giọt nước mắt chơi vơi mùa đông trắng.

Không mùa đông ấy đôi tay ấm nông giấc mơ,

Và không mùa đông nữa thương tâm đã thừa bấy lâu.

Không thì vẫn thế cơn mưa mùa đông đã về đây thôi dù ,

Không thì cũng trót lớn lên vì tâm đã mòn mấy đông rồi.

Không mùa đưa đón thôi không chờ mong bóng người sẽ qua,

Và không mùa môi nóng run run vì chưa biết mình đã yêu.

Không còn đan gió trong đêm mùa đông giá lạnh có nhau,

Và không còn ấm cúng nghe mưa mùa đông giữa ngày rét căm.

Không đành lòng đốt yêu thương ngày qua dẫu buồn,

Không giọt nước mắt chơi vơi mùa đông trắng ….')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'mua tren cuoc tinh', N'Mưa Trên Cuộc Tình', N'theloainhac_trutinh', N'maimai1tinhyeu', N'dantruong', N'nguyenvanchung', N'donga', N'Từng hạt mưa, rơi tí tách bên hiên nhà nàng
Lòng thầm mong một ánh mắt, thấp thoáng mong chờ
Người yêu hỡi, mãi mãi yêu nàng
Em dù biết, vẫn luôn hững hờ
Mặc cho anh, đêm đêm vẫn mơ, chuyện tình đôi ta

Giọt buồn rơi, rơi lặng lẽ, trên con đường dài
Một mình anh, lòng say sắc, với gió đông về
Rồi thôi hết những ước mơ dài
Mưa còn rớt, rớt trên nỗi sầu
Lạnh đôi vai em ơi biết chăng tim anh lẻ loi?

Kỷ niệm xưa, em ơi nhớ chăng
Bao lời yêu đã nói hôm nào
Từng cơn mưa đôi ta có nhau phút giây thần tiên
Giờ mình anh trên con phố xưa
Ngồi lặng lẽ ngắm mây dần trời
Mặc cho thời gian hờ hững xô nhau mãi đâu

Chuyện tình yêu đôi ta rẽ dôi
Bao lời yêu đã vỗ cánh rồi
Thầm cầu mong cho em hãy quên những kỷ niệm xưa
Cuộc tình ta tan theo giấc mơ
Hình bóng cũ mãi trông về đâu
Giờ đã hết bao nhiêu yêu thương cô đơn lối về...')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'mucdong', N'Mục Đồng (Mp3)', N'theloainhac_quehuong', N'xoatenanh', N'namcuong', N'tramtuthieng', N'rangdong', N'Này ta nhóm một tiếng ca lửa hồng hát đón ánh trăng vàng lên, Này ta đón ngày ấu thơ quay về , về bên giấc mơ lành Còn tiếng cười sau cánh cửa chờ ta đấy thôi . Còn bếp hồng đang nhóm lại ngày thơ đấy thôi Đường còn thật xa trái tim ấp ôm những ngày qua Là ngọn lửa ấm đã nuôi lớn ta những ngày xa Này ta vẫn là chú bé mục đồng giữa bát ngát mây trời không u sầu Này ta hát bài hát ru yên bình . Hát với ánh trăng vàng lên Này ta uống giọt sương trên lá cỏ và nghe dế kêu mừng Còn tiếng cười sau cánh cửa chờ ta đấy thôi . Còn bếp hồng đang nhóm lại ngày thơ đấy thôi Đừng vội vàng bay chú chim sáng nay trên cành khô Ngày còn hồng lên hót vang với ta những ngày xưa … Còn tiếng cười sau cánh cửa chờ ta đấy thôi . Còn bếp hồng đang nhóm lại ngày thơ đấy thôi Đừng vội vàng bay chú chim sáng nay trên cành khô Ngày còn hồng lên hót vang với ta những ngày xưa … Này ta vẫn là chú bé mục đồng hát bát ngát mây trời không u sầu…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'nangthuytinh', N'Nắng Thủy Tinh (Mp3)', N'theloainhac_tre', N'13', N'namcuong', N'hoaian', N'donga', N'Từng tia nắng ấm thuỷ tinh,
Từng tia lấp lánh sáng đầy ước vọng,
Cuộc sống dẫu đầy dối gian
Bầu trời trong xanh xin đừng vụt tan.

ĐK:
Bình minh như tia nắng ấm xua tan màn đêm u buồn

Và ta mang theo nỗi nhớ mà ai từng đêm quay về,
Còn lại bao nhiêu luyến tiếc mang theo hình bóng về nơi đâu
Có ai trong đời nhớ ai (đêm buồn tênh)')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'new1', N'AI NHANH HƠN', N'theloainhac_trutinh', N'xoatenanh', N'sonca', N'vuquocbinh', N'rangdong', N'Pí po xình xịch… Chúng em đi ô tô, chúng em đi xe lửa…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'nghivecha', N'Nghĩ về cha', N'theloainhac_danca', N'20', N'damvinhhung', N'hoaian', N'donga', N'Đường phố quen con về, chiều nắng tắt, thành phố đang sang mùa đông. Cha ngồi bên mái hiên, một manh áo đơn sơ cùng năm tháng.

Nhìn dáng cha hao gầy, một mái tóc giờ đã phai theo thời gian. Cho đời con lớn khôn, chợt hôm nay ngoài hiên mùa đông đến.

Ngày nào đó lúc con thơ gọi tiếng cha, cuộc đời ngỡ sẽ trôi theo ngàn gấm hoa. Rồi bão tố rớt trên vai, đời dài bao gian khó. Mồ hôi cha ướt những lối con qua.

Từng ngày tháng sống gian nan mà thiết tha, cuộc đời đã biết tên con vì có cha. Từng ngày tháng vẫn gian nan, đời sờn bao vai áo. Tình cha lớn lao hơn ngọn núi cao.')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'nguoimaixatoi', N'Người Mãi Xa Rời', N'theloainhac_tre', N'maimai1tinhyeu', N'dantruong', N'nguyenvanchung', N'donga', N'Mới hôm nào còn đây mình cùng tay nắm tay
Môi ngọt ngào nụ hôn yêu thương nhau từ đây
Ngất ngây tình yêu cho ta khúc hát nồng say
Dắt nhau qua vườn yêu tung tăng theo bướm hoa. 
Khi mùa hạ vừa qua là mùa thu úa tàn
Để rồi cuộc tình ta chia tay nhau từ đây
Em âm thầm quay bước chẳng hề nói một câu
Tôi cô đơn còn đây một mình còn hoài mong.
ĐK:
Mùa đông sang cho con tim anh băng giá, 
Em còn nhớ khúc hát ái ân hôm nào? 
Bây giờ chắc có lẽ mãi quên đi rồi
Hỡi người ơi cuộc tình mình buồn thật sao
Dù ta xa nhau nhưng đêm đêm anh vẫn
Mơ hình bóng mãi mãi thiết tha vẫn còn
Nhưng lời hứa mãi nói với nhau đâu rồi?
Mà giờ đâu người đành bỏ đi mãi sao?!')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'quencachyeu', N'Quên Cách Yêu', N'theloainhac_tre', N'18', N'luongbichhuu', N'thuha', N'rangdong', N'Từ bao lâu không thể nhớ em đã không nói yêu thương một ai
Giận câu chia tay hay nước mắt rơi đêm đêm đầm đìa trên gối
Từ khi anh bước ra đi em không muốn nhớ điều gì 
Mà vết thương trong em vẫn đau đấy thôi.
Để quên anh em đã cố quên những năm tháng bên anh buồn vui
Nụ hôn trên môi hay cái nắm tay bên nhau ngọt ngào khi ấy
Mà em quên trái tim em vẫn còn cần lắm yêu thương 
Nhưng vì anh từ lâu tình yêu với em thật bình thường.
[ĐK:]
Từ lúc anh đi vội vàng em bàng hoàng em giật mình em hoang mang
Là lỗi do em hay là do anh đã đổi thay âm thầm
Em càng níu tay anh thì anh lại càng buông tay 
Để cho em chơi vơi giữa đời quá đắng cay.
Từ đó em không còn yêu, em lạnh lùng, em chẳng buồn, em không vui
Học cách quên anh theo thời gian trôi cũng đã quên anh rồi
Nhưng rồi trái tim em giờ đây chẳng thể yêu ai 
Quên được anh em cũng quên cách để em yêu một người.')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'sa', N'AI CŨNG CÓ THỂ ', N'theloainhac_trutinh', N'xoatenanh', N'phamtruong', N'hoaian', N'rangdong', N'Nào ta cùng hát những khúc hát, ai cũng có thể hy vọng…')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'saoemnodanhquen', N'Sao Em Nỡ Đành Quên (Mp3)', N'theloainhac_cachmang', N'damtrongtim', N'damvinhhung', N'nguyenvanchung', N'rangdong', N'Sao em nỡ đành quên bao lời tha thiết mong chờ
Sao em nỡ đành quên chuyện tình đẹp như ước mơ
Sao em nỡ đành quên áng mây chiều nghiêng nghiêng bóng
Những con đường quen lối đi rồi nay nằm yên đó
Sao em nỡ đành quên kỷ niệm chan chứa êm đềm
Sao em nỡ đành quên cho lòng này đau xót thêm
Sao em nỡ đành quên lúc đi về ai đưa đón
Những khi buồn ai đến thăm còn đâu nữa mà mong
Nỡ đành quên sao em dư âm ngày xưa còn đó
Thời gian không làm sao xóa bao lần tay xiết trong tay
Nhìn anh em khẽ bảo
Thôi đừng xa vắng nhau
Sao em nỡ đành quên kỷ niệm xưa buổi ban đầu
Sao em nỡ đành quên khi tình anh đã trót trao
Em ơi nếu một mai có ai hỏi người tên ấy
Biết nói gì đây hỡi em
Mà em nỡ đành quên')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'tha nguoi dung noi', N'Thà Người Đừng Nói', N'theloainhac_trutinh', N'maimai1tinhyeu', N'dantruong', N'quanghuy', N'donga', N'Dù nhiều người nói với tôi rằng em đổi thay 
Mà sao tôi vẫn cứ yêu em.
Một lần người nói chúng ta ngàn năm bên nhau 
Sao giấc mơ phai tàn mau.

Khi biết em đã xa rồi 
Mà lòng tôi vẫn luôn yêu người 
Vẫn nhớ hoài ngày mình cùng nhau trên lối hẹn xưa.

Thà người đừng nói sẽ yêu mình tôi mãi thôi 
Thì giờ đây tôi sẽ vui hơn.
Giờ người lạc lối bước chân về nơi xa xôi 
Cay đắng chỉ riêng mình tôi.

Em cứ vui bước bên người 
Và tìm quên giấc mơ hôm nào, 
Vì tình ta giờ đây phôi pha người yêu hỡi... (người yêu hỡi)

Thà rằng đừng cố níu kéo, thà rằng mình quên nhau đi 
Vì cuộc tình kia trót mang lỗi lầm.
Giọt buồn nào rơi trên mi nhạt nhòa tình ta chia ly 
Trong màn đêm mình tôi băng giá.

Và rồi người bước cứ bước tìm một ngày vui bên ai 
Xin đừng nhớ đến tôi nơi này.
Lời yêu nay xa tầm tay tình như cơn mơ vụt bay
Giờ tôi đã mất em trong đời.')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'trang vo', N'Trăng Vỡ', N'theloainhac_tre', N'maimai1tinhyeu', N'dantruong', N'nguyenvanchung', N'donga', N'Lòng em như trang giấy thơm trắng ngần

Để anh viết lên chuyện tình yêu

Bài thơ xưa còn dang dở chưa thành câu

Trăng lung linh bước theo đôi tình nhân.



Và khi yêu ai biết đâu là bến bờ

Để rồi phải xa nhau từ đây

Mình xa nhau nên vầng trăng kia vỡ đôi

Trăng cô đơn quá hỡi người ơi...



ĐK:

Sao khi xưa người đã ước mơ muôn đời ta mãi đẹp đôi

Nhưng hôm nay người đi cho hạnh phúc tan vỡ rồi

(Nhưng hôm nay người đi cho hạnh phúc tan vỡ rồi)

Trăng cô đơn lặng lẽ nhớ ai qua từng góc phố ngày xưa

Nghe trong tim buồn vỡ bao lần nát tan vì ai.



Có ai nhớ ngày xưa em ơi, người đã xa tôi mất rồi

Ánh trăng sáng lòng anh em ơi, giờ thấm ướt trong chiều mưa.')
INSERT [dbo].[BAIHAT] ([mabaihat], [tenbaihat], [matheloai], [maalbum], [macasi], [matacgia], [mahangsanxuat], [loibaihat]) VALUES (N'tranggiaytrang', N'Trang Giấy Trắng', N'theloainhac_tre', N'20', N'phamtruong', N'phamtruong', N'donga', N'Anh nhớ lúc mới biết yêu lần đầu
Tình ta trong xanh như trang giấy trắng
Tôi vẽ bức tranh yêu đương thật đẹp
Trong đó có hai trái tim kề bên
Nguyền thề đi chung trên con đường yêu
Dẫu thế nào ta vẫn ở bên nhau
Trang giấy trắng đó đến nay hao gầy ( em vội xa , em vội xa )
Vì em xa tôi ra đi chốn ấy ( em lãng quên , em lãng quên )
Tôi ở nơi đây cô đơn bao ngày ( nhớ em , nhớ em )
Năm tháng trái tim vẫn luôn còn đây ( bao ngày qua , bao ngày qua )
Mà người xa tôi xa luôn tầm tay
Hứa quay về sao tôi chờ hoài chẳng thấy ( ô hố )
Mãi mong người trở về
Tìm lại phút giây đôi ta hẹn thề
Cùng nhau bước đi trên con đường về
Ngày xưa chúng ta vẫn hay thường mơ
Một ngày như thế
Đến khi người trở về
Người lại bước đi bên ai vậy nè
Để cho nỗi đau tôi thêm nặng nề
Giờ đây ấm êm biết em có nghe
Chỉ riêng mỗi tôi mãi mong chờ em
Mà sao em nỡ : Người về tình không về

Trang giấy trắng đó đến nay hao gầy
Vì em xa tôi ra đi chốn ấy
Tôi ở nơi đây cô đơn bao ngày
Năm tháng trái tim vẫn luôn còn đây
Mà người xa tôi xa luôn tầm tay
Hứa quay về sao tôi chờ hoài chẳng thấy ( ô hố )
Mãi mong người trở về
Tìm lại phút giây đôi ta hẹn thề
Cùng nhau bước đi trên con đường về
Ngày xưa chúng ta vẫn hay thường mơ
Một ngày như thế
Đến khi người trở về
Người lại bước đi bên ai vậy nè
Để cho nỗi đau tôi thêm nặng nề
Giờ đây ấm êm biết em có nghe
Chỉ riêng mỗi tôi mãi mong chờ em
Mà sao em nỡ : Người về tình không về

Đến với nhau làm chi để rồi em phải ra đi theo một tình yêu mới gọi , tôi mãi đợi chờ , tôi mãi nhớ em , có những lúc đêm về thao thức mà lòng tôi chợt như rạng nức , mà em có biết anh đau , đau vì nhớ em , đau vì yêu em , mà em nào hay mà em nào biết , giờ người quay về mà tình chẳng về , em xa xôi , tôi đơn côi , đơn côi biết rắng trái tim tôi đang lẻ loi , nhớ em , tình yêu của tôi

Mãi mong người trở về
Tìm lại phút giây đôi ta hẹn thề
Cùng nhau bước đi trên con đường về
Ngày xưa chúng ta vẫn hay thường mơ
Một ngày như thế
Đến khi người trở về
Người lại bước đi bên ai vậy nè
Để cho nỗi đau tôi thêm nặng nề
Giờ đây ấm êm biết em có nghe
Chỉ riêng mỗi tôi mãi mong chờ em
Mà sao em nỡ : Người về tình không về')
/****** Object:  Table [dbo].[CASI_BAIHAT]    Script Date: 05/28/2017 17:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASI_BAIHAT](
	[macasi] [nvarchar](50) NOT NULL,
	[mabaihat] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'103')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'108')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'114')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'120')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'130')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'14')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'15')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'150')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'153')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'161')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'163')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'174')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'19')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'26')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'30')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'48')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'55')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'62')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'73')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'81')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'89')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'99')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'khongmuadong')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'saoemnodanhquen')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'bangcuong', N'tranggiaytrang')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'1')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'10')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'105')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'107')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'11')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'110')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'112')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'113')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'116')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'117')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'119')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'124')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'125')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'13')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'131')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'132')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'133')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'135')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'136')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'137')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'139')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'140')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'142')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'146')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'149')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'151')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'158')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'162')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'164')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'168')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'169')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'17')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'170')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'171')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'173')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'175')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'176')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'2')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'33')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'36')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'40')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'41')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'47')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'56')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'65')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'66')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'69')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'75')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'82')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'83')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'84')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'87')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'90')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'92')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'94')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'96')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'98')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'bhgockhuat')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'changbabymilo')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'damvinhhung', N'khongmuadong')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'100')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'102')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'12')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'128')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'144')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'148')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'23')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'53')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'anh van doi cho')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'anhphailamsao')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'chim trang moi coi')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'den mot luc nao do')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'doi nguoi ca si')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'giac mo mua dong')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'khongcobaitinhcacuoi')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'mua tren cuoc tinh')
GO
print 'Processed 100 total records'
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'nghivecha')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'nguoimaixatoi')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'quencachyeu')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'saoemnodanhquen')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'tha nguoi dung noi')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'trang vo')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dantruong', N'tranggiaytrang')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'106')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'115')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'159')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'35')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'45')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'50')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'54')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'77')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'78')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'80')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'91')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'97')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'anhchicancoem')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'bhgockhuat')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'changbabymilo')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'damtrongtim')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'nangthuytinh')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'dongnhi', N'sa')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'104')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'122')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'123')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'126')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'147')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'152')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'154')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'155')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'156')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'157')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'16')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'21')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'22')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'32')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'34')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'37')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'4')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'43')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'51')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'60')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'61')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'64')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'67')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'68')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'70')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'79')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'9')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'bhhaydemoithuquendi')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'damtrongtim')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'dongthoai')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'luongbichhuu', N'new1')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'101')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'109')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'138')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'145')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'38')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'39')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'49')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'5')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'74')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'76')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'86')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'bhhaydemoithuquendi')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'namcuong', N'khongcobaitinhcacuoi')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'24')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'31')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'42')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'44')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'52')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'57')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'58')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'6')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'7')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'khongcobaitinhcacuoi')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'khongmuadong')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'phamtruong', N'mucdong')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'111')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'118')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'121')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'127')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'129')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'134')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'141')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'143')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'160')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'165')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'166')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'167')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'18')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'29')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'46')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'63')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'71')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'72')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'8')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'85')
GO
print 'Processed 200 total records'
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'88')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'93')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'95')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'anhchicancoem')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'changbabymilo')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'damtrongtim')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'nguoimaixatoi')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'sonca', N'quencachyeu')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'unghoangphuc', N'25')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'unghoangphuc', N'27')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'unghoangphuc', N'28')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'unghoangphuc', N'3')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'unghoangphuc', N'59')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'unghoangphuc', N'anhchicancoem')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'unghoangphuc', N'bhhaydemoithuquendi')
INSERT [dbo].[CASI_BAIHAT] ([macasi], [mabaihat]) VALUES (N'unghoangphuc', N'nghivecha')
/****** Object:  Default [DF_THELOAI_matheloai]    Script Date: 05/28/2017 17:10:41 ******/
ALTER TABLE [dbo].[THELOAI] ADD  CONSTRAINT [DF_THELOAI_matheloai]  DEFAULT (N'Mã') FOR [matheloai]
GO
/****** Object:  Default [DF_THELOAI_tentheloai]    Script Date: 05/28/2017 17:10:41 ******/
ALTER TABLE [dbo].[THELOAI] ADD  CONSTRAINT [DF_THELOAI_tentheloai]  DEFAULT (N'Tên') FOR [tentheloai]
GO
/****** Object:  ForeignKey [FK_BAIHAT_ALBUM]    Script Date: 05/28/2017 17:10:41 ******/
ALTER TABLE [dbo].[BAIHAT]  WITH CHECK ADD  CONSTRAINT [FK_BAIHAT_ALBUM] FOREIGN KEY([maalbum])
REFERENCES [dbo].[ALBUM] ([maalbum])
GO
ALTER TABLE [dbo].[BAIHAT] CHECK CONSTRAINT [FK_BAIHAT_ALBUM]
GO
/****** Object:  ForeignKey [FK_BAIHAT_HANGSANXUAT]    Script Date: 05/28/2017 17:10:41 ******/
ALTER TABLE [dbo].[BAIHAT]  WITH CHECK ADD  CONSTRAINT [FK_BAIHAT_HANGSANXUAT] FOREIGN KEY([mahangsanxuat])
REFERENCES [dbo].[HANGSANXUAT] ([mahangsanxuat])
GO
ALTER TABLE [dbo].[BAIHAT] CHECK CONSTRAINT [FK_BAIHAT_HANGSANXUAT]
GO
/****** Object:  ForeignKey [FK_BAIHAT_TACGIA]    Script Date: 05/28/2017 17:10:41 ******/
ALTER TABLE [dbo].[BAIHAT]  WITH CHECK ADD  CONSTRAINT [FK_BAIHAT_TACGIA] FOREIGN KEY([matacgia])
REFERENCES [dbo].[TACGIA] ([matacgia])
GO
ALTER TABLE [dbo].[BAIHAT] CHECK CONSTRAINT [FK_BAIHAT_TACGIA]
GO
/****** Object:  ForeignKey [FK_BAIHAT_THELOAI]    Script Date: 05/28/2017 17:10:41 ******/
ALTER TABLE [dbo].[BAIHAT]  WITH CHECK ADD  CONSTRAINT [FK_BAIHAT_THELOAI] FOREIGN KEY([matheloai])
REFERENCES [dbo].[THELOAI] ([matheloai])
GO
ALTER TABLE [dbo].[BAIHAT] CHECK CONSTRAINT [FK_BAIHAT_THELOAI]
GO
/****** Object:  ForeignKey [FK_CASI_BAIHAT_BAIHAT]    Script Date: 05/28/2017 17:10:41 ******/
ALTER TABLE [dbo].[CASI_BAIHAT]  WITH CHECK ADD  CONSTRAINT [FK_CASI_BAIHAT_BAIHAT] FOREIGN KEY([mabaihat])
REFERENCES [dbo].[BAIHAT] ([mabaihat])
GO
ALTER TABLE [dbo].[CASI_BAIHAT] CHECK CONSTRAINT [FK_CASI_BAIHAT_BAIHAT]
GO
/****** Object:  ForeignKey [FK_CASI_BAIHAT_CASI]    Script Date: 05/28/2017 17:10:41 ******/
ALTER TABLE [dbo].[CASI_BAIHAT]  WITH CHECK ADD  CONSTRAINT [FK_CASI_BAIHAT_CASI] FOREIGN KEY([macasi])
REFERENCES [dbo].[CASI] ([macasi])
GO
ALTER TABLE [dbo].[CASI_BAIHAT] CHECK CONSTRAINT [FK_CASI_BAIHAT_CASI]
GO
