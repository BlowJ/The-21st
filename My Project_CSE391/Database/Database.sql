USE [master]
GO
/****** Object:  Database [the21st]    Script Date: 04/05/2018 22:53:00 ******/
CREATE DATABASE [the21st] ON  PRIMARY 
( NAME = N'the21st', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\the21st.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'the21st_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\the21st_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [the21st] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [the21st].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [the21st] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [the21st] SET ANSI_NULLS OFF
GO
ALTER DATABASE [the21st] SET ANSI_PADDING OFF
GO
ALTER DATABASE [the21st] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [the21st] SET ARITHABORT OFF
GO
ALTER DATABASE [the21st] SET AUTO_CLOSE ON
GO
ALTER DATABASE [the21st] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [the21st] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [the21st] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [the21st] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [the21st] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [the21st] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [the21st] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [the21st] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [the21st] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [the21st] SET  ENABLE_BROKER
GO
ALTER DATABASE [the21st] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [the21st] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [the21st] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [the21st] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [the21st] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [the21st] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [the21st] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [the21st] SET  READ_WRITE
GO
ALTER DATABASE [the21st] SET RECOVERY SIMPLE
GO
ALTER DATABASE [the21st] SET  MULTI_USER
GO
ALTER DATABASE [the21st] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [the21st] SET DB_CHAINING OFF
GO
USE [the21st]
GO
/****** Object:  Table [dbo].[news_search]    Script Date: 04/05/2018 22:53:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[news_search](
	[id] [char](5) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NULL,
	[link] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'1    ', N'Review Phim "La La Land" (Những Kẻ Khờ Mộng Mơ)', N'Sau thất bại đáng tiếc của Whiplash năm 2014, Damien Chazelle đã trở lại và phục thù bằng La La Land. Cũng lấy đề tài âm nhạc, bộ phim âm nhạc này càn quét...', N'https://localhost/My%20Project_CSE391/Sourcesl/The-loai/Phim-Le/Review-La-La-Land.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'10   ', N'10 phim truyền hình Hàn Quốc được fan quốc tế xem nhiều nhất', N'
"Nàng Dae Jang Geum", "Ngôi nhà hạnh phúc", "Vườn sao băng" hay "Khu vườn bí mật"... được lòng người hâm mộ thế giới suốt 15 năm qua.', N'https://localhost/My%20Project_CSE391/Sources/Tin-Tuc/10HQ.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'11   ', N'[Đánh giá phim] Spider-man: Homecoming - Thời dậy thì của Người Nhện', N'Spider-Man: Homecoming đánh dấu sự trở lại của Người Nhện về với vũ trụ điện ảnh Marvel. Đồng thời bộ phim này cũng thổi một luồng gió tươi mới, có phần hơi trẻ trâu đôi chút, cho công thức làm phim siêu anh hùng mà chúng tưởng chừng đã quá quen thuộc.', N'https://localhost/My%20Project_CSE391/Sources/Quoc-gia/Chau-Au/Review-Home-Coming.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'12   ', N'[Đánh giá phim] Logan - Hoàng hôn đẫm máu của các dị nhân', N'Logan là một bộ phim rất đặc biệt, đưa khán giả đến với đoạn kết đầy máu và nước mắt của các dị nhân. Không như những siêu anh hùng khác của Marvel, X-Men và các dị nhân chưa bao giờ được thừa nhận như anh hùng, họ chỉ là những kẻ ngoại đạo bị thế giới ruồng bỏ. Và sau những chuyến phiêu lưu vĩ đại, các chiến công hiển hách, giờ đây tất cả những gì còn lại cái kết tàn nhẫn chờ đón.', N'https://localhost/My%20Project_CSE391/Sources/Quoc-gia/Chau-Au/Review-Logan.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'13   ', N'[Đánh giá phim] Thor: Ragnarok - Siêu phẩm', N'Sau nhiều năm chờ đợi cuối cùng Thor: Ragnarok (Thor: Tận Thế Ragnarok) đã chính thức được công chiếu tại thị trường Việt Nam. Không phụ lòng người hâm mộ, Thor: Ragnarok xứng đáng là một trong những bộ phim hay nhất, tưới mới nhất từng được Marvel Studios phát hành.', N'https://localhost/My%20Project_CSE391/Sources/Quoc-gia/Chau-Au/Review-Thor.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'14   ', N'[Review] Bleeding Steel: Mượt Như Công Phu Của Thành Long', N'Bộ phim hành động viễn tưởng đầu tiên của Thành Long không chê vào đâu được.Sau những bộ phim thuần chất võ thuật gần đây như Railroad Tigers/ Biệt Đội Mãnh Hổ, Kungfu Yoga, The Foreigner/ Kẻ Ngoại Tộc, Bleeding Steel/Quả Tim Thép là xuất phẩm hành động khoa học viễn tưởng đầu tiên của con rồng châu Á Thành Long. Trong lần này, ông tiếp tục vào vai một người cha vì yêu thương con mà chiến đấu với những pha võ thuật đẹp mắt.', N'https://localhost/My%20Project_CSE391/Sources/Quoc-gia/Chau-Au/Review-Bleed-Steel.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'15   ', N'[Review] Tháng Năm Rực Rỡ: Phim Việt Remake Xuất Sắc Nhất Từ Trước Đến Nay?', N'Giữa tình hình điện ảnh Việt khan hiếm những kịch bản hay, việc remake các tác phẩm kinh điển của nước ngoài là điều không thể tránh khỏi. Thế nhưng, chuyển thể ra sao để hợp với người Việt là bài toán khó mà các nhà sản xuất đều phải đau đầu giải đáp. Lần này, đạo diễn Nguyễn Quang Dũng đã có câu trả lời hoàn hảo trong bộ phim mới...', N'https://localhost/My%20Project_CSE391/Sources/Quoc-gia/Chau-A/Review-Thang-Nam-Ruc-Ro.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'16   ', N'[Review] Xưởng 13: Mới, Lạ Và Nhân Văn', N'Bộ phim kinh dị lấy đề tài theo chân một nhóm bạn trẻ khám phá nhà ma “câu view” Youtube – Xưởng 13 là một nét chấm phá đặc biệt giữa thị trường phim chiếu rạp “hù dọa” hiện nay. ..', N'https://localhost/My%20Project_CSE391/Sources/Quoc-gia/Chau-A/Review-Xuong-13.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'17   ', N'Game Of Thrones', N'Tập 7 The Dragon and the Wolf (Rồng và sói) để lại nhiều bí ẩn vẫn chưa được giải đáp về tương lai của 7 vương quốc, về các nhân vật quyền lực ở đại lục Westeros...', N'https://localhost/My%20Project_CSE391/Sources/Phim-Bo/Review-Game-Of-Thrones.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'18   ', N'The Walking Dead', N'mùa thứ 8 của "The Walking Dead" vừa mới ra mắt đem đến cho người hâm một một cái nhìn khác về cốt truyện của "All Out War". Bộ phim sẽ đưa Alexandria, Hilltop và The Kingdom vào cuộc chiến sống còn với Negan và Saviors...', N'https://localhost/My%20Project_CSE391/Sources/Phim-Bo/Review-The-Walking-Dead.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'19   ', N'The Flash', N'The Flash đã trở lại thế giới hiện thực từ trong những tia chớp của mình, nhưng dường như anh đã bị mất đi trí nhớ. Anh còn trở nên lạ lẫm với bộ râu lâu ngày không cạo và những người bạn xung quanh thì đang liên tục cố gắng đánh thức anh...', N'https://localhost/My%20Project_CSE391/Sources/Phim-Bo/Review-The-Flash.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'2    ', N'Review phim "Shape of Water"(Người Đẹp Và Thủy Quái)', N'Có thể nói ngay rằng Shape of Water (Người đẹp và Thủy quái) là một tác phẩm điện ảnh đáng xem nhất từ đầu năm tới nay, phim tựa như một...', N'https://localhost/My%20Project_CSE391/Sources/The-loai/Phim-Le/Review-Shape-Of-Water.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'3    ', N'Review phim "Insidious: The Last Key" (Quỷ Quyệt 4)', N'Insidious: The Last Key là mảnh ghép cuối cùng trong series phim kinh dị Insidious từng được người xem đón nhận rất tốt. Phim ra rạp với tựa Quỷ quyệt 4: Chìa khóa...', N'https://localhost/My%20Project_CSE391/Sources/The-loai/Phim-Le/Review-Insidious-4.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'4    ', N'[Review] Black Panther: Mở Màn Hoàn Hảo Cho Infinity War', N'Black Panther là bước tiến vượt bậc trong kỹ xảo của tổ hợp Marvel - Disney với các thước phim sống động như thật. Các pha rượt đuổi gay cấn, hoành tráng kết hợp cùng cận chiến hoàn hảo không thua kém Captain America: Winter Soldier...', N'https://localhost/My%20Project_CSE391/Sources/The-loai/Phim-Le/Review-Black-Panther.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'5    ', N'[Review] Vệ Binh Dải Ngân Hà 2: Fan truyện tranh sẽ thích mê, còn khán giả thường?', N'Lấy mốc thời gian chỉ vài tháng sau phần đầu tiên, đội Vệ binh Ngân hà, gồm Peter Quill (Chris Pratt), Gamora (Zoe Saldana), Rocket Raccoon (Bradley Cooper), Drax the Destroyer (Dave Bautista) và Groot (Vin Diesel), giờ đã trở thành anh hùng sau khi đánh bại Ronan...', N'https://localhost/My%20Project_CSE391/Sources/The-loai/Phim-Le/Review-Guardian-Of-Galaxy-2.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'6    ', N'"Black Panther" là phim siêu anh hùng ăn khách nhất mọi thời ở Mỹ', N'Bom tấn đạt doanh thu 630 triệu USD, vượt "The Avengers" (623 triệu USD) - một phim khác thuộc Vũ trụ Điện ảnh Marvel.', N'https://localhost/My%20Project_CSE391//Sources/Tin-Tuc/Black-Panther.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'7    ', N'"Tomb Raider" - tác phẩm giải trí được Alicia Vikander nâng tầm', N'Diễn viên Thuỵ Điển toả sáng cả ở những cảnh hành động và các đoạn thể hiện cảm xúc dù nội dung phim chưa đủ chiều sâu.', N'https://localhost/My%20Project_CSE391/Sources/Tin-Tuc/Tomb-Raider.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'8    ', N'"Pacific Rim 2" - kỹ xảo lấn át diễn xuất', N'Phim ghi điểm ở các cảnh robot chiến đấu nhiều kỹ xảo, nhưng diễn xuất của các sao Scott Eastwood, Cảnh Điềm... không đủ truyền tải tâm lý nhân vật.', N'https://localhost/My%20Project_CSE391/Sources/Tin-Tuc/Pacific-Rim-2.html')
INSERT [dbo].[news_search] ([id], [title], [description], [link]) VALUES (N'9    ', N'Trailer mới của ‘Avengers: Infinity War’ gây tò mò tuần qua', N'Bom tấn Hollywood tung ra nhiều trường đoạn mới, hé lộ sức mạnh của ác nhân Thanos và sự thất bại của các siêu anh hùng.', N'https://localhost/My%20Project_CSE391/Sources/Tin-Tuc/Avengers-Infinity-War.html')
