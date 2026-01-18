/*
 Navicat Premium Dump SQL

 Source Server         : FinalDB
 Source Server Type    : SQL Server
 Source Server Version : 12000924 (12.00.0924)
 Source Host           : milkwarehouse-server.database.windows.net:1433
 Source Catalog        : milkwarehouse
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12000924 (12.00.0924)
 File Encoding         : 65001

 Date: 28/12/2025 08:44:37
*/


-- ----------------------------
-- Table structure for Areas
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Areas]') AND type IN ('U'))
	DROP TABLE [dbo].[Areas]
GO

CREATE TABLE [dbo].[Areas] (
  [AreaId] int  IDENTITY(1,1) NOT NULL,
  [AreaName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AreaCode] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StorageConditionId] int  NOT NULL,
  [Status] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[Areas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Areas
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Areas] ON
GO

INSERT INTO [dbo].[Areas] ([AreaId], [AreaName], [AreaCode], [Description], [StorageConditionId], [Status], [CreatedAt], [UpdateAt]) VALUES (N'1', N'Khu mát', N'A01', N'A01 - Khu mát - Nhiệt độ bảo quản thấp, độ ẩm từ 75% -> 85%', N'2', N'1', N'2025-12-14 07:06:31.9356026', N'2025-12-14 07:08:13.0165425')
GO

INSERT INTO [dbo].[Areas] ([AreaId], [AreaName], [AreaCode], [Description], [StorageConditionId], [Status], [CreatedAt], [UpdateAt]) VALUES (N'2', N'Khu thường', N'A02', N'A02 - Khu thường - Nhiệt độ bảo quản ở nhiệt độ thường với độ ẩm từ 50% -> 75%', N'1', N'1', N'2025-12-14 07:07:50.6911498', N'2025-12-14 07:09:26.1851423')
GO

SET IDENTITY_INSERT [dbo].[Areas] OFF
GO


-- ----------------------------
-- Table structure for BackOrders
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[BackOrders]') AND type IN ('U'))
	DROP TABLE [dbo].[BackOrders]
GO

CREATE TABLE [dbo].[BackOrders] (
  [BackOrderId] uniqueidentifier  NOT NULL,
  [RetailerId] int  NULL,
  [GoodsId] int  NULL,
  [GoodsPackingId] int  NULL,
  [PackageQuantity] int  NULL,
  [CreatedBy] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL,
  [Status] int  NULL
)
GO

ALTER TABLE [dbo].[BackOrders] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of BackOrders
-- ----------------------------

-- ----------------------------
-- Table structure for Batchs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Batchs]') AND type IN ('U'))
	DROP TABLE [dbo].[Batchs]
GO

CREATE TABLE [dbo].[Batchs] (
  [BatchId] uniqueidentifier  NOT NULL,
  [BatchCode] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GoodsId] int  NULL,
  [ManufacturingDate] date  NULL,
  [Description] nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ExpiryDate] date  NULL,
  [CreateAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL,
  [CreateBy] int  NULL,
  [Status] int  NULL
)
GO

ALTER TABLE [dbo].[Batchs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Batchs
-- ----------------------------
INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'A3C4DD77-A88E-4933-AFC9-019EEB74E9BA', N'BAT-FCV004-001', N'13', N'2025-10-15', NULL, N'2026-06-15', N'2025-12-21 00:56:16.6824325', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'F2AEA522-71EB-4CDB-A653-055AC1D2A55B', N'BAT-ABT001-001', N'8', N'2025-08-01', N'Hàng nhập khẩu', N'2027-08-01', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'6C8278A4-B618-4BA8-A003-05D9AB18C21E', N'BAT-VNM002-001', N'2', N'2025-10-15', N'Lô hàng phục vụ Tết', N'2026-10-15', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'C1FAF6CD-BA5E-4919-B488-06C6FEB8E89A', N'BAT-IDP001-00H', N'19', N'2024-06-01', NULL, N'2025-06-01', N'2025-12-19 15:58:09.2368655', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'A08CACD3-74F0-4B58-988A-0C3CBCFB40EA', N'BAT-VNS001-00H', N'17', N'2024-06-01', NULL, N'2025-06-01', N'2025-12-19 16:17:22.3027361', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'BBFEB6E3-0D51-4FAF-9CA8-15F62DDF6CFD', N'BAT-TH002-001', N'6', N'2025-12-12', N'Hàng lạnh ưu tiên xuất', N'2026-01-27', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'2FEF646F-256A-4BFE-B915-19AE188F64B1', N'BAT-FCV001-001', N'13', N'2025-08-10', N'Bao bì giấy', N'2026-02-10', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'292FD019-5BAD-4992-B0DD-1DB3181A8B90', N'BAT-VNM004-001', N'4', N'2025-09-01', N'Hàng lon sắt bảo quản lâu', N'2027-09-01', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'9DD25BB6-7E0F-4E8C-800B-279740282734', N'BAT-FCV002-001', N'14', N'2025-08-10', N'Sữa chua uống tiệt trùng', N'2026-02-10', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'257B661D-FE3B-4DB6-B6FA-2849FBD1CFB8', N'BAT-VNS001-001', N'17', N'2025-11-30', N'', N'2026-05-30', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'71491616-A851-4105-B803-2C99EEF4DDBA', N'BAT-NES002-001', N'16', N'2025-07-15', N'Sữa công thức', N'2027-07-15', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'712EBFCA-4C52-4A32-999A-52F2A453DE29', N'BAT-NTF002-001', N'12', N'2025-06-01', N'Date xa thoải mái lưu kho', N'2027-06-01', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'0D8C7FE5-ED75-4EE0-9F80-5986415CF9E7', N'BAT-TH001-001', N'5', N'2025-11-20', N'Nhập kho tổng', N'2026-05-20', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'775CC26A-3C54-47CE-BA93-6D3040A785D3', N'BAT-TH003-001', N'7', N'2025-10-01', N'Sữa hạt date trung bình', N'2026-07-01', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'AE1FBEB6-7174-4A25-9B98-75079E633C49', N'BAT-VNS002-00H', N'18', N'2024-06-01', NULL, N'2025-06-01', N'2025-12-19 16:14:52.1121069', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'46F1DF20-4245-4BC4-951F-77BAF2EED0A7', N'BAT-NES002-0SH', N'16', N'2025-02-01', NULL, N'2026-01-15', N'2025-12-19 18:30:45.7674726', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'D0CEF867-58F9-47ED-B845-7A036F7D98AB', N'BAT-FCV003-001', N'14', N'2025-10-15', NULL, N'2026-06-15', N'2025-12-21 00:55:16.7172844', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'328929CC-FFC2-4C0F-8DCF-808378B6D9D7', N'BAT-IDP002-001', N'20', N'2025-11-15', N'Sữa tươi chai lớn', N'2026-05-15', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'A6B5C9A3-5861-4528-A2B7-914201DBECFA', N'BAT-NTF001-001', N'11', N'2025-11-05', N'Lô khuyến mãi', N'2026-05-05', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'6741066D-F862-4B07-8B94-A64EAD10D3BC', N'BAT-VNS002-001', N'18', N'2025-11-30', N'', N'2026-05-30', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'B963F75D-3670-4B80-BD7E-B2ABB55E9CFA', N'BAT-ABT003-001', N'10', N'2025-09-15', N'Dành cho trẻ biếng ăn', N'2027-03-15', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'7DA0DFE7-63FF-45D9-BD1D-BCA4AA413081', N'BAT-VNM003-001', N'3', N'2025-12-10', N'Hàng lạnh - Date ngắn', N'2026-01-25', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'50AAF801-56C9-48C2-88A6-C1EAF876936B', N'BAT-IDP001-001', N'19', N'2025-10-05', N'Bao bì hoạt hình', N'2026-06-05', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'822F7C59-F5B7-4094-9DBB-CDC94D2B14F8', N'BAT-ABT002-001', N'9', N'2025-09-01', N'Chai nhựa tiện dụng', N'2027-03-01', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'0AE1C71C-85E3-4943-BEEF-D323D39CBC98', N'BAT-IDP002-00H', N'20', N'2024-06-01', NULL, N'2025-06-01', N'2025-12-19 15:59:23.8693856', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'F06CC1BB-CAD0-429D-91B6-E1E1AA571778', N'BAT-VNM001-001', N'1', N'2025-11-01', N'Lô nhập tháng 11 - Date chuẩn', N'2026-05-01', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'2D0CD41E-0F9C-4B11-B218-FA2FDE425122', N'BAT-NES001-001', N'15', N'2025-10-20', N'Hàng bán chạy trường học', N'2026-06-20', N'2025-12-14 22:02:32.9266667', NULL, N'2', N'1')
GO

INSERT INTO [dbo].[Batchs] ([BatchId], [BatchCode], [GoodsId], [ManufacturingDate], [Description], [ExpiryDate], [CreateAt], [UpdateAt], [CreateBy], [Status]) VALUES (N'AA5A49B2-792A-471F-A0FC-FD0FB2F6A500', N'BAT-NES001-0SH', N'15', N'2025-02-01', NULL, N'2026-01-15', N'2025-12-19 18:31:58.8208624', NULL, NULL, N'1')
GO


-- ----------------------------
-- Table structure for Categories
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type IN ('U'))
	DROP TABLE [dbo].[Categories]
GO

CREATE TABLE [dbo].[Categories] (
  [CategoryId] int  IDENTITY(1,1) NOT NULL,
  [CategoryName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[Categories] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Categories
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Categories] ON
GO

INSERT INTO [dbo].[Categories] ([CategoryId], [CategoryName], [Description], [Status], [CreatedAt], [UpdateAt]) VALUES (N'1', N'Sữa Bột', N'Các loại sữa công thức dạng bột cho trẻ em, người già, bà bầu', N'1', N'2025-12-14 07:33:19.8533333', N'2025-12-14 07:33:19.8533333')
GO

INSERT INTO [dbo].[Categories] ([CategoryId], [CategoryName], [Description], [Status], [CreatedAt], [UpdateAt]) VALUES (N'2', N'Sữa Nước', N'Sữa tươi tiệt trùng, thanh trùng, sữa dinh dưỡng pha sẵn đóng hộp/chai', N'1', N'2025-12-14 07:33:19.8533333', N'2025-12-14 07:33:19.8533333')
GO

INSERT INTO [dbo].[Categories] ([CategoryId], [CategoryName], [Description], [Status], [CreatedAt], [UpdateAt]) VALUES (N'3', N'Sữa Chua', N'Sữa chua ăn, sữa chua uống men sống, sữa chua tiệt trùng', N'1', N'2025-12-14 07:33:19.8533333', N'2025-12-14 07:33:19.8533333')
GO

INSERT INTO [dbo].[Categories] ([CategoryId], [CategoryName], [Description], [Status], [CreatedAt], [UpdateAt]) VALUES (N'4', N'Sữa Đặc', N'Sữa đặc có đường, kem đặc dùng cho pha cà phê, làm bánh', N'1', N'2025-12-14 07:33:19.8533333', N'2025-12-14 07:33:19.8533333')
GO

INSERT INTO [dbo].[Categories] ([CategoryId], [CategoryName], [Description], [Status], [CreatedAt], [UpdateAt]) VALUES (N'5', N'Sữa Hạt', N'Sữa đậu nành, óc chó, hạnh nhân, yến mạch', N'1', N'2025-12-14 07:33:19.8533333', N'2025-12-14 07:33:19.8533333')
GO

INSERT INTO [dbo].[Categories] ([CategoryId], [CategoryName], [Description], [Status], [CreatedAt], [UpdateAt]) VALUES (N'6', N'Sữa Dinh Dưỡng', N'Sữa dành cho người bệnh, hồi phục sức khỏe, qua đường ống thông', N'1', N'2025-12-14 07:33:19.8533333', N'2025-12-14 07:33:19.8533333')
GO

SET IDENTITY_INSERT [dbo].[Categories] OFF
GO


-- ----------------------------
-- Table structure for DisposalNoteDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DisposalNoteDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[DisposalNoteDetails]
GO

CREATE TABLE [dbo].[DisposalNoteDetails] (
  [DisposalNoteDetailId] uniqueidentifier  NOT NULL,
  [DisposalNoteId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GoodsId] int  NULL,
  [GoodsPackingId] int  NULL,
  [PackageQuantity] int  NULL,
  [Status] int DEFAULT 1 NULL,
  [Note] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RejectionReason] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdatedAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[DisposalNoteDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of DisposalNoteDetails
-- ----------------------------
INSERT INTO [dbo].[DisposalNoteDetails] ([DisposalNoteDetailId], [DisposalNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'228DCDB7-A048-4D3A-8C38-07563224CCCA', N'DIS_DN_1766136798452', N'19', N'19', N'40', N'4', NULL, N'', N'2025-07-15 16:33:18.6602842', N'2025-07-15 16:41:15.2708868')
GO

INSERT INTO [dbo].[DisposalNoteDetails] ([DisposalNoteDetailId], [DisposalNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'E1854761-9BE7-4F15-B805-319C39A8C299', N'DIS_DN_1766138815826', N'20', N'20', N'40', N'4', NULL, N'', N'2025-08-15 17:06:55.8671474', N'2025-08-15 17:08:20.5864013')
GO

INSERT INTO [dbo].[DisposalNoteDetails] ([DisposalNoteDetailId], [DisposalNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'C8B371EE-B398-46BF-B53F-4BA7952D9B1F', N'DIS_DN_1766136798452', N'18', N'18', N'40', N'4', NULL, N'', N'2025-07-15 16:33:18.6805098', N'2025-07-15 16:41:15.2708875')
GO

INSERT INTO [dbo].[DisposalNoteDetails] ([DisposalNoteDetailId], [DisposalNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'B58FF0B3-481B-465D-AC16-6A6B496969D8', N'DIS_DN_1766138815826', N'19', N'19', N'40', N'4', NULL, N'', N'2025-08-15 17:06:55.8652430', N'2025-08-15 17:08:20.5864026')
GO

INSERT INTO [dbo].[DisposalNoteDetails] ([DisposalNoteDetailId], [DisposalNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'5638C257-4124-45E2-921F-736ED86E5961', N'DIS_DN_1766136798452', N'20', N'20', N'40', N'4', NULL, N'', N'2025-07-15 16:33:18.6704521', N'2025-07-15 16:41:15.2708881')
GO

INSERT INTO [dbo].[DisposalNoteDetails] ([DisposalNoteDetailId], [DisposalNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'1CA7665F-F8CB-4A50-B116-9345A003AAF0', N'DIS_DN_1766138815826', N'17', N'17', N'40', N'4', NULL, N'', N'2025-08-15 17:06:55.8461966', N'2025-08-15 17:08:20.5864037')
GO

INSERT INTO [dbo].[DisposalNoteDetails] ([DisposalNoteDetailId], [DisposalNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'B937B52F-27E5-4EBD-AEE5-C556C8B471DA', N'DIS_DN_1766138815826', N'18', N'18', N'40', N'4', NULL, N'', N'2025-08-15 17:06:55.8557115', N'2025-08-15 17:08:20.5864048')
GO

INSERT INTO [dbo].[DisposalNoteDetails] ([DisposalNoteDetailId], [DisposalNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'575F2010-656A-4BA8-AB8E-E9DF298015CB', N'DIS_DN_1766136798452', N'17', N'17', N'40', N'4', NULL, N'', N'2025-07-15 16:33:18.5898910', N'2025-07-15 16:41:15.2708884')
GO


-- ----------------------------
-- Table structure for DisposalNotes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DisposalNotes]') AND type IN ('U'))
	DROP TABLE [dbo].[DisposalNotes]
GO

CREATE TABLE [dbo].[DisposalNotes] (
  [DisposalNoteId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Status] int DEFAULT 1 NULL,
  [ApprovalBy] int  NULL,
  [CreatedBy] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdatedAt] datetime2(7)  NULL,
  [DisposalRequestId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[DisposalNotes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of DisposalNotes
-- ----------------------------
INSERT INTO [dbo].[DisposalNotes] ([DisposalNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [DisposalRequestId]) VALUES (N'DIS_DN_1766136798452', N'3', N'1', N'2', N'2025-07-15 16:33:18.4523370', N'2025-07-15 16:41:15.2708598', N'DIS_DR_1766136559792')
GO

INSERT INTO [dbo].[DisposalNotes] ([DisposalNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [DisposalRequestId]) VALUES (N'DIS_DN_1766138815826', N'3', N'1', N'2', N'2025-08-15 17:06:55.8269919', N'2025-08-15 17:08:20.5863841', N'DIS_DR_1766138614962')
GO


-- ----------------------------
-- Table structure for DisposalRequestDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DisposalRequestDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[DisposalRequestDetails]
GO

CREATE TABLE [dbo].[DisposalRequestDetails] (
  [DisposalRequestDetailId] int  IDENTITY(1,1) NOT NULL,
  [DisposalRequestId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GoodsId] int  NULL,
  [GoodsPackingId] int  NULL,
  [PackageQuantity] int  NULL
)
GO

ALTER TABLE [dbo].[DisposalRequestDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of DisposalRequestDetails
-- ----------------------------
SET IDENTITY_INSERT [dbo].[DisposalRequestDetails] ON
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'1', N'DIS_DR_1766136559792', N'17', N'17', N'40')
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'2', N'DIS_DR_1766136559792', N'19', N'19', N'40')
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'3', N'DIS_DR_1766136559792', N'20', N'20', N'40')
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'4', N'DIS_DR_1766136559792', N'18', N'18', N'40')
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'5', N'DIS_DR_1766138614962', N'17', N'17', N'40')
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'6', N'DIS_DR_1766138614962', N'18', N'18', N'40')
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'7', N'DIS_DR_1766138614962', N'19', N'19', N'40')
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'8', N'DIS_DR_1766138614962', N'20', N'20', N'40')
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'9', N'DIS_DR_1766139241202', N'17', N'17', N'20')
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'10', N'DIS_DR_1766139241202', N'18', N'18', N'20')
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'11', N'DIS_DR_1766139241202', N'19', N'19', N'20')
GO

INSERT INTO [dbo].[DisposalRequestDetails] ([DisposalRequestDetailId], [DisposalRequestId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'12', N'DIS_DR_1766139241202', N'20', N'20', N'20')
GO

SET IDENTITY_INSERT [dbo].[DisposalRequestDetails] OFF
GO


-- ----------------------------
-- Table structure for DisposalRequests
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DisposalRequests]') AND type IN ('U'))
	DROP TABLE [dbo].[DisposalRequests]
GO

CREATE TABLE [dbo].[DisposalRequests] (
  [DisposalRequestId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [EstimatedTimeDeparture] date  NULL,
  [Status] int  NULL,
  [CreatedBy] int  NULL,
  [ApprovalBy] int  NULL,
  [AssignTo] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL,
  [ApprovalAt] datetime2(7)  NULL,
  [AssignAt] datetime2(7)  NULL,
  [Note] nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RejectionReason] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[DisposalRequests] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of DisposalRequests
-- ----------------------------
INSERT INTO [dbo].[DisposalRequests] ([DisposalRequestId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AssignAt], [Note], [RejectionReason]) VALUES (N'DIS_DR_1766136559792', N'2025-07-15', N'7', N'1', N'6', N'2', N'2025-07-01 16:29:19.7919880', N'2025-07-15 16:41:15.2708677', N'2025-07-15 16:30:31.2090715', N'2025-07-15 16:30:44.1783263', N'', N'')
GO

INSERT INTO [dbo].[DisposalRequests] ([DisposalRequestId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AssignAt], [Note], [RejectionReason]) VALUES (N'DIS_DR_1766138614962', N'2025-08-15', N'7', N'1', N'6', N'2', N'2025-08-01 17:03:34.9627863', N'2025-08-15 17:08:20.5863938', N'2025-08-15 17:04:12.1490372', N'2025-08-15 17:04:22.6563094', N'', N'')
GO

INSERT INTO [dbo].[DisposalRequests] ([DisposalRequestId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AssignAt], [Note], [RejectionReason]) VALUES (N'DIS_DR_1766139241202', N'2025-12-20', N'1', N'1', NULL, NULL, N'2025-12-19 17:14:01.2022481', N'2025-12-20 22:57:10.6682735', NULL, NULL, N'', N'')
GO


-- ----------------------------
-- Table structure for Goods
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Goods]') AND type IN ('U'))
	DROP TABLE [dbo].[Goods]
GO

CREATE TABLE [dbo].[Goods] (
  [GoodsId] int  IDENTITY(1,1) NOT NULL,
  [GoodsCode] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GoodsName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CategoryId] int  NOT NULL,
  [SupplierId] int  NULL,
  [StorageConditionId] int  NULL,
  [UnitMeasureId] int  NULL,
  [UpdateAt] datetime2(7)  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [Status] int  NULL
)
GO

ALTER TABLE [dbo].[Goods] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Goods
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Goods] ON
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'1', N'VNM001', N'Sữa Tươi Tiệt Trùng Vinamilk Có Đường 180ml', N'2', N'1', N'1', N'1', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'2', N'VNM002', N'Sữa Đặc Ông Thọ Nhãn Đỏ 380g', N'4', N'1', N'1', N'2', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'3', N'VNM003', N'Sữa Chua Ăn Vinamilk Nha Đam 100g', N'3', N'1', N'2', N'5', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'4', N'VNM004', N'Sữa Bột Dielac Alpha Gold IQ Số 4 900g', N'1', N'1', N'1', N'2', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'5', N'TH001', N'Sữa Tươi Tiệt Trùng TH True Milk Ít Đường 180ml', N'2', N'2', N'1', N'1', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'6', N'TH002', N'Sữa Chua Ăn TH True Milk Có Đường 100g', N'3', N'2', N'2', N'5', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'7', N'TH003', N'Sữa Hạt TH True Nut Hạnh Nhân 180ml', N'5', N'2', N'1', N'1', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'8', N'ABT001', N'Sữa Bột Ensure Gold Hương Vani 850g', N'6', N'3', N'1', N'2', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'9', N'ABT002', N'Sữa Nước Ensure Gold Vigor 237ml', N'6', N'3', N'1', N'3', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'10', N'ABT003', N'Sữa Nước Pediasure BA Vani 237ml', N'6', N'3', N'1', N'3', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'11', N'NTF001', N'Sữa Bột Pha Sẵn Nutifood GrowPLUS+ Đỏ 180ml', N'2', N'4', N'1', N'1', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'12', N'NTF002', N'Sữa Bột Nutifood GrowPLUS+ Đỏ (Suy Dinh Dưỡng) 900g', N'1', N'4', N'1', N'2', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'13', N'FCV001', N'Sữa Tươi Tiệt Trùng Cô Gái Hà Lan Có Đường (Dạng Gói) 220ml', N'2', N'5', N'1', N'4', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'14', N'FCV002', N'Sữa Chua Uống Yomost Hương Cam 170ml', N'3', N'5', N'1', N'1', NULL, N'2025-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'15', N'NES001', N'Thức Uống Lúa Mạch Nestlé Milo 180ml', N'2', N'6', N'1', N'1', NULL, N'2023-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'16', N'NES002', N'Sữa Bột Nan Optipro Số 2 800g', N'1', N'6', N'1', N'2', NULL, N'2023-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'17', N'VNS001', N'Sữa Đậu Nành Fami Nguyên Chất 200ml', N'5', N'7', N'1', N'1', NULL, N'2023-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'18', N'VNS002', N'Sữa Đậu Nành Fami Canxi (Dạng Gói) 200ml', N'5', N'7', N'1', N'4', NULL, N'2023-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'19', N'IDP001', N'Sữa Chua Uống Kun Kem Dâu 180ml', N'3', N'8', N'1', N'1', NULL, N'2023-12-14 07:41:32.9033333', N'1')
GO

INSERT INTO [dbo].[Goods] ([GoodsId], [GoodsCode], [GoodsName], [CategoryId], [SupplierId], [StorageConditionId], [UnitMeasureId], [UpdateAt], [CreatedAt], [Status]) VALUES (N'20', N'IDP002', N'Sữa Tươi Ba Vì Có Đường 900ml', N'2', N'8', N'1', N'3', NULL, N'2023-12-14 07:41:32.9033333', N'1')
GO

SET IDENTITY_INSERT [dbo].[Goods] OFF
GO


-- ----------------------------
-- Table structure for GoodsIssueNoteDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GoodsIssueNoteDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[GoodsIssueNoteDetails]
GO

CREATE TABLE [dbo].[GoodsIssueNoteDetails] (
  [GoodsIssueNoteDetailId] uniqueidentifier  NOT NULL,
  [GoodsIssueNoteId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GoodsId] int  NULL,
  [GoodsPackingId] int  NULL,
  [PackageQuantity] int  NULL,
  [Status] int DEFAULT 1 NULL,
  [Note] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RejectionReason] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdatedAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[GoodsIssueNoteDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of GoodsIssueNoteDetails
-- ----------------------------
INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'4367F210-DE6A-4D8F-87D9-00CF36B517F3', N'RET_GIN_1766247613584', N'3', N'3', N'20', N'4', NULL, N'', N'2025-12-20 23:20:13.6058293', N'2025-12-20 23:27:50.6918593')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'DA918920-46B6-45C1-ACAF-0165834D9DCD', N'RET_GIN_1766362539260', N'19', N'19', N'33', N'4', NULL, N'', N'2025-12-22 07:15:39.2633781', N'2025-12-22 07:16:02.4292589')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'EBB947AA-5532-4D55-AFBA-039CCF8D49A2', N'RET_GIN_1766362079366', N'2', N'2', N'30', N'4', NULL, N'', N'2025-12-22 07:07:59.5010370', N'2025-12-22 07:08:23.4912829')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'941EF91E-6197-455B-9A9E-066829A82335', N'RET_GIN_1766251599186', N'7', N'7', N'20', N'4', NULL, N'', N'2025-12-21 00:26:39.2738115', N'2025-12-21 00:27:20.5970151')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'1E5620E7-2910-4DB9-A201-0B6D4A804698', N'RET_GIN_1766362079366', N'1', N'1', N'30', N'4', NULL, N'', N'2025-12-22 07:07:59.5719391', N'2025-12-22 07:08:23.4912837')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'C9966212-51EB-4DC4-A969-15E2E63B4AA4', N'RET_GIN_1766248282746', N'2', N'2', N'30', N'4', NULL, N'', N'2025-12-20 23:31:22.9054693', N'2025-12-20 23:37:57.3616292')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'77643C2E-CA73-4879-98BC-1A8B927206AA', N'RET_GIN_1766246901294', N'1', N'1', N'30', N'4', NULL, N'', N'2025-12-20 23:08:21.3663973', N'2025-12-20 23:10:12.6579838')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'8F81717B-4BDF-4110-BF63-323E0D5BF6C0', N'RET_GIN_1766253645686', N'14', N'14', N'20', N'1', NULL, N'', N'2025-12-21 01:00:45.7070250', N'2025-12-21 21:36:59.0237913')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'49859D45-AB54-49FB-88C9-44AACA517DC5', N'RET_GIN_1766247613584', N'2', N'2', N'20', N'4', NULL, N'', N'2025-12-20 23:20:13.6036408', N'2025-12-20 23:27:50.6918599')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'798BE702-C0F1-4C76-8AF9-4B9A5A91E4D8', N'RET_GIN_1766248282746', N'3', N'3', N'30', N'4', NULL, N'', N'2025-12-20 23:31:22.9845123', N'2025-12-20 23:37:57.3616298')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'9AE96F95-EC65-4CB0-B523-58862029A631', N'RET_GIN_1766253924833', N'13', N'13', N'20', N'1', NULL, NULL, N'2025-12-21 01:05:24.8531314', NULL)
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'359FF741-4CED-4A9F-894A-5905D3EB9EC0', N'RET_GIN_1766253645686', N'13', N'13', N'20', N'1', NULL, N'', N'2025-12-21 01:00:45.6959417', N'2025-12-21 21:36:56.3981272')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'5E48CB0A-97D9-4136-8EAD-5ABE467E895F', N'RET_GIN_1766247613584', N'1', N'1', N'20', N'4', NULL, N'', N'2025-12-20 23:20:13.5932357', N'2025-12-20 23:27:50.6918603')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'B15B4601-324C-48F3-A075-5B7BA1CE2960', N'RET_GIN_1766253924833', N'14', N'14', N'20', N'1', NULL, NULL, N'2025-12-21 01:05:24.8621789', NULL)
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'10118559-3576-487F-8467-6199460839A7', N'RET_GIN_1766251599186', N'5', N'5', N'20', N'4', NULL, N'', N'2025-12-21 00:26:39.2034798', N'2025-12-21 00:27:20.5970157')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'7F3E8905-3C6E-4E6A-8F6F-8E562E614E88', N'RET_GIN_1766362539260', N'20', N'20', N'33', N'4', NULL, N'', N'2025-12-22 07:15:39.2703583', N'2025-12-22 07:16:02.4292594')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'FAEDAB9E-2F4A-43A8-84E9-941EF7D7359D', N'RET_GIN_1766251599186', N'6', N'6', N'20', N'4', NULL, N'', N'2025-12-21 00:26:39.2647869', N'2025-12-21 00:27:20.5970161')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'A682677A-EC1C-4E2A-8FAE-A2986A660D93', N'RET_GIN_1766248282746', N'1', N'1', N'30', N'4', NULL, N'', N'2025-12-20 23:31:22.8639148', N'2025-12-20 23:37:57.3616301')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'C3DA0473-8AF5-4455-A62B-A7C9CEECC13A', N'RET_GIN_1766246901294', N'3', N'3', N'30', N'4', NULL, N'', N'2025-12-20 23:08:21.4439042', N'2025-12-20 23:10:12.6579846')
GO

INSERT INTO [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId], [GoodsIssueNoteId], [GoodsId], [GoodsPackingId], [PackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'2E822B1E-CED9-42B0-A3E9-ECC0FF8A7F2B', N'RET_GIN_1766246901294', N'2', N'2', N'30', N'4', NULL, N'', N'2025-12-20 23:08:21.4351282', N'2025-12-20 23:10:12.6579850')
GO


-- ----------------------------
-- Table structure for GoodsIssueNotes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GoodsIssueNotes]') AND type IN ('U'))
	DROP TABLE [dbo].[GoodsIssueNotes]
GO

CREATE TABLE [dbo].[GoodsIssueNotes] (
  [GoodsIssueNoteId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Status] int DEFAULT 1 NULL,
  [ApprovalBy] int  NULL,
  [CreatedBy] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdatedAt] datetime2(7)  NULL,
  [SalesOderId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[GoodsIssueNotes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of GoodsIssueNotes
-- ----------------------------
INSERT INTO [dbo].[GoodsIssueNotes] ([GoodsIssueNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [SalesOderId]) VALUES (N'RET_GIN_1766246901294', N'3', N'1', N'2', N'2025-12-20 23:08:21.2941939', N'2025-12-20 23:10:12.6579528', N'RET_SO_1766246840480')
GO

INSERT INTO [dbo].[GoodsIssueNotes] ([GoodsIssueNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [SalesOderId]) VALUES (N'RET_GIN_1766247613584', N'3', N'1', N'2', N'2025-12-20 23:20:13.5845323', N'2025-12-20 23:27:50.6918376', N'RET_SO_1766247472196')
GO

INSERT INTO [dbo].[GoodsIssueNotes] ([GoodsIssueNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [SalesOderId]) VALUES (N'RET_GIN_1766248282746', N'3', N'1', N'2', N'2025-12-20 23:31:22.7468678', N'2025-12-20 23:37:57.3616162', N'RET_SO_1766248211770')
GO

INSERT INTO [dbo].[GoodsIssueNotes] ([GoodsIssueNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [SalesOderId]) VALUES (N'RET_GIN_1766251599186', N'3', N'1', N'2', N'2025-12-21 00:26:39.1862268', N'2025-12-21 00:27:20.5970032', N'RET_SO_1766251567114')
GO

INSERT INTO [dbo].[GoodsIssueNotes] ([GoodsIssueNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [SalesOderId]) VALUES (N'RET_GIN_1766253645686', N'1', NULL, N'2', N'2025-12-21 01:00:45.6861063', NULL, N'RET_SO_1766253607938')
GO

INSERT INTO [dbo].[GoodsIssueNotes] ([GoodsIssueNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [SalesOderId]) VALUES (N'RET_GIN_1766253924833', N'1', NULL, N'2', N'2025-12-21 01:05:24.8333863', NULL, N'RET_SO_1766253851201')
GO

INSERT INTO [dbo].[GoodsIssueNotes] ([GoodsIssueNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [SalesOderId]) VALUES (N'RET_GIN_1766362079366', N'3', N'1', N'2', N'2025-12-22 07:07:59.3665936', N'2025-12-22 07:08:23.4912485', N'RET_SO_1766362047732')
GO

INSERT INTO [dbo].[GoodsIssueNotes] ([GoodsIssueNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [SalesOderId]) VALUES (N'RET_GIN_1766362539260', N'3', N'1', N'2', N'2025-12-22 07:15:39.2608173', N'2025-12-22 07:16:02.4292482', N'RET_SO_1766362511783')
GO


-- ----------------------------
-- Table structure for GoodsPacking
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GoodsPacking]') AND type IN ('U'))
	DROP TABLE [dbo].[GoodsPacking]
GO

CREATE TABLE [dbo].[GoodsPacking] (
  [GoodsPackingId] int  IDENTITY(1,1) NOT NULL,
  [GoodsId] int  NULL,
  [UnitPerPackage] int  NULL,
  [Status] int  NULL
)
GO

ALTER TABLE [dbo].[GoodsPacking] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of GoodsPacking
-- ----------------------------
SET IDENTITY_INSERT [dbo].[GoodsPacking] ON
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'1', N'1', N'48', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'2', N'2', N'24', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'3', N'3', N'48', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'4', N'4', N'12', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'5', N'5', N'48', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'6', N'6', N'48', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'7', N'7', N'48', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'8', N'8', N'6', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'9', N'9', N'24', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'10', N'10', N'24', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'11', N'11', N'48', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'12', N'12', N'12', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'13', N'13', N'50', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'14', N'14', N'48', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'15', N'15', N'48', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'16', N'16', N'12', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'17', N'17', N'40', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'18', N'18', N'50', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'19', N'19', N'48', N'1')
GO

INSERT INTO [dbo].[GoodsPacking] ([GoodsPackingId], [GoodsId], [UnitPerPackage], [Status]) VALUES (N'20', N'20', N'12', N'1')
GO

SET IDENTITY_INSERT [dbo].[GoodsPacking] OFF
GO


-- ----------------------------
-- Table structure for GoodsReceiptNoteDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GoodsReceiptNoteDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[GoodsReceiptNoteDetails]
GO

CREATE TABLE [dbo].[GoodsReceiptNoteDetails] (
  [GoodsReceiptNoteDetailId] uniqueidentifier  NOT NULL,
  [GoodsReceiptNoteId] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [GoodsId] int  NOT NULL,
  [GoodsPackingId] int  NULL,
  [ExpectedPackageQuantity] int  NULL,
  [DeliveredPackageQuantity] int  NULL,
  [RejectPackageQuantity] int  NULL,
  [ActualPackageQuantity] int  NULL,
  [Status] int  NULL,
  [Note] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RejectionReason] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdatedAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[GoodsReceiptNoteDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of GoodsReceiptNoteDetails
-- ----------------------------
INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'CC1CF0E4-2F6C-4BA1-987E-1A6FC4082BE8', N'TH_TRUE_MILK_GRN_1766367664787', N'7', N'7', N'34', N'34', N'0', N'34', N'4', N'', N'', N'2025-12-22 08:41:04.7796843', N'2025-12-22 08:52:40.6993919')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'C3F20E0B-D085-4982-AF03-279807BFAE80', N'IDP_GRN_1766288862701', N'20', N'20', N'32', N'0', N'0', N'0', N'4', N'', N'', N'2025-12-21 10:47:42.6820368', N'2025-12-21 10:48:06.4035181')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'F8FD89C5-10C7-4373-9E10-2B0F6A9493AC', N'DUTCH_LADY_GRN_1766253205388', N'14', N'14', N'40', N'40', N'0', N'40', N'4', N'', N'', N'2025-12-21 00:53:25.3297083', N'2025-12-21 00:53:46.7299170')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'4C2D463C-073A-41C3-9747-309F6FD9137A', N'TH_TRUE_MILK_GRN_1766367664787', N'6', N'6', N'34', N'34', N'0', N'34', N'4', N'', N'', N'2025-12-22 08:41:04.7796773', N'2025-12-22 08:52:40.7477617')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'D66FEEB9-53F7-403A-BE50-346809160D59', N'NESTLE_GRN_1766143553828', N'16', N'16', N'40', N'40', N'0', N'40', N'4', N'', N'', N'2025-03-15 18:25:53.8263349', N'2025-03-15 18:26:34.6692863')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'ABABCBD4-19C5-4E4D-8AA8-34FCACE85425', N'TH_TRUE_MILK_GRN_1766152809351', N'7', N'7', N'60', N'60', N'0', N'60', N'4', N'', N'', N'2025-12-19 21:00:09.3395148', N'2025-12-19 21:00:35.3200773')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'E1B36B6D-93CF-4E6F-BE07-3D91FF740A2A', N'NESTLE_GRN_1766143553828', N'15', N'15', N'40', N'40', N'0', N'40', N'4', N'', N'', N'2025-03-15 18:25:53.8263264', N'2025-03-15 18:26:34.6889795')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'F8A2C835-1CF9-43D2-9470-41E96DE3A600', N'DUTCH_LADY_GRN_1766252166868', N'14', N'14', N'60', N'60', N'0', N'60', N'4', N'', N'', N'2025-12-21 00:36:06.8499863', N'2025-12-21 00:36:48.1470739')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'6E906161-6F91-4F40-B8F9-5C2762BF8A82', N'VINAMILK_GRN_1766161621051', N'1', N'1', N'30', N'30', N'0', N'30', N'4', N'', N'', N'2025-12-19 23:27:00.9891477', N'2025-12-19 23:32:18.7483312')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'2DF86F0F-A4C2-431C-8C53-6B961FE2BA00', N'TH_TRUE_MILK_GRN_1766152809351', N'6', N'6', N'60', N'60', N'0', N'60', N'4', N'', N'', N'2025-12-19 21:00:09.3395131', N'2025-12-19 21:00:35.3469124')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'9BE4E65A-21D4-4663-93A1-6D979342CF61', N'VINAMILK_GRN_1766161621051', N'2', N'2', N'35', N'30', N'0', N'30', N'4', N'', N'', N'2025-12-19 23:27:00.9894079', N'2025-12-19 23:32:18.9735421')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'693BD3D4-CE22-41AA-A5A7-6DB205C4F4D2', N'VINAMILK_GRN_1766151339703', N'1', N'1', N'80', N'80', N'0', N'80', N'4', N'', N'', N'2025-12-19 20:35:39.6651308', N'2025-12-19 20:38:03.9787501')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'98AB0F4C-58AC-4EA3-954B-7232CC7A917E', N'TH_TRUE_MILK_GRN_1766152809351', N'5', N'5', N'60', N'60', N'0', N'60', N'4', N'', N'', N'2025-12-19 21:00:09.3395044', N'2025-12-19 21:00:35.3870532')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'D4887B17-BFC0-411C-AB68-7891EAE5B35C', N'DUTCH_LADY_GRN_1766252166868', N'13', N'13', N'60', N'60', N'0', N'60', N'4', N'', N'', N'2025-12-21 00:36:06.8499751', N'2025-12-21 00:36:48.1775519')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'A6CD1196-51A1-41C9-B602-882B75EBA4C3', N'IDP_GRN_1766134402710', N'19', N'19', N'100', N'100', N'0', N'100', N'4', N'', N'', N'2024-07-15 16:22:28.7820000', N'2024-07-15 16:22:28.7820000')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'79250CEB-C37C-4D91-AE5B-8B329767FA11', N'IDP_GRN_1766289041204', N'20', N'20', N'33', N'33', N'0', N'33', N'4', N'', N'', N'2025-12-21 10:50:41.1967831', N'2025-12-21 10:51:19.6164369')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'D8BA84AC-74EC-43BA-B710-9425E4E2A598', N'IDP_GRN_1766288862701', N'19', N'19', N'30', N'0', N'0', N'0', N'4', N'', N'', N'2025-12-21 10:47:42.6820251', N'2025-12-21 10:48:06.4228766')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'93B264BF-8906-4E4D-BFA4-9DBD5F56E641', N'NESTLE_GRN_1766342517025', N'15', N'15', N'32', N'32', N'0', N'32', N'4', N'', N'', N'2025-12-22 01:41:57.0138427', N'2025-12-22 01:43:03.3987970')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'272637B8-311E-4656-9CF4-AA8F2FDAEFEC', N'VINASOY_GRN_1766135575108', N'18', N'18', N'100', N'100', N'0', N'100', N'4', N'', N'', N'2024-08-15 16:12:55.0999275', N'2024-08-15 16:13:34.3594667')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'2E5B8317-352D-433C-8F5F-AEF1FFD7F1DC', N'VINASOY_GRN_1766135575108', N'17', N'17', N'100', N'100', N'0', N'100', N'4', N'', N'', N'2024-08-15 16:12:55.0999198', N'2024-08-15 16:13:34.3993457')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'22676895-2CCC-474D-88AD-B5DB0FFFA275', N'VINAMILK_GRN_1766151339703', N'2', N'2', N'80', N'80', N'0', N'80', N'4', N'', N'', N'2025-12-19 20:35:39.6651378', N'2025-12-19 20:38:04.0195229')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'0B173DB1-B866-45B4-9000-BCF6AEB5DD51', N'NESTLE_GRN_1766342517025', N'16', N'16', N'34', N'34', N'2', N'32', N'4', N'trả lại do thừa 2 thùng', N'', N'2025-12-22 01:41:57.0138595', N'2025-12-22 01:43:03.4198199')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'BC0D78EB-9798-4DE1-AF47-C2E095C1C48B', N'IDP_GRN_1766134402710', N'20', N'20', N'100', N'100', N'0', N'100', N'4', N'', N'', N'2024-07-15 16:22:28.7820000', N'2024-07-15 16:22:28.7820000')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'6E11EEBB-C095-4EF9-9F2A-F91E3D2A3035', N'DUTCH_LADY_GRN_1766253205388', N'13', N'13', N'40', N'40', N'0', N'40', N'4', N'', N'', N'2025-12-21 00:53:25.3297136', N'2025-12-21 00:53:46.7510515')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'F885321F-4C6C-485D-B930-FAA4FAFFF0AC', N'IDP_GRN_1766289041204', N'19', N'19', N'33', N'33', N'0', N'33', N'4', N'', N'', N'2025-12-21 10:50:41.1967774', N'2025-12-21 10:51:19.6366502')
GO

INSERT INTO [dbo].[GoodsReceiptNoteDetails] ([GoodsReceiptNoteDetailId], [GoodsReceiptNoteId], [GoodsId], [GoodsPackingId], [ExpectedPackageQuantity], [DeliveredPackageQuantity], [RejectPackageQuantity], [ActualPackageQuantity], [Status], [Note], [RejectionReason], [CreatedAt], [UpdatedAt]) VALUES (N'48FC09E6-31A3-40DF-8D80-FF8409A995B7', N'VINAMILK_GRN_1766151339703', N'3', N'3', N'80', N'80', N'0', N'80', N'4', N'', N'', N'2025-12-19 20:35:39.6651389', N'2025-12-19 20:38:04.0760424')
GO


-- ----------------------------
-- Table structure for GoodsReceiptNotes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GoodsReceiptNotes]') AND type IN ('U'))
	DROP TABLE [dbo].[GoodsReceiptNotes]
GO

CREATE TABLE [dbo].[GoodsReceiptNotes] (
  [GoodsReceiptNoteId] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Status] int  NULL,
  [ApprovalBy] int  NULL,
  [CreatedBy] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdatedAt] datetime2(7)  NULL,
  [PurchaseOderId] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[GoodsReceiptNotes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of GoodsReceiptNotes
-- ----------------------------
INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'DUTCH_LADY_GRN_1766252166868', N'3', N'1', N'2', N'2025-12-21 00:36:06.8688593', N'2025-12-21 00:36:48.1868657', N'DUTCH_LADY_PO_1766252097625')
GO

INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'DUTCH_LADY_GRN_1766253205388', N'3', N'1', N'2', N'2025-12-21 00:53:25.3886898', N'2025-12-21 00:53:46.7616862', N'DUTCH_LADY_PO_1766253144646')
GO

INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'IDP_GRN_1766134402710', N'3', N'1', N'2', N'2024-07-15 16:22:28.7820000', N'2024-07-15 16:22:28.7820000', N'IDP_PO_1766134317126')
GO

INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'IDP_GRN_1766288862701', N'3', N'1', N'2', N'2025-12-21 10:47:42.7016634', N'2025-12-21 10:48:06.4321486', N'IDP_PO_1766288704148')
GO

INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'IDP_GRN_1766289041204', N'3', N'1', N'2', N'2025-12-21 10:50:41.2046765', N'2025-12-21 10:51:19.6454990', N'IDP_PO_1766288877992')
GO

INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'NESTLE_GRN_1766143553828', N'3', N'1', N'2', N'2025-03-15 18:25:53.8285457', N'2025-03-15 18:26:34.7000062', N'NESTLE_PO_1766143458236')
GO

INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'NESTLE_GRN_1766342517025', N'3', N'1', N'2', N'2025-12-22 01:41:57.0255390', N'2025-12-22 01:43:03.4475140', N'NESTLE_PO_1766289155115')
GO

INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'TH_TRUE_MILK_GRN_1766152809351', N'3', N'1', N'2', N'2025-12-19 21:00:09.3517117', N'2025-12-19 21:00:35.3964509', N'TH_TRUE_MILK_PO_1766152430733')
GO

INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'TH_TRUE_MILK_GRN_1766367664787', N'3', N'1', N'2', N'2025-12-22 08:41:04.7870876', N'2025-12-22 08:52:40.7502706', N'TH_TRUE_MILK_PO_1766367146685')
GO

INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'VINAMILK_GRN_1766151339703', N'3', N'1', N'2', N'2025-12-19 20:35:39.7035372', N'2025-12-19 20:38:04.0882668', N'VINAMILK_PO_1766151116505')
GO

INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'VINAMILK_GRN_1766161621051', N'3', N'1', N'2', N'2025-12-19 23:27:01.0511433', N'2025-12-19 23:32:19.0855206', N'VINAMILK_PO_1766161510051')
GO

INSERT INTO [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId], [Status], [ApprovalBy], [CreatedBy], [CreatedAt], [UpdatedAt], [PurchaseOderId]) VALUES (N'VINASOY_GRN_1766135575108', N'3', N'1', N'2', N'2024-08-15 16:12:55.1081896', N'2024-08-15 16:13:34.4022745', N'VINASOY_PO_1766135502189')
GO


-- ----------------------------
-- Table structure for InventoryLedger
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[InventoryLedger]') AND type IN ('U'))
	DROP TABLE [dbo].[InventoryLedger]
GO

CREATE TABLE [dbo].[InventoryLedger] (
  [LedgerId] int  IDENTITY(1,1) NOT NULL,
  [GoodsId] int  NOT NULL,
  [GoodPackingId] int  NOT NULL,
  [EventDate] datetime2(7)  NULL,
  [InQty] int  NULL,
  [OutQty] int  NULL,
  [StocktakingChange] int  NULL,
  [BalanceAfter] int  NULL,
  [TypeChange] int  NULL
)
GO

ALTER TABLE [dbo].[InventoryLedger] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of InventoryLedger
-- ----------------------------
SET IDENTITY_INSERT [dbo].[InventoryLedger] ON
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'1', N'1', N'1', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'2', N'2', N'2', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'3', N'3', N'3', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'4', N'4', N'4', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'5', N'5', N'5', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'6', N'6', N'6', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'7', N'7', N'7', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'8', N'8', N'8', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'9', N'9', N'9', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'10', N'10', N'10', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'11', N'11', N'11', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'12', N'12', N'12', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'13', N'13', N'13', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'14', N'14', N'14', N'2025-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'15', N'15', N'15', N'2023-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'16', N'16', N'16', N'2023-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'17', N'17', N'17', N'2023-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'18', N'18', N'18', N'2023-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'19', N'19', N'19', N'2023-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'20', N'20', N'20', N'2023-12-14 16:01:02.1600000', N'0', N'0', NULL, N'0', NULL)
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'21', N'19', N'19', N'2024-07-15 15:53:51.7416304', N'100', N'0', N'0', N'100', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'22', N'20', N'20', N'2024-07-15 15:53:51.7627089', N'100', N'0', N'0', N'100', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'23', N'18', N'18', N'2024-08-15 16:13:34.4724438', N'100', N'0', N'0', N'100', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'24', N'17', N'17', N'2024-08-15 16:13:34.5299017', N'100', N'0', N'0', N'100', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'25', N'19', N'19', N'2025-07-15 16:41:15.4328083', N'0', N'40', N'0', N'60', N'3')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'26', N'18', N'18', N'2025-07-15 16:41:15.4653546', N'0', N'40', N'0', N'60', N'3')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'27', N'20', N'20', N'2025-07-15 16:41:15.4852598', N'0', N'40', N'0', N'60', N'3')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'28', N'17', N'17', N'2025-07-15 16:41:15.5133297', N'0', N'40', N'0', N'60', N'3')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'29', N'20', N'20', N'2025-08-15 17:08:20.6503806', N'0', N'40', N'0', N'20', N'3')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'30', N'19', N'19', N'2025-08-15 17:08:20.6788451', N'0', N'40', N'0', N'20', N'3')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'31', N'17', N'17', N'2025-08-15 17:08:20.6908143', N'0', N'40', N'0', N'20', N'3')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'32', N'18', N'18', N'2025-08-15 17:08:20.7111186', N'0', N'40', N'0', N'20', N'3')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'33', N'16', N'16', N'2025-03-15 18:26:34.7732834', N'40', N'0', N'0', N'40', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'34', N'15', N'15', N'2025-03-15 18:26:34.8009983', N'40', N'0', N'0', N'40', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'35', N'1', N'1', N'2025-12-19 20:38:04.1831343', N'80', N'0', N'0', N'80', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'36', N'2', N'2', N'2025-12-19 20:38:04.1971397', N'80', N'0', N'0', N'80', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'37', N'3', N'3', N'2025-12-19 20:38:04.2144339', N'80', N'0', N'0', N'80', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'38', N'7', N'7', N'2025-12-19 21:00:35.4292927', N'60', N'0', N'0', N'60', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'39', N'6', N'6', N'2025-12-19 21:00:35.4570966', N'60', N'0', N'0', N'60', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'40', N'5', N'5', N'2025-12-19 21:00:35.4892845', N'60', N'0', N'0', N'60', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'41', N'1', N'1', N'2025-12-19 23:32:19.4560016', N'30', N'0', N'0', N'110', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'42', N'2', N'2', N'2025-12-19 23:32:19.5990617', N'30', N'0', N'0', N'110', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'43', N'1', N'1', N'2025-12-20 23:10:12.8410758', N'0', N'30', N'0', N'80', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'44', N'3', N'3', N'2025-12-20 23:10:12.9327846', N'0', N'30', N'0', N'50', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'45', N'2', N'2', N'2025-12-20 23:10:12.9524637', N'0', N'30', N'0', N'80', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'46', N'3', N'3', N'2025-12-20 23:27:50.7623452', N'0', N'20', N'0', N'30', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'47', N'2', N'2', N'2025-12-20 23:27:50.7832746', N'0', N'20', N'0', N'60', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'48', N'1', N'1', N'2025-12-20 23:27:50.8039896', N'0', N'20', N'0', N'60', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'49', N'2', N'2', N'2025-12-20 23:37:57.4556948', N'0', N'30', N'0', N'30', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'50', N'3', N'3', N'2025-12-20 23:37:57.4865956', N'0', N'30', N'0', N'0', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'51', N'1', N'1', N'2025-12-20 23:37:57.5159465', N'0', N'30', N'0', N'30', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'52', N'7', N'7', N'2025-12-21 00:27:20.6973979', N'0', N'20', N'0', N'40', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'53', N'5', N'5', N'2025-12-21 00:27:20.7279875', N'0', N'20', N'0', N'40', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'54', N'6', N'6', N'2025-12-21 00:27:20.8080574', N'0', N'20', N'0', N'40', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'55', N'14', N'14', N'2025-12-21 00:36:48.2744938', N'60', N'0', N'0', N'60', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'56', N'13', N'13', N'2025-12-21 00:36:48.2852175', N'60', N'0', N'0', N'60', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'57', N'14', N'14', N'2025-12-21 00:53:46.7807803', N'40', N'0', N'0', N'100', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'58', N'13', N'13', N'2025-12-21 00:53:46.7909279', N'40', N'0', N'0', N'100', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'59', N'20', N'20', N'2025-12-21 10:48:06.7488675', N'0', N'0', N'0', N'20', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'60', N'19', N'19', N'2025-12-21 10:48:07.0384138', N'0', N'0', N'0', N'20', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'61', N'20', N'20', N'2025-12-21 10:51:19.6753072', N'33', N'0', N'0', N'53', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'62', N'19', N'19', N'2025-12-21 10:51:19.6944519', N'33', N'0', N'0', N'53', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'63', N'16', N'16', N'2025-12-22 01:35:44.9811918', N'0', N'0', N'-1', N'39', N'4')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'64', N'15', N'15', N'2025-12-22 01:43:03.6480845', N'32', N'0', N'0', N'72', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'65', N'16', N'16', N'2025-12-22 01:43:03.7380491', N'32', N'0', N'0', N'71', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'66', N'2', N'2', N'2025-12-22 07:08:23.6167217', N'0', N'30', N'0', N'0', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'67', N'1', N'1', N'2025-12-22 07:08:23.6405301', N'0', N'30', N'0', N'0', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'68', N'19', N'19', N'2025-12-22 07:16:02.5488113', N'0', N'33', N'0', N'20', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'69', N'20', N'20', N'2025-12-22 07:16:02.6275110', N'0', N'33', N'0', N'20', N'2')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'70', N'7', N'7', N'2025-12-22 08:52:40.8103230', N'34', N'0', N'0', N'74', N'1')
GO

INSERT INTO [dbo].[InventoryLedger] ([LedgerId], [GoodsId], [GoodPackingId], [EventDate], [InQty], [OutQty], [StocktakingChange], [BalanceAfter], [TypeChange]) VALUES (N'71', N'6', N'6', N'2025-12-22 08:52:40.8289186', N'34', N'0', N'0', N'74', N'1')
GO

SET IDENTITY_INSERT [dbo].[InventoryLedger] OFF
GO


-- ----------------------------
-- Table structure for Locations
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Locations]') AND type IN ('U'))
	DROP TABLE [dbo].[Locations]
GO

CREATE TABLE [dbo].[Locations] (
  [LocationId] int  IDENTITY(1,1) NOT NULL,
  [AreaId] int  NULL,
  [LocationCode] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Rack] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Row] int  NULL,
  [Column] int  NULL,
  [IsAvailable] bit  NULL,
  [Status] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[Locations] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Locations
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Locations] ON
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'1', N'1', N'A01-Rack01-R01-C01', N'Rack01', N'1', N'1', N'1', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 21:34:43.7640093')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'2', N'1', N'A01-Rack01-R01-C02', N'Rack01', N'1', N'2', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 23:24:07.1904975')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'3', N'1', N'A01-Rack01-R01-C03', N'Rack01', N'1', N'3', N'1', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-20 22:49:08.5384052')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'4', N'1', N'A01-Rack01-R01-C04', N'Rack01', N'1', N'4', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-20 22:58:48.6261857')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'5', N'1', N'A01-Rack01-R01-C05', N'Rack01', N'1', N'5', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'6', N'1', N'A01-Rack01-R02-C01', N'Rack01', N'2', N'1', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'7', N'1', N'A01-Rack01-R02-C02', N'Rack01', N'2', N'2', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'8', N'1', N'A01-Rack01-R02-C03', N'Rack01', N'2', N'3', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'9', N'1', N'A01-Rack01-R02-C04', N'Rack01', N'2', N'4', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'10', N'1', N'A01-Rack01-R02-C05', N'Rack01', N'2', N'5', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'11', N'1', N'A01-Rack02-R01-C01', N'Rack02', N'1', N'1', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'12', N'1', N'A01-Rack02-R01-C02', N'Rack02', N'1', N'2', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'13', N'1', N'A01-Rack02-R01-C03', N'Rack02', N'1', N'3', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'14', N'1', N'A01-Rack02-R01-C04', N'Rack02', N'1', N'4', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'15', N'1', N'A01-Rack02-R01-C05', N'Rack02', N'1', N'5', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'16', N'1', N'A01-Rack02-R02-C01', N'Rack02', N'2', N'1', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'17', N'1', N'A01-Rack02-R02-C02', N'Rack02', N'2', N'2', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'18', N'1', N'A01-Rack02-R02-C03', N'Rack02', N'2', N'3', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'19', N'1', N'A01-Rack02-R02-C04', N'Rack02', N'2', N'4', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'20', N'1', N'A01-Rack02-R02-C05', N'Rack02', N'2', N'5', N'1', N'1', N'2025-12-14 07:13:00.0000000', NULL)
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'21', N'2', N'A02-Rack01-R01-C01', N'Rack01', N'1', N'1', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-22 09:02:49.1201524')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'22', N'2', N'A02-Rack01-R01-C02', N'Rack01', N'1', N'2', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-22 09:03:40.9585388')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'23', N'2', N'A02-Rack01-R01-C03', N'Rack01', N'1', N'3', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-22 09:04:20.4935664')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'24', N'2', N'A02-Rack01-R01-C04', N'Rack01', N'1', N'4', N'1', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 21:34:25.2905330')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'25', N'2', N'A02-Rack01-R01-C05', N'Rack01', N'1', N'5', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 22:06:02.0673379')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'26', N'2', N'A02-Rack01-R02-C01', N'Rack01', N'2', N'1', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 22:56:14.5515521')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'27', N'2', N'A02-Rack01-R02-C02', N'Rack01', N'2', N'2', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 23:09:38.3964988')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'28', N'2', N'A02-Rack01-R02-C03', N'Rack01', N'2', N'3', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-21 00:56:50.0072604')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'29', N'2', N'A02-Rack01-R02-C04', N'Rack01', N'2', N'4', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-21 00:56:54.6513625')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'30', N'2', N'A02-Rack01-R02-C05', N'Rack01', N'2', N'5', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-20 22:58:44.2878253')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'31', N'2', N'A02-Rack02-R01-C01', N'Rack02', N'1', N'1', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 16:20:38.4000476')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'32', N'2', N'A02-Rack02-R01-C02', N'Rack02', N'1', N'2', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 17:20:31.7332476')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'33', N'2', N'A02-Rack02-R01-C03', N'Rack02', N'1', N'3', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 17:29:12.0159112')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'34', N'2', N'A02-Rack02-R01-C04', N'Rack02', N'1', N'4', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 17:33:17.2448254')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'35', N'2', N'A02-Rack02-R01-C05', N'Rack02', N'1', N'5', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 18:34:00.8383949')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'36', N'2', N'A02-Rack02-R02-C01', N'Rack02', N'2', N'1', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-21 00:44:10.0443587')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'37', N'2', N'A02-Rack02-R02-C02', N'Rack02', N'2', N'2', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-21 00:44:16.3557312')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'38', N'2', N'A02-Rack02-R02-C03', N'Rack02', N'2', N'3', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-21 00:44:22.3652600')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'39', N'2', N'A02-Rack02-R02-C04', N'Rack02', N'2', N'4', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-21 00:44:29.2905479')
GO

INSERT INTO [dbo].[Locations] ([LocationId], [AreaId], [LocationCode], [Rack], [Row], [Column], [IsAvailable], [Status], [CreatedAt], [UpdateAt]) VALUES (N'40', N'2', N'A02-Rack02-R02-C05', N'Rack02', N'2', N'5', N'0', N'1', N'2025-12-14 07:13:00.0000000', N'2025-12-19 18:34:41.8760648')
GO

SET IDENTITY_INSERT [dbo].[Locations] OFF
GO


-- ----------------------------
-- Table structure for LogHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LogHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[LogHistory]
GO

CREATE TABLE [dbo].[LogHistory] (
  [LogId] int  IDENTITY(1,1) NOT NULL,
  [Type] int  NULL,
  [Content] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [CreatedBy] int  NULL
)
GO

ALTER TABLE [dbo].[LogHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of LogHistory
-- ----------------------------
SET IDENTITY_INSERT [dbo].[LogHistory] ON
GO

SET IDENTITY_INSERT [dbo].[LogHistory] OFF
GO


-- ----------------------------
-- Table structure for Notifications
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Notifications]') AND type IN ('U'))
	DROP TABLE [dbo].[Notifications]
GO

CREATE TABLE [dbo].[Notifications] (
  [NotificationId] uniqueidentifier  NOT NULL,
  [Title] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Content] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EntityType] int  NULL,
  [EntityId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UserId] int  NULL,
  [Category] int  NULL,
  [Status] int  NULL,
  [CreatedAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[Notifications] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Notifications
-- ----------------------------
INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'D6ABD18A-D3B3-47C1-A12D-00BEB0FD714B', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-TH002-001'' (Sữa Chua Ăn TH True Milk Có Đường 100g - TH002) hết hạn ngày 27/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-23 09:00:06.2461318')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8836A49A-F7D4-4AD4-8366-02E59B9B2F67', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''VINASOY_PO_1766342679366'' đã được duyệt.', N'1', N'VINASOY_PO_1766342679366', N'5', N'1', N'1', N'2025-12-22 01:44:49.3233841')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'A09679EB-C5D5-47E8-8B30-04791D3ADD27', N'Đơn bán hàng mới chờ duyệt', N'Đơn bán hàng bán ''RET_SO_1766253607938'' vừa được gửi và đang chờ bạn duyệt.', N'2', N'RET_SO_1766253607938', N'6', N'1', N'1', N'2025-12-21 01:00:08.3583587')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'440FB908-27C8-431D-B8C6-054F53BEB874', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''VINAMILK_PO_1766151116505'' đã được xác nhận đến.', N'1', N'VINAMILK_PO_1766151116505', N'6', N'1', N'1', N'2025-12-19 20:34:48.0249732')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'9122F6BC-7657-4617-9909-05F25BA2633C', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV002-001'' (Sữa Chua Uống Yomost Hương Cam 170ml - FCV002) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-27 09:00:07.3586136')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C3B6B982-BC52-4DDC-9879-070E95F29845', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766248211770'' đã được duyệt.', N'2', N'RET_SO_1766248211770', N'5', N'1', N'1', N'2025-12-20 23:30:26.5682211')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'337B1528-56D8-41F8-8795-07A3F9EAD109', N'Phiếu kiểm kê đã được duyệt', N'Các khu vực trong phiếu kiểm kê ''STK_20251221_1766289336201'' đã được duyệt.', N'10', N'STK_20251221_1766289336201', N'2', N'1', N'1', N'2025-12-22 01:35:11.9275360')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'BA17E3E4-6394-46F5-A913-07F01DF38A25', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''NUTIFOOD_PO_1766342930983'' đang chờ duyệt.', N'1', N'NUTIFOOD_PO_1766342930983', N'6', N'1', N'1', N'2025-12-22 01:48:51.3754936')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'045CB8B8-F140-4E39-BF40-093979343113', N'Đơn xuất kho mới chờ duyệt', N'Đơn xuất kho ''RET_GIN_1766362079366'' vừa được gửi và đang chờ bạn duyệt.', N'4', N'RET_SO_1766362047732', N'1', N'1', N'1', N'2025-12-22 07:08:16.0459343')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'6B6F155B-2E62-4E17-8A8A-093F0D899202', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766152430733'' đã hoàn thành.', N'1', N'TH_TRUE_MILK_PO_1766152430733', N'5', N'1', N'1', N'2025-12-20 22:58:48.9516617')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F6F67A92-B664-4DF0-96B4-09BFC2846D90', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''IDP_PO_1766288704148'' đã hoàn thànhh.', N'1', N'IDP_PO_1766288704148', N'5', N'1', N'1', N'2025-12-21 10:48:07.0493741')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'B2064CCC-7226-4BEA-9D2F-09C7A4E2A3EE', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''VINAMILK_PO_1766151116505'' đang chờ duyệt.', N'1', N'VINAMILK_PO_1766151116505', N'6', N'1', N'1', N'2025-12-19 20:31:57.3553992')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'2AC1CC1C-905D-441E-B224-0A0DF31EC52B', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766152430733'' đã được xác nhận đến.', N'1', N'TH_TRUE_MILK_PO_1766152430733', N'5', N'1', N'1', N'2025-12-19 20:56:35.5432394')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8156576D-E075-4E38-960F-0B24E45B72EB', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''IDP_PO_1766288704148'' đã được đặt.', N'1', N'IDP_PO_1766288704148', N'1', N'1', N'1', N'2025-12-21 10:45:45.0270640')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'ABACDAA5-3FF6-426B-B663-0C31D478E011', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766362047732'' đã được duyệt.', N'2', N'RET_SO_1766362047732', N'5', N'1', N'1', N'2025-12-22 07:07:35.8686032')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'497E24DB-CD4C-45A7-AEB4-0C8A0F916D7B', N'Yêu cầu xuất hủy đã hoàn thành', N'Yêu cầu xuất hủy ''DIS_DR_1766136559792'' đã hoàn thành.', N'5', N'DIS_DR_1766136559792', N'2', N'1', N'1', N'2025-12-19 16:41:15.5237243')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'14278282-46BD-4950-A3E2-0D6B739A2F71', N'Yêu cầu xuất hủy đã được duyệt', N'Yêu cầu xuất hủy ''DIS_DR_1766138614962'' của bạn đã được duyệt.', N'5', N'DIS_DR_1766138614962', N'1', N'1', N'1', N'2025-12-19 17:04:12.1683631')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'653E4445-A493-4CA3-9615-0E9662D27095', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766152430733'' đã hoàn thành.', N'1', N'TH_TRUE_MILK_PO_1766152430733', N'1', N'1', N'1', N'2025-12-20 22:58:48.9516530')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F6727F12-E937-4E0C-8F42-10045952EF21', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766367146685'' đã được xác nhận đến.', N'1', N'TH_TRUE_MILK_PO_1766367146685', N'5', N'1', N'2', N'2025-12-22 08:40:06.3705042')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5F4DD965-F9DC-44A4-8234-1046764E1D25', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''VINAMILK_PO_1766161510051'' đã được đặt.', N'1', N'VINAMILK_PO_1766161510051', N'6', N'1', N'1', N'2025-12-19 23:26:04.0441881')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'7C01737A-5855-40FD-818F-106173E3C8C0', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''IDP_PO_1766134317126'' đã được xác nhận đến.', N'1', N'IDP_PO_1766134317126', N'6', N'1', N'1', N'2025-12-19 15:52:55.2971641')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'744178CC-9484-4AA6-A5BF-10CBD70C2B69', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''VINAMILK_GRN_1766151339703'' đã được nộp và đang chờ duyệt.', N'3', N'VINAMILK_PO_1766151116505', N'1', N'1', N'1', N'2025-12-19 20:37:28.9806128')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F9F219E3-8FE6-4B2C-8A36-113DFB29A808', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''VINAMILK_PO_1766151116505'' đã được duyệt.', N'1', N'VINAMILK_PO_1766151116505', N'5', N'1', N'1', N'2025-12-19 20:32:55.3793787')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'124F4ED1-AAD3-494D-AD8F-11760BA2E3CE', N'Đơn bán hàng mới chờ duyệt', N'Đơn bán hàng bán ''RET_SO_1766253851201'' vừa được gửi và đang chờ bạn duyệt.', N'2', N'RET_SO_1766253851201', N'6', N'1', N'1', N'2025-12-21 01:04:11.6901502')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5BE2FEEF-06FE-48BE-B7FD-11C1686A12C4', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''NESTLE_GRN_1766143553828'' đã được nộp và đang chờ duyệt.', N'3', N'NESTLE_PO_1766143458236', N'1', N'1', N'1', N'2025-12-19 18:26:10.4946769')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F8CB6B1A-7156-44EC-9C73-11D9396C09BD', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''VINAMILK_PO_1766151116505'' đã được xác nhận đến.', N'1', N'VINAMILK_PO_1766151116505', N'5', N'1', N'1', N'2025-12-19 20:34:48.0249681')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3C7FC5E3-A56E-4EA9-8A3C-12A8C2358A80', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES001-0SH'' (Thức Uống Lúa Mạch Nestlé Milo 180ml - NES001) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-27 09:00:07.3586186')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F068E46E-8DFC-4A09-94AD-12C383F08181', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''VINAMILK_PO_1766161510051'' đã hoàn thành.', N'1', N'VINAMILK_PO_1766161510051', N'1', N'1', N'1', N'2025-12-19 23:33:10.3316521')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8E7CE6BC-3AE5-431E-AC68-13045204FB3B', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''NESTLE_PO_1766143458236''.', N'1', N'NESTLE_PO_1766143458236', N'2', N'1', N'1', N'2025-12-19 18:25:37.0845676')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'DF5E9A11-1662-4794-B5AA-14E571421030', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''TH_TRUE_MILK_GRN_1766367664787'' đã được hoàn thành kiểm tra.', N'3', N'TH_TRUE_MILK_PO_1766367146685', N'2', N'2', N'1', N'2025-12-22 08:52:40.8395352')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'9CCD87CA-9705-4DB2-B04B-151354E72BDA', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766246840480'' đã hoàn thành.', N'2', N'RET_SO_1766246840480', N'2', N'1', N'1', N'2025-12-20 23:10:12.9662860')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C7BE5C3A-08B9-441E-9C3F-183B7F2DB210', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''TH_TRUE_MILK_GRN_1766367664787'' đã được nộp và đang chờ duyệt.', N'3', N'TH_TRUE_MILK_PO_1766367146685', N'1', N'1', N'2', N'2025-12-22 08:49:47.5244993')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'411BC67B-E81F-471D-90A8-1A55D7CA528C', N'Đơn xuất kho mới chờ duyệt', N'Đơn xuất kho ''RET_GIN_1766246901294'' vừa được gửi và đang chờ bạn duyệt.', N'4', N'RET_SO_1766246840480', N'1', N'1', N'1', N'2025-12-20 23:09:51.4614342')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'D50D997A-10E6-446B-9023-1AF3F8DF9B60', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''IDP_PO_1766342411270''.', N'1', N'IDP_PO_1766342411270', N'2', N'1', N'1', N'2025-12-22 01:44:37.1655039')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'07FB70F5-F56F-42AC-A03E-1B22FDCBA04A', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''NESTLE_PO_1766143458236'' đã được xác nhận đến.', N'1', N'NESTLE_PO_1766143458236', N'6', N'1', N'1', N'2025-12-19 18:25:32.8242666')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5B564955-0530-4853-B403-1B58618DAEFF', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''VINAMILK_PO_1766151116505'' đã được đặt.', N'1', N'VINAMILK_PO_1766151116505', N'1', N'1', N'1', N'2025-12-19 20:33:11.1261455')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'E839095A-A6C1-4C03-BB1D-1C97E72F9D53', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES002-0SH'' (Sữa Bột Nan Optipro Số 2 800g - NES002) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-27 09:00:07.3586146')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'E09BA3C4-A33A-4903-9ADC-1DB3D8F33FCA', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''IDP_GRN_1766289041204'' đã được hoàn thành kiểm tra.', N'3', N'IDP_PO_1766288877992', N'2', N'2', N'1', N'2025-12-21 10:51:19.7128955')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'41C4ABE1-4BED-453E-B1C2-1F0ED4400D16', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''VINAMILK_GRN_1766161621051'' đã được nộp và đang chờ duyệt.', N'3', N'VINAMILK_PO_1766161510051', N'1', N'1', N'1', N'2025-12-19 23:27:29.0919187')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'55DF4481-CF94-4159-B8FA-1F76C0FA296A', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766251725755'' đã được duyệt.', N'2', N'RET_SO_1766251725755', N'5', N'1', N'1', N'2025-12-21 00:28:55.4281492')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'849C0AB7-2837-4B66-B11E-20E789F19898', N'Yêu cầu xuất hủy đã hoàn thành', N'Yêu cầu xuất hủy ''DIS_DR_1766138614962'' đã hoàn thành.', N'5', N'DIS_DR_1766138614962', N'2', N'1', N'1', N'2025-12-19 17:08:20.7302130')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'7F880FFD-28E3-4DCF-BCD9-217063D0D863', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES002-0SH'' (Sữa Bột Nan Optipro Số 2 800g - NES002) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-26 09:00:07.5503416')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5B91D52D-1D4D-4E0E-B48E-21D34E26C56C', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766362511783'' đã được duyệt và sẵn sàng để phân công soạn hàng.', N'2', N'RET_SO_1766362511783', N'1', N'1', N'1', N'2025-12-22 07:15:22.4505401')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C4B2DB5A-44C2-474B-815A-224F931B1B9F', N'Đơn bán hàng đang được lấy hàng', N'Đơn bán hàng ''RET_SO_1766253851201'' đang được nhân viên kho tiến hành lấy hàng.', N'2', N'RET_SO_1766253851201', N'1', N'1', N'1', N'2025-12-21 01:05:24.9012352')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'B6B6CDD9-CFA8-4957-A431-2398F35AABD3', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766367146685'' đã hoàn thành.', N'1', N'TH_TRUE_MILK_PO_1766367146685', N'6', N'1', N'2', N'2025-12-22 09:04:20.9069133')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'0649CEF9-6D59-4675-8DBF-2598282E0397', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV001-001'' (Sữa Tươi Tiệt Trùng Cô Gái Hà Lan Có Đường (Dạng Gói) 220ml - FCV001) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-22 09:00:03.9553201')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'0E30F881-AFE6-4507-8B60-25C1FF026C90', N'Đơn bán hàng đang được lấy hàng', N'Đơn bán hàng ''RET_SO_1766248211770'' đang được nhân viên kho tiến hành lấy hàng.', N'2', N'RET_SO_1766248211770', N'1', N'1', N'1', N'2025-12-20 23:31:23.1649747')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5E5D4F92-270A-4542-AA71-264F1DDA6E58', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''IDP_PO_1766288877992'' đã được đặt.', N'1', N'IDP_PO_1766288877992', N'1', N'1', N'1', N'2025-12-21 10:50:12.7893725')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'1054A08A-2AB1-4142-A83A-2664661AAB13', N'Bạn được phân công một đơn hàng mới', N'Bạn vừa được phân công để soạn hàng cho đơn bán hàng ''RET_SO_1766246840480''.', N'2', N'RET_SO_1766246840480', N'2', N'2', N'1', N'2025-12-20 23:08:12.4336014')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'E0C454F6-CCC3-4727-83F4-2743F7B593E7', N'Phiếu kiểm kê đã được duyệt', N'Phiếu ''STK_20251221_1766289336201'' đã được duyệt. Vui lòng hoàn tất.', N'11', N'STK_20251221_1766289336201', N'6', N'1', N'1', N'2025-12-22 01:35:11.9275362')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'99F3CF7F-4C4D-4A37-8750-2970D4C7C855', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''IDP_PO_1766134317126'' đã được xác nhận đến.', N'1', N'IDP_PO_1766134317126', N'5', N'1', N'1', N'2025-12-19 15:52:55.2971584')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5EE34C35-8F94-412A-86F5-29F58A85C1A0', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766246840480'' đã được duyệt.', N'2', N'RET_SO_1766246840480', N'5', N'1', N'1', N'2025-12-20 23:07:54.2643365')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'6FCA4E6E-C28D-4810-B872-2A03CCD600B0', N'Đơn bán hàng mới chờ duyệt', N'Đơn bán hàng bán ''RET_SO_1766251790302'' vừa được gửi và đang chờ bạn duyệt.', N'2', N'RET_SO_1766251790302', N'6', N'1', N'1', N'2025-12-21 00:29:50.7579066')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4D5DEA99-F368-4329-BD72-2A09BC877949', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''DUTCH_LADY_PO_1766253144646''.', N'1', N'DUTCH_LADY_PO_1766253144646', N'2', N'1', N'1', N'2025-12-21 00:53:16.2195158')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'11547AA4-C6A8-4441-A848-2A87E100F709', N'Bạn được phân công một đơn hàng mới', N'Bạn vừa được phân công để soạn hàng cho đơn bán hàng ''RET_SO_1766253851201''.', N'2', N'RET_SO_1766253851201', N'2', N'2', N'1', N'2025-12-21 01:04:48.0587556')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5156873E-A6D9-4884-893E-2B7FBC22FB03', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''IDP_PO_1766342411270'' đã được xác nhận đến.', N'1', N'IDP_PO_1766342411270', N'6', N'1', N'1', N'2025-12-22 01:44:33.9154233')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'19533C17-8013-4841-9071-2C5F9D33DCD6', N'Đơn bán hàng mới chờ duyệt', N'Đơn bán hàng bán ''RET_SO_1766369836345'' vừa được gửi và đang chờ bạn duyệt.', N'2', N'RET_SO_1766369836345', N'6', N'1', N'2', N'2025-12-22 09:17:17.4153597')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'00C62A27-49D9-47FB-9A2F-2CB0C8679206', N'Phiếu kiểm kê đã hoàn thành', N'Phiếu kiểm kê ''STK_20251221_1766289336201'' đã hoàn thành kiểm kê. Cảm ơn bạn đã hoàn thành nhiệm vụ được giao.', N'7', N'STK_20251221_1766289336201', N'2', N'1', N'1', N'2025-12-22 01:35:45.5377771')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'85B4B6E1-DCBF-400A-B3B2-2CC760F5307B', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''VINASOY_PO_1766342679366'' đã được đặt.', N'1', N'VINASOY_PO_1766342679366', N'6', N'1', N'1', N'2025-12-22 01:45:18.4476297')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'E53D4B70-BD72-46A9-BE93-2D2F89770FA8', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766152430733'' đã được duyệt.', N'1', N'TH_TRUE_MILK_PO_1766152430733', N'5', N'1', N'1', N'2025-12-19 20:55:05.2952620')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'821D2C3E-27B7-47D4-9FD7-2D67ACCF0C95', N'Phiếu kiểm kê đang được tiến hành', N'Khu vực kiểm kê ''Khu thường'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đang tiến hành kiểm kê.', N'7', N'STK_20251221_1766289336201', N'1', N'1', N'1', N'2025-12-22 01:29:40.7769730')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'0B183A0C-2D4C-41B0-8EA9-2E98148D04DD', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''NESTLE_PO_1766143458236'' đã hoàn thành.', N'1', N'NESTLE_PO_1766143458236', N'5', N'1', N'1', N'2025-12-19 18:34:42.3435167')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'0FB71E02-C3E4-4A82-B954-2EFC20135DB1', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''NESTLE_PO_1766342751701'' đã được duyệt.', N'1', N'NESTLE_PO_1766342751701', N'5', N'1', N'1', N'2025-12-22 01:46:00.4640761')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'B7DF633F-8F0D-4A49-9CB1-2F922CA51B6E', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''IDP_PO_1766288877992'' đã hoàn thành.', N'1', N'IDP_PO_1766288877992', N'6', N'1', N'1', N'2025-12-21 10:54:11.3242295')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C922FFCF-38C0-4A6B-BA39-30535291670D', N'Yêu cầu duyệt phân công khu vực kiểm kê.', N'Khu vực ''Khu mát'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đã được gửi để duyệt. Vui lòng xem xét và phê duyệt.', N'11', N'STK_20251221_1766289336201', N'1', N'1', N'1', N'2025-12-22 01:26:26.7732080')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4C6ADC63-5ED3-4BDE-B589-3218FED26F8F', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''VINAMILK_PO_1766161510051'' đã được xác nhận đến.', N'1', N'VINAMILK_PO_1766161510051', N'6', N'1', N'1', N'2025-12-19 23:26:46.9090078')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'01237C71-C534-42A2-B47D-3265EAB7734A', N'Đơn bán hàng đang được lấy hàng', N'Đơn bán hàng ''RET_SO_1766251567114'' đang được nhân viên kho tiến hành lấy hàng.', N'2', N'RET_SO_1766251567114', N'1', N'1', N'1', N'2025-12-21 00:26:39.3237277')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'80F7EC60-5D26-4950-85BF-32A798AE0ABD', N'Đơn xuất kho mới chờ duyệt', N'Đơn xuất kho ''RET_GIN_1766251599186'' vừa được gửi và đang chờ bạn duyệt.', N'4', N'RET_SO_1766251567114', N'1', N'1', N'1', N'2025-12-21 00:27:07.9141244')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'38F2F151-3FF2-4C77-AEF4-342A6928208A', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''VINASOY_PO_1766342679366'' đã được đặt.', N'1', N'VINASOY_PO_1766342679366', N'1', N'1', N'1', N'2025-12-22 01:45:18.4476255')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'FEC7F10A-B24D-4A6B-9852-34F111173405', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''NESTLE_PO_1766289155115'' đã được duyệt.', N'1', N'NESTLE_PO_1766289155115', N'5', N'1', N'1', N'2025-12-21 10:52:49.3150585')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F274031F-7AD4-4CD9-8175-361470358D03', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''IDP_PO_1766134317126'' đã hoàn thành.', N'1', N'IDP_PO_1766134317126', N'6', N'1', N'1', N'2025-12-19 16:01:01.2561379')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'42D1266A-3029-4942-A2F8-3659B727EAAA', N'Khu vực đã hoàn thành kiểm kê', N'Khu vực ''Khu mát'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đã được hoàn thành kiểm kê.', N'10', N'STK_20251221_1766289336201', N'2', N'1', N'1', N'2025-12-22 01:27:07.9699577')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'EB823E00-F6B8-47E4-895B-36607696874A', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''IDP_GRN_1766288862701'' đã được hoàn thành kiểm tra.', N'3', N'IDP_PO_1766288704148', N'2', N'2', N'1', N'2025-12-21 10:48:07.0493695')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'FED5715D-C512-4D43-80C0-3742E4C2829C', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766362511783'' đã hoàn thành.', N'2', N'RET_SO_1766362511783', N'6', N'1', N'2', N'2025-12-22 07:16:02.6483171')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'02912B2A-A39E-444C-9516-38019DA6A392', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''DUTCH_LADY_PO_1766342827865'' đang chờ duyệt.', N'1', N'DUTCH_LADY_PO_1766342827865', N'6', N'1', N'1', N'2025-12-22 01:47:08.1204876')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'81371ACB-490E-43B5-A85D-3991E8C72DC4', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''TH_TRUE_MILK_PO_1766367146685''.', N'1', N'TH_TRUE_MILK_PO_1766367146685', N'2', N'1', N'1', N'2025-12-22 08:40:47.5644886')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'28E8EA52-8228-4B04-9039-39ECFCB9675B', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''VINAMILK_PO_1766161510051'' đã hoàn thành.', N'1', N'VINAMILK_PO_1766161510051', N'6', N'1', N'1', N'2025-12-19 23:33:10.3316542')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3864A1D2-5031-4053-98BA-3B7FBA8B6036', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''IDP_PO_1766134317126'' đã được đặt.', N'1', N'IDP_PO_1766134317126', N'6', N'1', N'1', N'2025-12-19 15:52:27.2163800')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'1C7EE03B-DC6D-4FA8-BDD7-3BA7A23C10D5', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''DUTCH_LADY_PO_1766252097625'' đã được đặt.', N'1', N'DUTCH_LADY_PO_1766252097625', N'6', N'1', N'1', N'2025-12-21 00:35:30.4163329')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'182470CD-47AD-45B3-9988-3C295B410593', N'Yêu cầu xuất hủy đang được lấy hàng', N'Yêu cầu xuất hủy ''DIS_DR_1766138614962'' đang được nhân viên kho tiến hành lấy hàng.', N'5', N'DIS_DR_1766138614962', N'1', N'1', N'1', N'2025-12-19 17:06:55.9201442')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5431DFED-0AEF-4012-8638-3E407BAD8AAD', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''VINAMILK_PO_1766161510051''.', N'1', N'VINAMILK_PO_1766161510051', N'2', N'1', N'1', N'2025-12-19 23:26:50.7073289')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'1B5A1B58-67E1-4580-8FF1-3EC20B35CCDE', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV002-001'' (Sữa Chua Uống Yomost Hương Cam 170ml - FCV002) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-26 09:00:07.5503400')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'05AA1747-0643-41AB-AAB5-3EEC1D40ADDC', N'Đơn mua hàng đã được phân công và đang chờ đến', N'Bạn đã được phân công nhận đơn mua hàng ''VINASOY_PO_1766342679366'' và đang chờ đến.', N'1', N'VINASOY_PO_1766342679366', N'2', N'1', N'1', N'2025-12-22 01:45:33.9809971')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'E0A04D12-5B70-4FA0-9B10-3F8BD13EFB12', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766248211770'' đã hoàn thành.', N'2', N'RET_SO_1766248211770', N'6', N'1', N'1', N'2025-12-20 23:37:57.5253545')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F7D86EE3-8664-4F3D-AAED-407DA30664EA', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766246840480'' đã hoàn thành.', N'2', N'RET_SO_1766246840480', N'5', N'1', N'1', N'2025-12-20 23:10:12.9662914')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'681339C9-6B9A-4D38-B3A4-40975ACFCBB0', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''IDP_GRN_1766288862701'' đã được nộp và đang chờ duyệt.', N'3', N'IDP_PO_1766288704148', N'1', N'1', N'1', N'2025-12-21 10:47:56.5432138')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'05713303-72BF-4EB4-A868-41DDD0EC04A4', N'Đơn bán hàng mới chờ duyệt', N'Đơn bán hàng bán ''RET_SO_1766362047732'' vừa được gửi và đang chờ bạn duyệt.', N'2', N'RET_SO_1766362047732', N'6', N'1', N'1', N'2025-12-22 07:07:28.5677429')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'B73D8585-161A-4594-B78D-429C47609CB7', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''IDP_PO_1766134317126'' đã hoàn thành.', N'1', N'IDP_PO_1766134317126', N'5', N'1', N'1', N'2025-12-19 16:01:01.2561366')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'E91056CC-B25E-4C87-A416-442AA8941EC4', N'Bạn có nhiệm vụ kiểm kê khu vực.', N'Khu vực ''Khu thường'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đã được phân công cho bạn.', N'7', N'STK_20251221_1766289336201', N'2', N'1', N'1', N'2025-12-21 11:33:29.3000455')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'FA28992F-3FD9-4723-B806-446F605B79E8', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766152430733'' đã được đặt.', N'1', N'TH_TRUE_MILK_PO_1766152430733', N'1', N'1', N'1', N'2025-12-19 20:56:13.0354250')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'CB1B8F44-0DBD-4265-8068-44C5141B813A', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766152430733'' đã hoàn thành.', N'1', N'TH_TRUE_MILK_PO_1766152430733', N'6', N'1', N'1', N'2025-12-20 22:58:48.9516629')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'171A32AD-772A-4BD5-B15D-4516DED3ADDC', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''NESTLE_PO_1766289155115'' đã được đặt.', N'1', N'NESTLE_PO_1766289155115', N'1', N'1', N'1', N'2025-12-21 10:53:02.1042055')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3BA53845-6812-4C5B-AC66-4622DCB25A28', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766253851201'' đã được duyệt.', N'2', N'RET_SO_1766253851201', N'5', N'1', N'1', N'2025-12-21 01:04:19.5812902')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5D38D1A7-FE74-4376-B049-46FD09E1978F', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''DUTCH_LADY_PO_1766253144646'' đã được duyệt.', N'1', N'DUTCH_LADY_PO_1766253144646', N'5', N'1', N'1', N'2025-12-21 00:52:45.6137951')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'195FA231-52EE-4517-BEBA-47BE7B246F4B', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''VINAMILK_PO_1766161510051'' đang chờ duyệt.', N'1', N'VINAMILK_PO_1766161510051', N'6', N'1', N'1', N'2025-12-19 23:25:11.2830610')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'7FD8033F-8BAC-49E6-838D-47CCF249E806', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''VINAMILK_PO_1766151116505'' đã hoàn thành.', N'1', N'VINAMILK_PO_1766151116505', N'1', N'1', N'1', N'2025-12-20 22:49:11.5711561')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'93EE39DA-CD29-400F-981F-4913C4F03219', N'Bạn được phân công một đơn hàng mới', N'Bạn vừa được phân công để soạn hàng cho đơn bán hàng ''RET_SO_1766362047732''.', N'2', N'RET_SO_1766362047732', N'2', N'2', N'1', N'2025-12-22 07:07:51.7997500')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'57657238-95BD-4354-96FB-493C7517A0B4', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''VINAMILK_GRN_1766151339703'' đã được hoàn thành kiểm tra.', N'3', N'VINAMILK_PO_1766151116505', N'2', N'2', N'1', N'2025-12-19 20:38:04.2237106')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'D9014130-F89A-4032-98F9-496C7144A569', N'Bạn được phân công một đơn hàng mới', N'Bạn vừa được phân công để soạn hàng cho đơn bán hàng ''RET_SO_1766251567114''.', N'2', N'RET_SO_1766251567114', N'2', N'2', N'1', N'2025-12-21 00:26:28.2921627')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4988E983-7C34-455B-BE9A-4A79319EF545', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766367146685'' đang chờ duyệt.', N'1', N'TH_TRUE_MILK_PO_1766367146685', N'6', N'1', N'2', N'2025-12-22 08:32:27.0636564')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'180C135B-9B49-4033-B25C-4AB937F83848', N'Phiếu kiểm kê đang được tiến hành', N'Khu vực kiểm kê ''Khu mát'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đang tiến hành kiểm kê.', N'7', N'STK_20251221_1766289336201', N'1', N'1', N'1', N'2025-12-22 01:24:51.9926351')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'65BBA743-BF7E-4B8B-BE2C-4B017E2835BF', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766253607938'' đã được duyệt và sẵn sàng để phân công soạn hàng.', N'2', N'RET_SO_1766253607938', N'1', N'1', N'1', N'2025-12-21 01:00:20.5863097')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'DC20CAAF-F8C3-46AD-A4D7-4BE28D9270A8', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''IDP_PO_1766288877992'' đang được tiếp nhận.', N'1', N'IDP_PO_1766288877992', N'1', N'1', N'1', N'2025-12-21 10:50:41.2649246')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'594C5232-F267-4949-8AE2-4C3156803ED6', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766251567114'' đã được duyệt và sẵn sàng để phân công soạn hàng.', N'2', N'RET_SO_1766251567114', N'1', N'1', N'1', N'2025-12-21 00:26:16.7927085')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C621A9D9-BA83-4725-93C5-4C5971BE7B57', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766362511783'' đã được duyệt.', N'2', N'RET_SO_1766362511783', N'5', N'1', N'1', N'2025-12-22 07:15:22.4505447')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8054ABDA-B75D-4D75-8232-4C5F8628E6F1', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766362047732'' đã hoàn thành.', N'2', N'RET_SO_1766362047732', N'2', N'1', N'1', N'2025-12-22 07:08:23.6503101')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'ED52438A-BEF8-44D4-AE22-4C6C4654811C', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''VINAMILK_PO_1766151116505''.', N'1', N'VINAMILK_PO_1766151116505', N'2', N'1', N'1', N'2025-12-19 20:34:52.4469798')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4C877099-B0EA-474D-AB7E-4CBA3BD50102', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''IDP_PO_1766134317126'' đang được tiếp nhận.', N'1', N'IDP_PO_1766134317126', N'1', N'1', N'1', N'2025-12-19 15:53:22.8064908')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'236DD2E2-1CCE-4F84-85DB-4CE847CC0FE4', N'Phiếu kiểm kê đã hoàn thành', N'Phiếu kiểm kê ''STK_20251221_1766289336201'' đã hoàn thành kiểm kê.', N'7', N'STK_20251221_1766289336201', N'1', N'1', N'1', N'2025-12-22 01:35:45.5377757')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'26781D89-5C19-40E5-807D-4D491DDD24EC', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766152430733'' đang chờ duyệt.', N'1', N'TH_TRUE_MILK_PO_1766152430733', N'6', N'1', N'1', N'2025-12-19 20:53:50.9958842')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'81D0A9E3-E6EC-4C3C-A750-4E270AEBAD2F', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''VINASOY_PO_1766135502189'' đã được đặt.', N'1', N'VINASOY_PO_1766135502189', N'1', N'1', N'1', N'2025-12-19 16:12:00.5692530')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'89506162-0928-4993-A167-4E7B7C64305C', N'Đơn bán hàng đang được lấy hàng', N'Đơn bán hàng ''RET_SO_1766247472196'' đang được nhân viên kho tiến hành lấy hàng.', N'2', N'RET_SO_1766247472196', N'1', N'1', N'1', N'2025-12-20 23:20:13.6633724')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'0EE58CEF-2093-446F-B7EE-4E9CAA115657', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-TH002-001'' (Sữa Chua Ăn TH True Milk Có Đường 100g - TH002) hết hạn ngày 27/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-27 09:00:07.3586007')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C1A82C7C-B237-4521-A759-4EA2FB4424BC', N'Bạn đã được rời khỏi nhiệm vụ kiểm kê khu vực.', N'Khu vực ''Khu thường'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đã được giao cho nhân sự khác. Bạn không còn phụ trách khu vực này.', N'9', NULL, N'3', N'1', N'2', N'2025-12-21 11:33:29.3000498')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'B17692D9-19FF-40A8-8B47-4EB1E4919552', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''DUTCH_LADY_GRN_1766253205388'' đã được nộp và đang chờ duyệt.', N'3', N'DUTCH_LADY_PO_1766253144646', N'1', N'1', N'1', N'2025-12-21 00:53:37.5575991')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'BD2017BF-D720-4106-921A-4FB92A2B8ECA', N'Phiếu kiểm kê được phân công', N'Bạn đã được phân công kiểm kê trong phiếu kiểm kê ''STK_20251221_1766289486464''. Vui lòng kiểm tra và thực hiện đúng thời gian quy định.', N'7', N'STK_20251221_1766289486464', N'3', N'1', N'2', N'2025-12-21 10:58:06.6555896')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'71BDF722-124A-4B0A-AD13-4FD452BC5C65', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766367146685'' đã được đặt.', N'1', N'TH_TRUE_MILK_PO_1766367146685', N'6', N'1', N'2', N'2025-12-22 08:36:18.4461588')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'CA951ABF-A1BA-4FB9-8A91-50DF57EB8DE6', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766367146685'' đang được tiếp nhận.', N'1', N'TH_TRUE_MILK_PO_1766367146685', N'1', N'1', N'2', N'2025-12-22 08:41:04.8920359')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3CB28222-1D5E-42E8-B4EA-512AC5BCA6F1', N'Cập nhật khu vực kiểm kê', N'Khu vực kiểm kê của bạn trong phiếu kiểm kê ''STK_20251221_1766289486464'' đã được cập nhật. Vui lòng kiểm tra lại thông tin khu vực kiểm kê.', N'7', N'STK_20251221_1766289486464', N'2', N'1', N'1', N'2025-12-21 11:35:12.4119730')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C7159122-89D8-4C11-A5C4-5158BE88911A', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''IDP_PO_1766134317126''.', N'1', N'IDP_PO_1766134317126', N'2', N'1', N'1', N'2025-12-19 15:52:58.1919310')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'7A4BEA13-B7F3-4A0D-871E-539F47794D1A', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''VINAMILK_PO_1766161510051'' đã được duyệt.', N'1', N'VINAMILK_PO_1766161510051', N'5', N'1', N'1', N'2025-12-19 23:25:55.4778126')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C0586908-5C7C-4212-8E6F-53A63F9A5868', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''NESTLE_PO_1766143458236'' đã hoàn thành.', N'1', N'NESTLE_PO_1766143458236', N'6', N'1', N'1', N'2025-12-19 18:34:42.3435178')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'D28E4AD2-2184-41B5-908C-540A9337B283', N'Phiếu kiểm kê được phân công', N'Bạn đã được phân công kiểm kê trong phiếu kiểm kê ''STK_20251221_1766289486464''. Vui lòng kiểm tra và thực hiện đúng thời gian quy định.', N'7', N'STK_20251221_1766289486464', N'2', N'1', N'1', N'2025-12-21 10:58:06.6555847')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5F0ED392-2B1A-4E5C-9E33-565FC2A3F51D', N'Đơn bán hàng đang được lấy hàng', N'Đơn bán hàng ''RET_SO_1766253607938'' đang được nhân viên kho tiến hành lấy hàng.', N'2', N'RET_SO_1766253607938', N'1', N'1', N'1', N'2025-12-21 01:00:45.7761606')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'56AA5F33-3B17-4793-9B78-5665FA808C9E', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-TH002-001'' (Sữa Chua Ăn TH True Milk Có Đường 100g - TH002) hết hạn ngày 27/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'1', N'2025-12-21 09:00:22.1956255')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'59A61B76-C479-4720-840E-5744039FAC02', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''NESTLE_PO_1766143458236'' đã hoàn thành.', N'1', N'NESTLE_PO_1766143458236', N'1', N'1', N'1', N'2025-12-19 18:34:42.3435109')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4FEFA197-1EA2-477B-A2F7-580319176AC8', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766251567114'' đã hoàn thành.', N'2', N'RET_SO_1766251567114', N'5', N'1', N'1', N'2025-12-21 00:27:20.8289697')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4E68D1CC-C6D8-48AF-8E5A-59232C4D2470', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''VINAMILK_PO_1766151116505'' đã hoàn thành.', N'1', N'VINAMILK_PO_1766151116505', N'5', N'1', N'1', N'2025-12-20 22:49:11.5711931')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'FD367A3B-ABFB-4079-88C4-5C661868076A', N'Phiếu kiểm kê được phân công', N'Bạn đã được phân công kiểm kê trong phiếu kiểm kê ''STK_20251221_1766289486464''. Vui lòng kiểm tra và thực hiện đúng thời gian quy định.', N'7', N'STK_20251221_1766289486464', N'2', N'1', N'1', N'2025-12-21 11:35:39.8322332')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'586B240E-C1BA-420F-BA22-5D0FB7C63D88', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766251567114'' đã được duyệt.', N'2', N'RET_SO_1766251567114', N'5', N'1', N'1', N'2025-12-21 00:26:16.7927124')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8C1B2E24-E4B9-458A-92B3-5D63190DFE57', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766362047732'' đã hoàn thành.', N'2', N'RET_SO_1766362047732', N'5', N'1', N'1', N'2025-12-22 07:08:23.6503164')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'FA4C35D3-6449-44A4-BF1F-5D7DB82643AD', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766152430733'' đã được đặt.', N'1', N'TH_TRUE_MILK_PO_1766152430733', N'6', N'1', N'1', N'2025-12-19 20:56:13.0354288')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'95D25DE2-F4EC-477F-BE01-5EDDAB9E236B', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766362511783'' đã hoàn thành.', N'2', N'RET_SO_1766362511783', N'5', N'1', N'1', N'2025-12-22 07:16:02.6483180')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5BA522F3-9AC9-4A70-9B64-5F6E35CEAFFC', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''IDP_PO_1766288877992'' đang chờ duyệt.', N'1', N'IDP_PO_1766288877992', N'6', N'1', N'1', N'2025-12-21 10:47:58.4027270')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8E240B07-F730-490F-A1EF-5FD78645E23D', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''VINASOY_PO_1766135502189'' đã hoàn thành.', N'1', N'VINASOY_PO_1766135502189', N'1', N'1', N'1', N'2025-12-19 16:20:44.0019971')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'BBDF73D6-D16C-48CB-BA10-5FEEC6F5ABCE', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766247472196'' đã được duyệt.', N'2', N'RET_SO_1766247472196', N'5', N'1', N'1', N'2025-12-20 23:18:05.5970267')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'DAF20191-7ACE-443F-B70D-60428E5A0216', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''IDP_PO_1766288877992'' đã được xác nhận đến.', N'1', N'IDP_PO_1766288877992', N'5', N'1', N'1', N'2025-12-21 10:50:27.3235310')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'B5A78677-95B3-4C7E-9C0B-613D8331FFE8', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''IDP_PO_1766288704148'' đang chờ duyệt.', N'1', N'IDP_PO_1766288704148', N'6', N'1', N'1', N'2025-12-21 10:45:05.3149702')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'CAB7326A-63FC-42AC-9FCE-6195D35D16B6', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''IDP_PO_1766342411270'' đang chờ duyệt.', N'1', N'IDP_PO_1766342411270', N'6', N'1', N'1', N'2025-12-22 01:40:12.3979959')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'2E063744-4AC0-42B9-BDA4-61B405868E05', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766253851201'' đã được duyệt và sẵn sàng để phân công soạn hàng.', N'2', N'RET_SO_1766253851201', N'1', N'1', N'1', N'2025-12-21 01:04:19.5812861')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'110EA67E-878A-4278-B51B-627F37508C47', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''VINASOY_PO_1766135502189'' đã được xác nhận đến.', N'1', N'VINASOY_PO_1766135502189', N'6', N'1', N'1', N'2025-12-19 16:12:37.6533806')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3CC8D326-E534-4387-A411-6363F07C01E8', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''DUTCH_LADY_GRN_1766252166868'' đã được hoàn thành kiểm tra.', N'3', N'DUTCH_LADY_PO_1766252097625', N'2', N'2', N'1', N'2025-12-21 00:36:48.2929766')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'136B0969-E3BF-47B2-8FD9-63B1992D8304', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''VINASOY_GRN_1766135575108'' đã được hoàn thành kiểm tra.', N'3', N'VINASOY_PO_1766135502189', N'2', N'2', N'1', N'2025-12-19 16:13:34.5429962')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'CADB8966-2F9F-42BB-AAE6-6432663B22F2', N'Đơn xuất kho mới chờ duyệt', N'Đơn xuất kho ''RET_GIN_1766362539260'' vừa được gửi và đang chờ bạn duyệt.', N'4', N'RET_SO_1766362511783', N'1', N'1', N'1', N'2025-12-22 07:15:55.8766572')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C71A77C4-DEC1-4752-88EE-64E056BFAF0C', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''DUTCH_LADY_PO_1766252097625'' đang chờ duyệt.', N'1', N'DUTCH_LADY_PO_1766252097625', N'6', N'1', N'1', N'2025-12-21 00:34:58.0713317')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3B96C4E9-454A-4E64-941D-66A1DC975FDF', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''DUTCH_LADY_PO_1766252097625'' đã được duyệt.', N'1', N'DUTCH_LADY_PO_1766252097625', N'5', N'1', N'1', N'2025-12-21 00:35:12.1344568')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'93435554-7D83-4A42-9103-66FA851F704A', N'Đơn bán hàng mới chờ duyệt', N'Đơn bán hàng bán ''RET_SO_1766247472196'' vừa được gửi và đang chờ bạn duyệt.', N'2', N'RET_SO_1766247472196', N'6', N'1', N'1', N'2025-12-20 23:17:52.6246685')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F6A8983E-FBCA-4C75-BEC9-6914EB9F6D43', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''IDP_PO_1766288877992'' đã hoàn thành.', N'1', N'IDP_PO_1766288877992', N'1', N'1', N'1', N'2025-12-21 10:54:11.3242214')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C31D6E95-CA74-4145-8BD7-6A03E9EF086C', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''IDP_PO_1766288704148'' đã được đặt.', N'1', N'IDP_PO_1766288704148', N'6', N'1', N'1', N'2025-12-21 10:45:45.0270703')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'FD9FE7B3-EAD7-45C4-A4DB-6B51A4A29109', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-TH002-001'' (Sữa Chua Ăn TH True Milk Có Đường 100g - TH002) hết hạn ngày 27/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-26 09:00:07.5503323')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5A5A7EE8-B99F-4C06-BAEC-6DD11CBF6CFF', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV002-001'' (Sữa Chua Uống Yomost Hương Cam 170ml - FCV002) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-24 09:00:05.5954491')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4B900F43-427F-4722-AA49-6EBD832F21CE', N'Bạn được phân công một đơn hàng mới', N'Bạn vừa được phân công để soạn hàng cho đơn bán hàng ''RET_SO_1766247472196''.', N'2', N'RET_SO_1766247472196', N'2', N'2', N'1', N'2025-12-20 23:18:18.4329396')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'E5F17466-6BF1-4F8B-826B-6FF522AA3DB1', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''NESTLE_PO_1766289155115'' đã được xác nhận đến.', N'1', N'NESTLE_PO_1766289155115', N'6', N'1', N'1', N'2025-12-22 01:41:39.0553874')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'B19E90EE-5108-4CC0-AA5B-7085EDCDB906', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''NESTLE_PO_1766143458236'' đã được đặt.', N'1', N'NESTLE_PO_1766143458236', N'1', N'1', N'1', N'2025-12-19 18:24:58.2005399')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'59ACF898-FAF8-4079-8449-717A5E93E64A', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES002-0SH'' (Sữa Bột Nan Optipro Số 2 800g - NES002) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-22 09:00:03.9553227')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C9704B1A-0F20-4DEC-91F9-71B25D1C81B1', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''VINASOY_PO_1766135502189''.', N'1', N'VINASOY_PO_1766135502189', N'2', N'1', N'1', N'2025-12-19 16:12:45.4929172')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'64C3E72D-3BFA-4785-91FB-71F940C4D50F', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''VINAMILK_GRN_1766161621051'' đã được nộp và đang chờ duyệt.', N'3', N'VINAMILK_PO_1766161510051', N'1', N'1', N'1', N'2025-12-19 23:32:09.7312963')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'89931586-BF5B-4C05-B6F3-72788F315431', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''NESTLE_PO_1766143458236'' đang chờ duyệt.', N'1', N'NESTLE_PO_1766143458236', N'6', N'1', N'1', N'2025-12-19 18:24:18.5834107')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'E1938871-B34B-4F7A-A87E-72E14B3DD7C4', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766251567114'' đã hoàn thành.', N'2', N'RET_SO_1766251567114', N'6', N'1', N'1', N'2025-12-21 00:27:20.8289687')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5DB4F653-E996-4C7B-ACEA-731B61A38748', N'Đơn xuất kho mới chờ duyệt', N'Đơn xuất kho ''RET_GIN_1766248282746'' vừa được gửi và đang chờ bạn duyệt.', N'4', N'RET_SO_1766248211770', N'1', N'1', N'1', N'2025-12-20 23:36:29.0731850')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'6DBE5680-A644-42BE-B5F6-74FBAE8386E6', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''DUTCH_LADY_PO_1766253144646'' đang được tiếp nhận.', N'1', N'DUTCH_LADY_PO_1766253144646', N'1', N'1', N'1', N'2025-12-21 00:53:25.5794696')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4A28333B-A460-4816-8385-7578288BB5C5', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''IDP_PO_1766342411270'' đã được đặt.', N'1', N'IDP_PO_1766342411270', N'1', N'1', N'1', N'2025-12-22 01:43:55.6115486')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'01B013C9-7FB5-40AC-A1EA-75BDC33F5EB8', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''IDP_PO_1766288877992'' đã được xác nhận đến.', N'1', N'IDP_PO_1766288877992', N'6', N'1', N'1', N'2025-12-21 10:50:27.3235359')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'9E5F107D-575E-4378-85B0-760678A10DCC', N'Đơn bán hàng đang được lấy hàng', N'Đơn bán hàng ''RET_SO_1766362047732'' đang được nhân viên kho tiến hành lấy hàng.', N'2', N'RET_SO_1766362047732', N'1', N'1', N'1', N'2025-12-22 07:07:59.7008763')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'25E88798-EB0D-4A01-9530-76FD79CAA55E', N'Bạn có nhiệm vụ kiểm kê khu vực.', N'Khu vực ''Khu thường'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đã được phân công cho bạn.', N'7', N'STK_20251221_1766289336201', N'3', N'1', N'2', N'2025-12-21 11:32:15.8975936')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'9E06AFB2-3528-4CB1-9E6F-77450D41CC84', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES001-0SH'' (Thức Uống Lúa Mạch Nestlé Milo 180ml - NES001) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-24 09:00:05.5954554')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'473B31E5-4D8B-418D-BCBE-78B4A446745F', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''NESTLE_GRN_1766342517025'' đã được hoàn thành kiểm tra.', N'3', N'NESTLE_PO_1766289155115', N'2', N'2', N'1', N'2025-12-22 01:43:03.7472613')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'BE2C529B-2ECC-49F0-9942-7924F9102EB1', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''DUTCH_LADY_PO_1766253144646'' đã được xác nhận đến.', N'1', N'DUTCH_LADY_PO_1766253144646', N'5', N'1', N'1', N'2025-12-21 00:53:13.7472096')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'7077CBBA-6837-4FBE-AA4F-7A14733CB0C7', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES001-0SH'' (Thức Uống Lúa Mạch Nestlé Milo 180ml - NES001) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-22 09:00:03.9553263')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'81BD8527-6786-476A-9775-7A2DB9BEBA92', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''TH_TRUE_MILK_GRN_1766152809351'' đã được nộp và đang chờ duyệt.', N'3', N'TH_TRUE_MILK_PO_1766152430733', N'1', N'1', N'1', N'2025-12-19 21:00:24.4366093')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'2CDCCF91-F97A-466A-AA01-7A3C03ABD7AD', N'Bạn được phân công một yêu cầu xuất hủy mới', N'Bạn vừa được phân công để soạn hàng cho yêu cầu xuất hủy ''DIS_DR_1766136559792''.', N'5', N'DIS_DR_1766136559792', N'2', N'2', N'1', N'2025-12-19 16:30:44.2053124')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4DA610CA-2FBD-4C2B-ADF2-7AE9B928812E', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766362047732'' đã hoàn thành.', N'2', N'RET_SO_1766362047732', N'6', N'1', N'2', N'2025-12-22 07:08:23.6503154')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'931F52ED-027A-4F14-BBB3-7E5396403F30', N'Yêu cầu duyệt phân công khu vực kiểm kê.', N'Khu vực ''Khu thường'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đã được gửi để duyệt. Vui lòng xem xét và phê duyệt.', N'11', N'STK_20251221_1766289336201', N'1', N'1', N'1', N'2025-12-22 01:34:52.9557844')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'68DD95F5-6719-44F4-AE2B-7E68847CBFB2', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766367146685'' đã hoàn thành.', N'1', N'TH_TRUE_MILK_PO_1766367146685', N'1', N'1', N'2', N'2025-12-22 09:04:20.9069077')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'2B0CD04F-CE47-4E5B-8F92-7ECD55155F25', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV001-001'' (Sữa Tươi Tiệt Trùng Cô Gái Hà Lan Có Đường (Dạng Gói) 220ml - FCV001) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'1', N'2025-12-21 09:00:22.1956779')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'272D4F02-1E7D-4C77-9CD9-7F81538DE50D', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''NESTLE_PO_1766143458236'' đã được duyệt.', N'1', N'NESTLE_PO_1766143458236', N'5', N'1', N'1', N'2025-12-19 18:24:36.4935664')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'6497A180-4E09-4121-B5AB-7FAB05CDF78E', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''TH_TRUE_MILK_GRN_1766152809351'' đã được hoàn thành kiểm tra.', N'3', N'TH_TRUE_MILK_PO_1766152430733', N'2', N'2', N'1', N'2025-12-19 21:00:35.5074111')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'FF0B0FBE-369E-45A5-8188-80B63656AEA4', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''DUTCH_LADY_PO_1766253144646'' đã hoàn thành.', N'1', N'DUTCH_LADY_PO_1766253144646', N'1', N'1', N'1', N'2025-12-21 00:56:54.9897115')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'996EC709-CDA8-478F-80AF-836F2C1FFA7C', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''NESTLE_PO_1766143458236'' đang được tiếp nhận.', N'1', N'NESTLE_PO_1766143458236', N'1', N'1', N'1', N'2025-12-19 18:25:53.9071974')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3837B1CA-1916-49A8-B2FC-85C8468A3F92', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766362511783'' đã hoàn thành.', N'2', N'RET_SO_1766362511783', N'2', N'1', N'1', N'2025-12-22 07:16:02.6483126')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'729A42C9-CA5A-41C2-AC1D-86816E11156E', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766248211770'' đã hoàn thành.', N'2', N'RET_SO_1766248211770', N'2', N'1', N'1', N'2025-12-20 23:37:57.5253502')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'034702B8-FCB2-4775-B265-868BA5E5999E', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''VINAMILK_PO_1766161510051'' đang được tiếp nhận.', N'1', N'VINAMILK_PO_1766161510051', N'1', N'1', N'1', N'2025-12-19 23:27:01.4595523')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'0ADC9F08-7119-4E3B-8076-86D685C95BC6', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES002-0SH'' (Sữa Bột Nan Optipro Số 2 800g - NES002) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-23 09:00:06.2461414')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'2C045C86-6323-4A05-A93E-86F0CF63067F', N'Cảnh báo sai điều kiện bảo quản', N'Pallet ''01KD1WKVB4G1H93Y3SWJ01BYAZ'' (Sữa Chua Ăn TH True Milk Có Đường 100g) đang ở vị trí A02-Rack01-R01-C03. Sai điều kiện bảo quản!', N'9', NULL, N'1', N'2', N'2', N'2025-12-26 09:00:07.5503466')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'CD28E949-637F-4DFC-AFD7-87A79622BBD4', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766367146685'' đã được đặt.', N'1', N'TH_TRUE_MILK_PO_1766367146685', N'1', N'1', N'2', N'2025-12-22 08:36:18.4461531')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'2B19231E-2170-4111-AAEB-895E3B4AAA8A', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''IDP_PO_1766288877992'' đã được duyệt.', N'1', N'IDP_PO_1766288877992', N'5', N'1', N'1', N'2025-12-21 10:49:02.5286550')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F78E5C66-22AA-45B8-ABD7-89BA9E189120', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''VINAMILK_PO_1766161510051'' đã được xác nhận đến.', N'1', N'VINAMILK_PO_1766161510051', N'5', N'1', N'1', N'2025-12-19 23:26:46.9089976')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'BADDEFFC-0F60-4317-BE23-8A1CC69E21C4', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''IDP_PO_1766342411270'' đã được duyệt.', N'1', N'IDP_PO_1766342411270', N'5', N'1', N'1', N'2025-12-22 01:42:51.5702882')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'48B0014C-9AA3-4FD9-ABAC-8A3BA2E0C91B', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''NESTLE_PO_1766143458236'' đã được xác nhận đến.', N'1', N'NESTLE_PO_1766143458236', N'5', N'1', N'1', N'2025-12-19 18:25:32.8242603')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'E94327CC-B1FE-4729-873C-8A5A5B0DB1AE', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''IDP_GRN_1766289041204'' đã được nộp và đang chờ duyệt.', N'3', N'IDP_PO_1766288877992', N'1', N'1', N'1', N'2025-12-21 10:50:57.3949219')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5CFCC788-AF2A-4442-B82C-8AAEEAA32129', N'Cập nhật khu vực kiểm kê', N'Khu vực kiểm kê của bạn trong phiếu kiểm kê ''STK_20251221_1766289486464'' đã được cập nhật. Vui lòng kiểm tra lại thông tin khu vực kiểm kê.', N'7', N'STK_20251221_1766289486464', N'2', N'1', N'1', N'2025-12-21 11:35:28.8625225')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4309596F-B099-48C9-90EE-8AB222EF7258', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''DUTCH_LADY_PO_1766252097625'' đang được tiếp nhận.', N'1', N'DUTCH_LADY_PO_1766252097625', N'1', N'1', N'1', N'2025-12-21 00:36:07.1000633')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'A6DA6E65-B23E-4B12-91C3-8DEF5EB16421', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV002-001'' (Sữa Chua Uống Yomost Hương Cam 170ml - FCV002) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-23 09:00:06.2461404')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'A93B4A3E-FDE7-4D3C-91F2-8DF25EEF1611', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''NESTLE_PO_1766342751701'' đã được đặt.', N'1', N'NESTLE_PO_1766342751701', N'6', N'1', N'1', N'2025-12-22 01:46:12.1738201')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'AB64AB15-93B6-4F7E-97F9-8E3B3DCCBE58', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''IDP_PO_1766134317126'' đã được đặt.', N'1', N'IDP_PO_1766134317126', N'1', N'1', N'1', N'2025-12-19 15:52:27.2163757')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'A4217D19-CF10-4422-B9FB-8E87BC8DCB48', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''DUTCH_LADY_PO_1766253144646'' đã hoàn thành.', N'1', N'DUTCH_LADY_PO_1766253144646', N'5', N'1', N'1', N'2025-12-21 00:56:54.9897161')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'15D6A940-2F98-43CB-B261-90B129EB7E66', N'Đơn bán hàng mới chờ duyệt', N'Đơn bán hàng bán ''RET_SO_1766251567114'' vừa được gửi và đang chờ bạn duyệt.', N'2', N'RET_SO_1766251567114', N'6', N'1', N'1', N'2025-12-21 00:26:07.6054258')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'6B5E8E0A-F86D-41EE-839A-91FD26E252BF', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV001-001'' (Sữa Tươi Tiệt Trùng Cô Gái Hà Lan Có Đường (Dạng Gói) 220ml - FCV001) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-27 09:00:07.3586124')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'E1A7A2DB-7B45-4374-A94E-935A7A5B2D51', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''VINASOY_GRN_1766135575108'' đã được nộp và đang chờ duyệt.', N'3', N'VINASOY_PO_1766135502189', N'1', N'1', N'1', N'2025-12-19 16:13:15.9397320')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'96AB377D-4724-4C5A-A395-93A175E2CFED', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''NESTLE_GRN_1766143553828'' đã được hoàn thành kiểm tra.', N'3', N'NESTLE_PO_1766143458236', N'2', N'2', N'1', N'2025-12-19 18:26:34.8109843')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F6776A95-E41D-4FB0-978D-93ED731D646B', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''NESTLE_PO_1766289155115'' đã được đặt.', N'1', N'NESTLE_PO_1766289155115', N'6', N'1', N'1', N'2025-12-21 10:53:02.1042096')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F4F28A86-26D9-4EF7-B124-9440EE3C0F87', N'Yêu cầu xuất hủy đã hoàn thành', N'Yêu cầu xuất hủy ''DIS_DR_1766136559792'' đã hoàn thành.', N'5', N'DIS_DR_1766136559792', N'6', N'1', N'1', N'2025-12-19 16:41:15.5237295')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'87972EAA-D48D-4AD9-940F-948C76FEFF81', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''VINAMILK_PO_1766151116505'' đã hoàn thành.', N'1', N'VINAMILK_PO_1766151116505', N'6', N'1', N'1', N'2025-12-20 22:49:11.5711943')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'6ADC3B5F-E3D4-4E43-B482-967ED6B200F1', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''NESTLE_PO_1766289155115'' đang được tiếp nhận.', N'1', N'NESTLE_PO_1766289155115', N'1', N'1', N'1', N'2025-12-22 01:41:57.2292002')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'821D8F99-D06B-432C-95C7-96A294D37AC7', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766253607938'' đã được duyệt.', N'2', N'RET_SO_1766253607938', N'5', N'1', N'1', N'2025-12-21 01:00:20.5863135')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3C60EB1E-B408-4299-8BF5-9776896626DD', N'Cập nhật khu vực kiểm kê', N'Khu vực kiểm kê của bạn trong phiếu kiểm kê ''STK_20251221_1766289486464'' đã được cập nhật. Vui lòng kiểm tra lại thông tin khu vực kiểm kê.', N'7', N'STK_20251221_1766289486464', N'2', N'1', N'1', N'2025-12-21 11:35:39.4308726')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'FA7B0425-759E-4E10-9795-9799DF67DC44', N'Yêu cầu xuất hủy mới chờ duyệt', N'Yêu cầu xuất hủy ''DIS_DR_1766138614962'' vừa được gửi và đang chờ bạn duyệt.', N'5', N'DIS_DR_1766138614962', N'6', N'1', N'1', N'2025-12-19 17:03:35.4913240')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'BB83369F-BCA5-42E9-9DCD-97D38625382D', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES001-0SH'' (Thức Uống Lúa Mạch Nestlé Milo 180ml - NES001) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-26 09:00:07.5503454')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'7904669F-2903-4DCF-AA8E-98E18B7C2C87', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''NESTLE_PO_1766289155115'' đang chờ duyệt.', N'1', N'NESTLE_PO_1766289155115', N'6', N'1', N'1', N'2025-12-21 10:52:35.3881082')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'FA20693A-41ED-43DA-A988-997E85435633', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''DUTCH_LADY_PO_1766252097625'' đã được xác nhận đến.', N'1', N'DUTCH_LADY_PO_1766252097625', N'5', N'1', N'1', N'2025-12-21 00:35:51.8695187')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'0F1A7B2B-8A56-4DF7-BAC3-99DFFCE9A89B', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-TH002-001'' (Sữa Chua Ăn TH True Milk Có Đường 100g - TH002) hết hạn ngày 27/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-24 09:00:05.5954411')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'35B4C143-1762-4D18-BF0C-9ACA219A559A', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''DUTCH_LADY_PO_1766253144646'' đang chờ duyệt.', N'1', N'DUTCH_LADY_PO_1766253144646', N'6', N'1', N'1', N'2025-12-21 00:52:25.5269906')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'71A4F18E-7805-41CE-BA1A-9ACB46C43F0D', N'Phiếu xuất hủy mới chờ duyệt', N'Phiếu xuất hủy ''DIS_DN_1766136798452'' vừa được gửi và đang chờ bạn duyệt.', N'6', N'DIS_DR_1766136559792', N'1', N'1', N'1', N'2025-12-19 16:40:50.8036125')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'216F8342-E67D-4690-8518-9B47ECFB3E9D', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-VNM003-001'' (Sữa Chua Ăn Vinamilk Nha Đam 100g - VNM003) hết hạn ngày 25/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-26 09:00:07.5503427')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'64E69621-C04C-488B-A6BD-9D8A36601EDF', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''VINASOY_PO_1766342679366'' đang chờ duyệt.', N'1', N'VINASOY_PO_1766342679366', N'6', N'1', N'1', N'2025-12-22 01:44:39.6792625')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'1C9A2F51-8FD6-4532-8792-9D90CD4416DC', N'Yêu cầu xuất hủy mới chờ duyệt', N'Yêu cầu xuất hủy ''DIS_DR_1766136559792'' vừa được gửi và đang chờ bạn duyệt.', N'5', N'DIS_DR_1766136559792', N'6', N'1', N'1', N'2025-12-19 16:29:41.4246547')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'97916C5A-CAC7-44C2-8418-9DFB28732870', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''IDP_PO_1766288877992''.', N'1', N'IDP_PO_1766288877992', N'2', N'1', N'1', N'2025-12-21 10:50:31.0507588')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'A4C36DE6-1E5D-45CC-8B20-9E0D35EE0401', N'Cảnh báo sai điều kiện bảo quản', N'Pallet ''01KD1WKVB4G1H93Y3SWJ01BYAZ'' (Sữa Chua Ăn TH True Milk Có Đường 100g) đang ở vị trí A02-Rack01-R01-C03. Sai điều kiện bảo quản!', N'9', NULL, N'1', N'2', N'2', N'2025-12-23 09:00:06.2461476')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'A5D411B4-955F-4D7B-A0A8-9F20AD1D0CF3', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''DUTCH_LADY_PO_1766252097625'' đã hoàn thành.', N'1', N'DUTCH_LADY_PO_1766252097625', N'1', N'1', N'1', N'2025-12-21 00:44:29.6859140')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'D0A8D0CF-E4D8-428B-9AB3-A0B2FCDE2B18', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766369836345'' đã được duyệt.', N'2', N'RET_SO_1766369836345', N'5', N'1', N'2', N'2025-12-22 09:17:30.8554106')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'11053E51-2FDF-4605-B5E3-A1DBD0AC3D4D', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''IDP_PO_1766288704148'' đã được xác nhận đến.', N'1', N'IDP_PO_1766288704148', N'5', N'1', N'1', N'2025-12-21 10:47:21.5108573')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8054C722-5332-4BEF-A27B-A264DED5269C', N'Yêu cầu xuất hủy đã được duyệt', N'Yêu cầu xuất hủy ''DIS_DR_1766139241202'' của bạn đã được duyệt.', N'5', N'DIS_DR_1766139241202', N'1', N'1', N'1', N'2025-12-19 17:38:49.1124276')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8B563868-2770-44A6-A1AB-A2BC30932DCD', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''DUTCH_LADY_GRN_1766252166868'' đã được nộp và đang chờ duyệt.', N'3', N'DUTCH_LADY_PO_1766252097625', N'1', N'1', N'1', N'2025-12-21 00:36:37.2243929')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'D0352763-A897-4DED-B99A-A3634CCC4CEE', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''VINASOY_PO_1766135502189'' đã được duyệt.', N'1', N'VINASOY_PO_1766135502189', N'5', N'1', N'1', N'2025-12-19 16:11:48.4234118')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'89C6AE92-AD21-4878-93A5-A54B135912F9', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''IDP_PO_1766288704148'' đang được tiếp nhận.', N'1', N'IDP_PO_1766288704148', N'1', N'1', N'1', N'2025-12-21 10:47:43.0841230')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'588D59C1-AB57-4AB7-9761-A5665E917376', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766152430733'' đang được tiếp nhận.', N'1', N'TH_TRUE_MILK_PO_1766152430733', N'1', N'1', N'1', N'2025-12-19 21:00:09.4237382')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'9EC3A926-3D1C-4011-B484-A5CC88AEDAFF', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''VINASOY_PO_1766135502189'' đã hoàn thành.', N'1', N'VINASOY_PO_1766135502189', N'6', N'1', N'1', N'2025-12-19 16:20:44.0020046')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8F1A7FB5-7FD8-4B8E-8FDF-A5FC8AC2F90A', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766362047732'' đã được duyệt và sẵn sàng để phân công soạn hàng.', N'2', N'RET_SO_1766362047732', N'1', N'1', N'1', N'2025-12-22 07:07:35.8685997')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C1D00729-4DF5-4027-B7DB-A61D14EC18A9', N'Yêu cầu xuất hủy đã được duyệt', N'Yêu cầu xuất hủy ''DIS_DR_1766136559792'' của bạn đã được duyệt.', N'5', N'DIS_DR_1766136559792', N'1', N'1', N'1', N'2025-12-19 16:30:31.2469647')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3AB56685-322B-4963-B2D5-A6AB68EB2109', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''VINAMILK_PO_1766161510051'' đã được đặt.', N'1', N'VINAMILK_PO_1766161510051', N'1', N'1', N'1', N'2025-12-19 23:26:04.0441794')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'AF82FEE0-E820-40E4-9ED6-A6B70D66D55C', N'Đơn bán hàng mới chờ duyệt', N'Đơn bán hàng bán ''RET_SO_1766362511783'' vừa được gửi và đang chờ bạn duyệt.', N'2', N'RET_SO_1766362511783', N'6', N'1', N'1', N'2025-12-22 07:15:12.2845917')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'792DFC80-5D3C-4EEB-A9A7-A704EE0A891B', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766152430733'' đã được xác nhận đến.', N'1', N'TH_TRUE_MILK_PO_1766152430733', N'6', N'1', N'1', N'2025-12-19 20:56:35.5432451')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'529CABFF-9923-42F2-A25D-AA0CC24F731C', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''VINASOY_PO_1766135502189'' đang chờ duyệt.', N'1', N'VINASOY_PO_1766135502189', N'6', N'1', N'1', N'2025-12-19 16:11:42.6246329')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'981EFC4C-97C0-446B-9FF9-ACE4E6158468', N'Đơn bán hàng mới chờ duyệt', N'Đơn bán hàng bán ''RET_SO_1766248211770'' vừa được gửi và đang chờ bạn duyệt.', N'2', N'RET_SO_1766248211770', N'6', N'1', N'1', N'2025-12-20 23:30:12.2730426')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4F004604-4079-41C0-A150-ADC2E5127F8E', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''IDP_PO_1766134317126'' đã được duyệt.', N'1', N'IDP_PO_1766134317126', N'5', N'1', N'1', N'2025-12-19 15:52:14.4656455')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'0B820FA2-A490-4330-A175-ADD064DA1261', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV002-001'' (Sữa Chua Uống Yomost Hương Cam 170ml - FCV002) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'1', N'2025-12-21 09:00:22.1956797')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'512EB952-D323-4905-AE7A-AE73B6567819', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''DUTCH_LADY_PO_1766253144646'' đã hoàn thành.', N'1', N'DUTCH_LADY_PO_1766253144646', N'6', N'1', N'1', N'2025-12-21 00:56:54.9897171')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'378C9AD8-1A53-484E-AB99-AEF4ECC4FE7D', N'Bạn được phân công một đơn hàng mới', N'Bạn vừa được phân công để soạn hàng cho đơn bán hàng ''RET_SO_1766248211770''.', N'2', N'RET_SO_1766248211770', N'2', N'2', N'1', N'2025-12-20 23:30:57.5236955')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F4F724DE-3F28-4F18-A806-AF0E3315DB89', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''IDP_GRN_1766134402710'' đã được nộp và đang chờ duyệt.', N'3', N'IDP_PO_1766134317126', N'1', N'1', N'1', N'2025-12-19 15:53:40.2712199')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'61743ABA-E15D-4DF5-B090-AF42E700276E', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES001-0SH'' (Thức Uống Lúa Mạch Nestlé Milo 180ml - NES001) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-23 09:00:06.2461464')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'AD8951D1-4961-4A44-978E-AF5F4A411673', N'Bạn được phân công một yêu cầu xuất hủy mới', N'Bạn vừa được phân công để soạn hàng cho yêu cầu xuất hủy ''DIS_DR_1766138614962''.', N'5', N'DIS_DR_1766138614962', N'2', N'2', N'1', N'2025-12-19 17:04:22.6710980')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'ADE8F97E-5827-4914-B1C9-AF63F26D8687', N'Yêu cầu xuất hủy đã hoàn thành', N'Yêu cầu xuất hủy ''DIS_DR_1766138614962'' đã hoàn thành.', N'5', N'DIS_DR_1766138614962', N'6', N'1', N'1', N'2025-12-19 17:08:20.7302188')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'BA12019C-BDAA-4B29-89B5-B1F841FF83AB', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''NESTLE_PO_1766342751701'' đang chờ duyệt.', N'1', N'NESTLE_PO_1766342751701', N'6', N'1', N'1', N'2025-12-22 01:45:51.9271721')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'560140D5-562D-4BE0-A9A4-B280EBFAABDE', N'Phiếu xuất hủy mới chờ duyệt', N'Phiếu xuất hủy ''DIS_DN_1766138815826'' vừa được gửi và đang chờ bạn duyệt.', N'6', N'DIS_DR_1766138614962', N'1', N'1', N'1', N'2025-12-19 17:07:53.4256299')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'83DA01EE-E966-4097-BB99-B3E8B0139F95', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-VNM003-001'' (Sữa Chua Ăn Vinamilk Nha Đam 100g - VNM003) hết hạn ngày 25/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'1', N'2025-12-21 09:00:22.1956824')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'412EDCB8-7093-43CD-A632-B3F451647897', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766247472196'' đã hoàn thành.', N'2', N'RET_SO_1766247472196', N'6', N'1', N'1', N'2025-12-20 23:27:50.8128554')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'D7ACA419-721A-4AD8-B828-B608F8E0D318', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV001-001'' (Sữa Tươi Tiệt Trùng Cô Gái Hà Lan Có Đường (Dạng Gói) 220ml - FCV001) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-26 09:00:07.5503388')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'612EFEAF-4666-4411-9DE0-B6A9B6F49B53', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''VINAMILK_GRN_1766161621051'' đã được hoàn thành kiểm tra.', N'3', N'VINAMILK_PO_1766161510051', N'2', N'2', N'1', N'2025-12-19 23:32:19.6647368')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'278929C3-3A74-4091-85C7-B811A0D5858A', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES002-0SH'' (Sữa Bột Nan Optipro Số 2 800g - NES002) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'1', N'2025-12-24 09:00:05.5954503')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'DE8E87CE-A23F-49B8-B48C-B8C1BA5A2417', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766246840480'' đã hoàn thành.', N'2', N'RET_SO_1766246840480', N'6', N'1', N'1', N'2025-12-20 23:10:12.9662901')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'7C675482-E683-47EF-952D-B8E769302D77', N'Bạn đã được rời khỏi nhiệm vụ kiểm kê khu vực.', N'Khu vực ''Khu thường'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đã được giao cho nhân sự khác. Bạn không còn phụ trách khu vực này.', N'9', NULL, N'2', N'1', N'1', N'2025-12-21 11:31:37.8644854')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'2EA84F12-CDE1-41EF-9C22-B9010F430BE7', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''VINAMILK_PO_1766161510051'' đã hoàn thành.', N'1', N'VINAMILK_PO_1766161510051', N'5', N'1', N'1', N'2025-12-19 23:33:10.3316538')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'9D1D6360-12BD-4DCF-B921-BA74A490CB4C', N'Bạn đã được rời khỏi nhiệm vụ kiểm kê khu vực.', N'Khu vực ''Khu thường'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đã được giao cho nhân sự khác. Bạn không còn phụ trách khu vực này.', N'9', NULL, N'2', N'1', N'1', N'2025-12-21 11:32:15.8975987')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'33938867-DF06-43B3-BE06-BB6CD75273E6', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''IDP_PO_1766134317126'' đã hoàn thành.', N'1', N'IDP_PO_1766134317126', N'1', N'1', N'1', N'2025-12-19 16:01:01.2561310')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'74332124-BC03-4923-A9B3-C0D7CD0B443B', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''IDP_PO_1766288704148'' đã được duyệt.', N'1', N'IDP_PO_1766288704148', N'5', N'1', N'1', N'2025-12-21 10:45:30.9735818')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C62D6A95-BED4-4D69-9DEB-C0EED502AF67', N'Đơn bán hàng mới chờ duyệt', N'Đơn bán hàng bán ''RET_SO_1766246840480'' vừa được gửi và đang chờ bạn duyệt.', N'2', N'RET_SO_1766246840480', N'6', N'1', N'1', N'2025-12-20 23:07:27.0028441')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'4C1E06C8-1698-4BFD-A566-C129B3A7DF5F', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''VINAMILK_PO_1766151116505'' đang được tiếp nhận.', N'1', N'VINAMILK_PO_1766151116505', N'1', N'1', N'1', N'2025-12-19 20:35:39.8076637')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'13BC3FDA-5FC2-418E-920E-C159C3A540E8', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''DUTCH_LADY_PO_1766253144646'' đã được đặt.', N'1', N'DUTCH_LADY_PO_1766253144646', N'6', N'1', N'1', N'2025-12-21 00:53:03.4001234')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'2C74BCEC-FE5A-4B19-9E7D-C1A7D5EB1494', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''NESTLE_PO_1766143458236'' đã được đặt.', N'1', N'NESTLE_PO_1766143458236', N'6', N'1', N'1', N'2025-12-19 18:24:58.2005474')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'47D9324A-E0D2-4FF2-A0BD-C1CA86E6359F', N'Phiếu kiểm kê được phân công', N'Bạn đã được phân công kiểm kê trong phiếu kiểm kê ''STK_20251221_1766289336201''. Vui lòng kiểm tra và thực hiện đúng thời gian quy định.', N'7', N'STK_20251221_1766289336201', N'2', N'1', N'1', N'2025-12-21 10:55:37.5210673')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'769D7B3D-171A-4C70-A0C4-C219701B8642', N'Cảnh báo sai điều kiện bảo quản', N'Pallet ''01KD1WKVB4G1H93Y3SWJ01BYAZ'' (Sữa Chua Ăn TH True Milk Có Đường 100g) đang ở vị trí A02-Rack01-R01-C03. Sai điều kiện bảo quản!', N'9', NULL, N'1', N'2', N'2', N'2025-12-27 09:00:07.3586199')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5AC0CF21-E961-4D92-A35C-C3767A0E5DED', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''DUTCH_LADY_PO_1766253144646'' đã được xác nhận đến.', N'1', N'DUTCH_LADY_PO_1766253144646', N'6', N'1', N'1', N'2025-12-21 00:53:13.7472142')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'77977871-0898-4E12-A185-C43B818AA7E4', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766367146685'' đã được xác nhận đến.', N'1', N'TH_TRUE_MILK_PO_1766367146685', N'6', N'1', N'2', N'2025-12-22 08:40:06.3705079')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'A840B634-8694-477A-B458-C573DD768342', N'Yêu cầu xuất hủy mới chờ duyệt', N'Yêu cầu xuất hủy ''DIS_DR_1766139241202'' vừa được gửi và đang chờ bạn duyệt.', N'5', N'DIS_DR_1766139241202', N'6', N'1', N'1', N'2025-12-19 17:14:01.6448273')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'ADF88C91-CADB-45DA-99AA-C827D40AA836', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-VNM003-001'' (Sữa Chua Ăn Vinamilk Nha Đam 100g - VNM003) hết hạn ngày 25/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-22 09:00:03.9553237')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'D15D1BE8-276A-4285-B544-C8564C18A7D9', N'Đơn mua hàng bị từ chối', N'Đơn mua hàng ''NUTIFOOD_PO_1766342930983'' đã bị từ chối.', N'1', N'NUTIFOOD_PO_1766342930983', N'5', N'2', N'1', N'2025-12-22 01:49:09.8981044')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F9C9D40E-D735-4B13-8BBF-C867F2E01643', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''IDP_PO_1766288877992'' đã hoàn thành.', N'1', N'IDP_PO_1766288877992', N'5', N'1', N'1', N'2025-12-21 10:54:11.3242285')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C397AFFD-524B-4D3F-885E-CAC9F6B7ABC5', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''NESTLE_PO_1766289155115''.', N'1', N'NESTLE_PO_1766289155115', N'2', N'1', N'1', N'2025-12-22 01:41:43.6332554')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'69606358-2DD5-4B16-9543-CB75AC069158', N'Cảnh báo sai điều kiện bảo quản', N'Pallet ''01KD1WKVB4G1H93Y3SWJ01BYAZ'' (Sữa Chua Ăn TH True Milk Có Đường 100g) đang ở vị trí A02-Rack01-R01-C03. Sai điều kiện bảo quản!', N'9', NULL, N'1', N'2', N'2', N'2025-12-24 09:00:05.5954566')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C219DFCA-4B18-4F55-A0F3-CB80BE93EC1D', N'Bạn được phân công một yêu cầu xuất hủy mới', N'Bạn vừa được phân công để soạn hàng cho yêu cầu xuất hủy ''DIS_DR_1766139241202''.', N'5', N'DIS_DR_1766139241202', N'2', N'2', N'1', N'2025-12-19 17:39:13.4941726')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'AF450586-A9C7-4FAE-8BAC-CBB726109D72', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''IDP_PO_1766288704148'' đã hoàn thànhh.', N'1', N'IDP_PO_1766288704148', N'6', N'1', N'1', N'2025-12-21 10:48:07.0493751')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'D22C03B8-9061-4EE1-8BF0-CC0B9AE388D6', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766247472196'' đã hoàn thành.', N'2', N'RET_SO_1766247472196', N'5', N'1', N'1', N'2025-12-20 23:27:50.8128564')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'E49D3235-843D-4924-BF93-CCA39F7A5DEF', N'Khu vực đã hoàn thành kiểm kê', N'Khu vực ''Khu thường'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đã được hoàn thành kiểm kê.', N'10', N'STK_20251221_1766289336201', N'2', N'1', N'1', N'2025-12-22 01:35:11.9275347')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F5E2A771-EDEB-48B4-991A-CDE17612A762', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''DUTCH_LADY_PO_1766253144646'' đã được đặt.', N'1', N'DUTCH_LADY_PO_1766253144646', N'1', N'1', N'1', N'2025-12-21 00:53:03.4001189')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'B2217947-EACF-4667-B7D8-CF9C4DA2A82C', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766369836345'' đã được duyệt và sẵn sàng để phân công soạn hàng.', N'2', N'RET_SO_1766369836345', N'1', N'1', N'2', N'2025-12-22 09:17:30.8554061')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F9D28D2B-23A3-4D14-BDBC-CFCBFC5D8B74', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''IDP_PO_1766288704148'' đã được xác nhận đến.', N'1', N'IDP_PO_1766288704148', N'6', N'1', N'1', N'2025-12-21 10:47:21.5108651')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'A8322C67-3284-4FB0-AB6B-D119BB9EC5B0', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV001-001'' (Sữa Tươi Tiệt Trùng Cô Gái Hà Lan Có Đường (Dạng Gói) 220ml - FCV001) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-23 09:00:06.2461392')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'D6CC8CB2-9D6A-41FA-8A68-D1FB5DF6CF45', N'Bạn được phân công một đơn hàng mới', N'Bạn vừa được phân công để soạn hàng cho đơn bán hàng ''RET_SO_1766369836345''.', N'2', N'RET_SO_1766369836345', N'2', N'2', N'1', N'2025-12-22 09:22:06.1202961')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8D4FF335-85EE-4359-B6D5-D4738A470E03', N'Đơn xuất kho mới chờ duyệt', N'Đơn xuất kho ''RET_GIN_1766247613584'' vừa được gửi và đang chờ bạn duyệt.', N'4', N'RET_SO_1766247472196', N'1', N'1', N'1', N'2025-12-20 23:27:36.6967503')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'58691FB8-29F3-4A0D-B0F9-D4B21ECE59F6', N'Phiếu kiểm kê thay đổi phân công', N'Bạn đã được gỡ khỏi phiếu kiểm kê ''STK_20251221_1766289486464''. Vui lòng liên hệ quản lý kho nếu cần thêm thông tin.', N'9', NULL, N'3', N'1', N'2', N'2025-12-21 11:35:12.3830876')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3621D559-F0BA-4DFC-8F64-D52D08F35E82', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''DUTCH_LADY_PO_1766342827865'' đã được duyệt.', N'1', N'DUTCH_LADY_PO_1766342827865', N'5', N'1', N'1', N'2025-12-22 01:48:00.9066233')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'594FD032-77EF-4ED3-B8C0-D75501631BB0', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''IDP_PO_1766288877992'' đã được đặt.', N'1', N'IDP_PO_1766288877992', N'6', N'1', N'1', N'2025-12-21 10:50:12.7893767')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'DC57A682-7FFE-4ED4-A8CA-D77462CB40FA', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''IDP_GRN_1766134402710'' đã được hoàn thành kiểm tra.', N'3', N'IDP_PO_1766134317126', N'2', N'2', N'1', N'2025-12-19 15:53:51.7918206')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'BF8D0D04-4E6B-4A74-9D1F-D83240D266BA', N'Đơn mua hàng đã được duyệt', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766367146685'' đã được duyệt.', N'1', N'TH_TRUE_MILK_PO_1766367146685', N'5', N'1', N'2', N'2025-12-22 08:36:03.8849974')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3A0E4CB9-90B8-4D43-9A9B-D9D638107D54', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766246840480'' đã được duyệt và sẵn sàng để phân công soạn hàng.', N'2', N'RET_SO_1766246840480', N'1', N'1', N'1', N'2025-12-20 23:07:54.2643309')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'768CDC3C-7783-4352-B4B0-DBE35B1D79E7', N'Đơn bán hàng đang được lấy hàng', N'Đơn bán hàng ''RET_SO_1766246840480'' đang được nhân viên kho tiến hành lấy hàng.', N'2', N'RET_SO_1766246840480', N'1', N'1', N'1', N'2025-12-20 23:08:21.8451851')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'D0F50D3D-8E2C-4872-BCD4-DC90CE2DC27C', N'Đơn bán hàng mới chờ duyệt', N'Đơn bán hàng bán ''RET_SO_1766251725755'' vừa được gửi và đang chờ bạn duyệt.', N'2', N'RET_SO_1766251725755', N'6', N'1', N'1', N'2025-12-21 00:28:46.1451539')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'AE14D966-723E-464A-94E7-DCAEAE4DE659', N'Phiếu nhập kho đã hoàn tất kiểm tra', N'Phiếu nhập kho ''DUTCH_LADY_GRN_1766253205388'' đã được hoàn thành kiểm tra.', N'3', N'DUTCH_LADY_PO_1766253144646', N'2', N'2', N'1', N'2025-12-21 00:53:46.8013238')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'1C77714F-F6F9-4990-BDD1-DCDF88680319', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV002-001'' (Sữa Chua Uống Yomost Hương Cam 170ml - FCV002) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-22 09:00:03.9553217')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'2B7F9A10-2A7C-44B1-94D7-DCE3BF49E5CC', N'Đơn mua hàng chờ duyệt', N'Đơn mua hàng ''IDP_PO_1766134317126'' đang chờ duyệt.', N'1', N'IDP_PO_1766134317126', N'6', N'1', N'1', N'2025-12-19 15:51:57.7821291')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8C79A49E-B836-4FA9-AEBF-DEF1DD7702D7', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''DUTCH_LADY_PO_1766252097625''.', N'1', N'DUTCH_LADY_PO_1766252097625', N'2', N'1', N'1', N'2025-12-21 00:35:57.2347411')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'DD9E5201-6CC5-44FA-8C21-DFC1F3895EF0', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-VNM003-001'' (Sữa Chua Ăn Vinamilk Nha Đam 100g - VNM003) hết hạn ngày 25/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-24 09:00:05.5954514')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'384866D8-BA58-4AD3-86D6-E008DE773F6E', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''VINAMILK_PO_1766151116505'' đã được đặt.', N'1', N'VINAMILK_PO_1766151116505', N'6', N'1', N'1', N'2025-12-19 20:33:11.1261489')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'80A4BA1F-9052-49A3-8E3C-E01EE8F125AA', N'Phiếu kiểm kê được phân công', N'Bạn đã được phân công kiểm kê trong phiếu kiểm kê ''STK_20251221_1766341749642''. Vui lòng kiểm tra và thực hiện đúng thời gian quy định.', N'7', N'STK_20251221_1766341749642', N'2', N'1', N'1', N'2025-12-22 01:29:10.8082251')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8772F688-ABBA-445E-ADA0-E07F439B5018', N'Đơn mua hàng đang được tiếp nhận', N'Đơn mua hàng ''VINASOY_PO_1766135502189'' đang được tiếp nhận.', N'1', N'VINASOY_PO_1766135502189', N'1', N'1', N'1', N'2025-12-19 16:12:55.1477232')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8FB5E7EC-B285-4F9F-BB4D-E14FA8EF42CE', N'Bạn được phân công một đơn hàng mới', N'Bạn vừa được phân công để soạn hàng cho đơn bán hàng ''RET_SO_1766362511783''.', N'2', N'RET_SO_1766362511783', N'2', N'2', N'1', N'2025-12-22 07:15:32.5188154')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5254DECB-3475-4673-9280-E2205DF024D0', N'Yêu cầu xuất hủy đang được lấy hàng', N'Yêu cầu xuất hủy ''DIS_DR_1766136559792'' đang được nhân viên kho tiến hành lấy hàng.', N'5', N'DIS_DR_1766136559792', N'1', N'1', N'1', N'2025-12-19 16:33:19.1273630')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C0F98572-EA98-4AA5-BCB1-E45687A6CB1A', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''DUTCH_LADY_PO_1766252097625'' đã được đặt.', N'1', N'DUTCH_LADY_PO_1766252097625', N'1', N'1', N'1', N'2025-12-21 00:35:30.4163285')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'18B693D0-7E82-4B7C-ACD4-E4FE25C7C1E4', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766248211770'' đã hoàn thành.', N'2', N'RET_SO_1766248211770', N'5', N'1', N'1', N'2025-12-20 23:37:57.5253555')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'9537C561-2E9D-49F9-9B58-E7654097CC8B', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''VINASOY_PO_1766135502189'' đã được đặt.', N'1', N'VINASOY_PO_1766135502189', N'6', N'1', N'1', N'2025-12-19 16:12:00.5692581')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'09531AA8-1C76-43A2-8EB7-E8E99E9406A1', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''IDP_PO_1766342411270'' đã được đặt.', N'1', N'IDP_PO_1766342411270', N'6', N'1', N'1', N'2025-12-22 01:43:55.6115525')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'0A1CB99F-DB4F-4AE6-9965-EA2B2C0BFB3C', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''TH_TRUE_MILK_PO_1766367146685'' đã hoàn thành.', N'1', N'TH_TRUE_MILK_PO_1766367146685', N'5', N'1', N'2', N'2025-12-22 09:04:20.9069122')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'142F5420-1E43-4847-8435-EAF27264D1A2', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES002-0SH'' (Sữa Bột Nan Optipro Số 2 800g - NES002) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'1', N'2025-12-21 09:00:22.1956811')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'377E0854-838C-4254-BA4C-EB9BE477EE4B', N'Phiếu nhập kho bị từ chối', N'Phiếu nhập kho VINAMILK_GRN_1766161621051 được yêu cầu kiểm tra lại.', N'3', N'VINAMILK_PO_1766161510051', N'2', N'2', N'1', N'2025-12-19 23:31:24.7698091')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'B7607E02-F01C-466F-999F-EC528A1E1E5F', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''DUTCH_LADY_PO_1766252097625'' đã được xác nhận đến.', N'1', N'DUTCH_LADY_PO_1766252097625', N'6', N'1', N'1', N'2025-12-21 00:35:51.8695235')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'7F0BEE55-7DDD-4202-89AB-ED1FD67DBBA5', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-NES001-0SH'' (Thức Uống Lúa Mạch Nestlé Milo 180ml - NES001) hết hạn ngày 15/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'1', N'2025-12-21 09:00:22.1956852')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F52208BB-3A3F-43EF-A838-EDFB486470B0', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''NESTLE_PO_1766289155115'' đã được xác nhận đến.', N'1', N'NESTLE_PO_1766289155115', N'5', N'1', N'1', N'2025-12-22 01:41:39.0553818')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'8B60D43F-4ED4-4BAF-B6C5-EE0F94DEA39C', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''VINASOY_PO_1766135502189'' đã hoàn thành.', N'1', N'VINASOY_PO_1766135502189', N'5', N'1', N'1', N'2025-12-19 16:20:44.0020036')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'EBF93F6F-BC2C-42C0-86AF-F0590C3ABEBF', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-VNM003-001'' (Sữa Chua Ăn Vinamilk Nha Đam 100g - VNM003) hết hạn ngày 25/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-23 09:00:06.2461430')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'0B7CCE96-915C-40D4-B529-F1C49F40E143', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''IDP_PO_1766288704148''.', N'1', N'IDP_PO_1766288704148', N'2', N'1', N'1', N'2025-12-21 10:47:27.4771880')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'FD34AA04-7DAC-4A15-8BF4-F36AF1E7B878', N'Bạn được phân công một đơn hàng mới', N'Bạn vừa được phân công để soạn hàng cho đơn bán hàng ''RET_SO_1766253607938''.', N'2', N'RET_SO_1766253607938', N'2', N'2', N'1', N'2025-12-21 01:00:32.6685088')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'65F0213C-329E-4DDF-81A6-F37C220BE8E4', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766251725755'' đã được duyệt và sẵn sàng để phân công soạn hàng.', N'2', N'RET_SO_1766251725755', N'1', N'1', N'1', N'2025-12-21 00:28:55.4281458')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'663F1218-F516-4828-A6D9-F5050A361C35', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766248211770'' đã được duyệt và sẵn sàng để phân công soạn hàng.', N'2', N'RET_SO_1766248211770', N'1', N'1', N'1', N'2025-12-20 23:30:26.5682174')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'F3FDE290-BD95-4540-9834-F63E85712962', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''IDP_PO_1766342411270'' đã được xác nhận đến.', N'1', N'IDP_PO_1766342411270', N'5', N'1', N'1', N'2025-12-22 01:44:33.9154197')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'64797E9B-3800-4B15-A4B4-F68345D9BCD0', N'Phiếu nhập kho chờ duyệt', N'Phiếu nhập kho ''NESTLE_GRN_1766342517025'' đã được nộp và đang chờ duyệt.', N'3', N'NESTLE_PO_1766289155115', N'1', N'1', N'1', N'2025-12-22 01:42:48.6954524')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'A59F24FC-6E81-4994-B053-F6D6CEA7C303', N'Đơn mua hàng đã được đặt', N'Đơn mua hàng ''NESTLE_PO_1766342751701'' đã được đặt.', N'1', N'NESTLE_PO_1766342751701', N'1', N'1', N'1', N'2025-12-22 01:46:12.1738166')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'48716F99-246D-480A-B322-F77AC9AE64CF', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''DUTCH_LADY_PO_1766252097625'' đã hoàn thành.', N'1', N'DUTCH_LADY_PO_1766252097625', N'6', N'1', N'1', N'2025-12-21 00:44:29.6859201')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'06667585-3FC6-42D2-8035-F7F6B079F6DA', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-VNM003-001'' (Sữa Chua Ăn Vinamilk Nha Đam 100g - VNM003) hết hạn ngày 25/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-27 09:00:07.3586158')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'26D77668-9A03-495A-9AFD-F8957B972215', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''IDP_PO_1766288704148'' đã hoàn thànhh.', N'1', N'IDP_PO_1766288704148', N'2', N'1', N'1', N'2025-12-21 10:48:07.0493760')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5E67C152-8341-431F-8A65-F8D1F8CE7523', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766251567114'' đã hoàn thành.', N'2', N'RET_SO_1766251567114', N'2', N'1', N'1', N'2025-12-21 00:27:20.8289634')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'573C6FA6-8591-4A8D-B32F-FA2C130248DE', N'Bạn có nhiệm vụ kiểm kê khu vực.', N'Khu vực ''Khu thường'' trong phiếu kiểm kê ''STK_20251221_1766289336201'' đã được phân công cho bạn.', N'7', N'STK_20251221_1766289336201', N'2', N'1', N'1', N'2025-12-21 11:31:37.8644783')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'C4FD037E-DB0F-4F30-8739-FA937CD78A5B', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-TH002-001'' (Sữa Chua Ăn TH True Milk Có Đường 100g - TH002) hết hạn ngày 27/01/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-22 09:00:03.9553144')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'3C9AE373-5234-4679-A440-FB1061785186', N'Đơn bán hàng đã hoàn thành', N'Đơn bán hàng ''RET_SO_1766247472196'' đã hoàn thành.', N'2', N'RET_SO_1766247472196', N'2', N'1', N'1', N'2025-12-20 23:27:50.8128516')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'5601EFEB-783A-4BAC-8477-FB419A28F980', N'Đơn mua hàng đã được phân công và đã đến', N'Bạn đã được phân công nhận đơn mua hàng ''TH_TRUE_MILK_PO_1766152430733''.', N'1', N'TH_TRUE_MILK_PO_1766152430733', N'2', N'1', N'1', N'2025-12-19 20:56:38.3961144')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'89210FA4-4673-4521-80E5-FCBBB3EAB1A6', N'Đơn bán hàng đã được duyệt', N'Đơn bán hàng ''RET_SO_1766247472196'' đã được duyệt và sẵn sàng để phân công soạn hàng.', N'2', N'RET_SO_1766247472196', N'1', N'1', N'1', N'2025-12-20 23:18:05.5970230')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'68160A00-AA92-44DB-9C33-FCDE20DB2A1D', N'Đơn mua hàng đã hoàn thành', N'Đơn mua hàng ''DUTCH_LADY_PO_1766252097625'' đã hoàn thành.', N'1', N'DUTCH_LADY_PO_1766252097625', N'5', N'1', N'1', N'2025-12-21 00:44:29.6859192')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'EE3EF406-1A55-42F6-A14E-FDBF3ECE3FEC', N'Đơn mua hàng đã được xác nhận đến', N'Đơn mua hàng ''VINASOY_PO_1766135502189'' đã được xác nhận đến.', N'1', N'VINASOY_PO_1766135502189', N'5', N'1', N'1', N'2025-12-19 16:12:37.6533745')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'7056E9D3-91BD-4273-8506-FE289B6FB499', N'Cảnh báo hàng sắp hết hạn', N'Lô ''BAT-FCV001-001'' (Sữa Tươi Tiệt Trùng Cô Gái Hà Lan Có Đường (Dạng Gói) 220ml - FCV001) hết hạn ngày 10/02/2026. Còn dưới 60 ngày.', N'8', NULL, N'1', N'2', N'2', N'2025-12-24 09:00:05.5954475')
GO

INSERT INTO [dbo].[Notifications] ([NotificationId], [Title], [Content], [EntityType], [EntityId], [UserId], [Category], [Status], [CreatedAt]) VALUES (N'7B837B36-14FA-4D2D-B1C9-FF8749E9793A', N'Đơn bán hàng đang được lấy hàng', N'Đơn bán hàng ''RET_SO_1766362511783'' đang được nhân viên kho tiến hành lấy hàng.', N'2', N'RET_SO_1766362511783', N'1', N'1', N'1', N'2025-12-22 07:15:39.2947756')
GO


-- ----------------------------
-- Table structure for Pallets
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Pallets]') AND type IN ('U'))
	DROP TABLE [dbo].[Pallets]
GO

CREATE TABLE [dbo].[Pallets] (
  [PalletId] char(26) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [GoodsReceiptNoteId] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BatchId] uniqueidentifier  NULL,
  [GoodsPackingId] int  NULL,
  [PackageQuantity] int  NULL,
  [LocationId] int  NULL,
  [CreateBy] int  NULL,
  [Status] int  NULL,
  [CreateAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[Pallets] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Pallets
-- ----------------------------
INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTXD16ZYQEADZ4YQN8BJCDH', N'IDP_GRN_1766134402710', N'C1FAF6CD-BA5E-4919-B488-06C6FEB8E89A', N'19', N'0', N'21', N'2', N'3', N'2025-12-19 16:00:09.8348719', N'2025-12-19 17:08:20.5864288')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTXD1CXY7FP5F1TCZQA2R6N', N'IDP_GRN_1766134402710', N'C1FAF6CD-BA5E-4919-B488-06C6FEB8E89A', N'19', N'20', N'34', N'2', N'1', N'2025-12-19 16:00:10.0138250', N'2025-12-22 01:35:42.9973109')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTXD1D84JZK43HA0SK8E5Z4', N'IDP_GRN_1766134402710', N'C1FAF6CD-BA5E-4919-B488-06C6FEB8E89A', N'19', N'0', N'23', N'2', N'3', N'2025-12-19 16:00:10.0244362', N'2025-12-19 16:41:15.2720503')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTXD1DJQ60HFBRX0JFWEMSY', N'IDP_GRN_1766134402710', N'0AE1C71C-85E3-4943-BEEF-D323D39CBC98', N'20', N'0', N'24', N'2', N'3', N'2025-12-19 16:00:10.0340626', N'2025-12-19 17:08:20.5864234')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTXD1DWGN0W8X3YDSTZADPA', N'IDP_GRN_1766134402710', N'0AE1C71C-85E3-4943-BEEF-D323D39CBC98', N'20', N'20', N'33', N'2', N'1', N'2025-12-19 16:00:10.0440826', N'2025-12-22 01:35:42.6213966')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTXD1E2SYT2DJ7N30RB6WA3', N'IDP_GRN_1766134402710', N'0AE1C71C-85E3-4943-BEEF-D323D39CBC98', N'20', N'0', N'26', N'2', N'3', N'2025-12-19 16:00:10.0503397', N'2025-12-19 16:41:15.2720602')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTYFSRF9D9K02BEKT0WTZ8R', N'VINASOY_GRN_1766135575108', N'AE1FBEB6-7174-4A25-9B98-75079E633C49', N'18', N'0', N'27', N'2', N'3', N'2025-12-19 16:19:09.0742981', N'2025-12-19 17:08:20.5864312')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTYFSS8F0J793N4EVEQ16B2', N'VINASOY_GRN_1766135575108', N'AE1FBEB6-7174-4A25-9B98-75079E633C49', N'18', N'20', N'32', N'2', N'1', N'2025-12-19 16:19:09.0969881', N'2025-12-22 01:35:43.8727122')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTYFSSKNV2JF6V4VVFY4ASN', N'VINASOY_GRN_1766135575108', N'AE1FBEB6-7174-4A25-9B98-75079E633C49', N'18', N'0', N'29', N'2', N'3', N'2025-12-19 16:19:09.1071850', N'2025-12-19 16:41:15.2720588')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTYFST34CE2BSFWZMGJD275', N'VINASOY_GRN_1766135575108', N'A08CACD3-74F0-4B58-988A-0C3CBCFB40EA', N'17', N'0', N'30', N'2', N'3', N'2025-12-19 16:19:09.1234149', N'2025-12-19 17:08:20.5864298')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTYFSTCKTR62572T9F64174', N'VINASOY_GRN_1766135575108', N'A08CACD3-74F0-4B58-988A-0C3CBCFB40EA', N'17', N'20', N'31', N'2', N'1', N'2025-12-19 16:19:09.1327042', N'2025-12-22 01:35:43.1881446')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCTYFSVKYF8AFGA3MB12J3Y5', N'VINASOY_GRN_1766135575108', N'A08CACD3-74F0-4B58-988A-0C3CBCFB40EA', N'17', N'0', N'32', N'2', N'3', N'2025-12-19 16:19:09.1710853', N'2025-12-19 16:41:15.2720611')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCV63DA5R5WCVJNBN4WXX46M', N'NESTLE_GRN_1766143553828', N'46F1DF20-4245-4BC4-951F-77BAF2EED0A7', N'16', N'39', N'35', N'2', N'1', N'2025-12-19 18:32:11.8462250', N'2025-12-22 01:35:44.7891743')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCV63DFBAE7001BQ8Z1RWRE1', N'NESTLE_GRN_1766143553828', N'AA5A49B2-792A-471F-A0FC-FD0FB2F6A500', N'15', N'40', N'40', N'2', N'1', N'2025-12-19 18:32:11.8845622', N'2025-12-22 01:35:41.4998926')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVEMW55EBJ1SZM6XQQHSX1R', N'TH_TRUE_MILK_GRN_1766152809351', N'775CC26A-3C54-47CE-BA93-6D3040A785D3', N'7', N'10', N'26', N'2', N'1', N'2025-12-19 21:01:32.6692312', N'2025-12-22 01:35:41.2886239')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVEMW94WJ69PTQ2NDYTGHSF', N'TH_TRUE_MILK_GRN_1766152809351', N'775CC26A-3C54-47CE-BA93-6D3040A785D3', N'7', N'30', N'30', N'2', N'1', N'2025-12-19 21:01:32.7083909', N'2025-12-22 01:35:43.3588719')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVEMWACH168SSQ5079Q6JF6', N'TH_TRUE_MILK_GRN_1766152809351', N'BBFEB6E3-0D51-4FAF-9CA8-15F62DDF6CFD', N'6', N'10', N'4', N'2', N'1', N'2025-12-19 21:01:32.7481868', N'2025-12-22 01:35:45.1872153')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVEMWAPVGNVWY5C2G2XT9CA', N'TH_TRUE_MILK_GRN_1766152809351', N'BBFEB6E3-0D51-4FAF-9CA8-15F62DDF6CFD', N'6', N'30', N'2', N'2', N'1', N'2025-12-19 21:01:32.7586344', N'2025-12-22 01:35:44.4172836')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVEMWB0NNQQ2YM85HVTEXYV', N'TH_TRUE_MILK_GRN_1766152809351', N'0D8C7FE5-ED75-4EE0-9F80-5986415CF9E7', N'5', N'10', N'27', N'2', N'1', N'2025-12-19 21:01:32.7685462', N'2025-12-22 01:35:41.6709510')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVEMWBAA0CCGXG1N7ZP19HA', N'TH_TRUE_MILK_GRN_1766152809351', N'0D8C7FE5-ED75-4EE0-9F80-5986415CF9E7', N'5', N'30', N'25', N'2', N'1', N'2025-12-19 21:01:32.7787558', N'2025-12-22 01:35:41.8637402')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVGG7DA52A6GW43QMS0GZQF', N'VINAMILK_GRN_1766151339703', N'F06CC1BB-CAD0-429D-91B6-E1E1AA571778', N'1', N'0', N'21', N'2', N'3', N'2025-12-19 21:33:57.4201966', N'2025-12-20 23:37:57.3616481')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVGG7E0S9CH9T2DS07BRY3S', N'VINAMILK_GRN_1766151339703', N'F06CC1BB-CAD0-429D-91B6-E1E1AA571778', N'1', N'0', N'22', N'2', N'3', N'2025-12-19 21:33:57.4404797', N'2025-12-22 07:08:23.4923638')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVGG7E8WPZ8716FE61SPRV7', N'VINAMILK_GRN_1766151339703', N'6C8278A4-B618-4BA8-A003-05D9AB18C21E', N'2', N'0', N'23', N'2', N'3', N'2025-12-19 21:33:57.4489421', N'2025-12-20 23:37:57.3616431')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVGG7EDW71ZGR0K868AE6DM', N'VINAMILK_GRN_1766151339703', N'6C8278A4-B618-4BA8-A003-05D9AB18C21E', N'2', N'0', N'24', N'2', N'3', N'2025-12-19 21:33:57.4536709', N'2025-12-22 07:08:23.4922996')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVGG7EWES6RTHPRYJNR1TQK', N'VINAMILK_GRN_1766151339703', N'7DA0DFE7-63FF-45D9-BD1D-BCA4AA413081', N'3', N'0', N'1', N'2', N'3', N'2025-12-19 21:33:57.4684326', N'2025-12-20 23:27:50.6920086')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVGG7F1HNYX0ZRWZ9PTJG2J', N'VINAMILK_GRN_1766151339703', N'7DA0DFE7-63FF-45D9-BD1D-BCA4AA413081', N'3', N'0', N'3', N'2', N'3', N'2025-12-19 21:33:57.4739392', N'2025-12-20 23:37:57.3616477')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVQA3PKQD1Q82GSJTR55AYB', N'VINAMILK_GRN_1766161621051', N'F06CC1BB-CAD0-429D-91B6-E1E1AA571778', N'1', N'0', N'28', N'2', N'3', N'2025-12-19 23:32:57.0513003', N'2025-12-20 23:10:12.6593782')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCVQA3S266XT14C6MER4E1ZV', N'VINAMILK_GRN_1766161621051', N'6C8278A4-B618-4BA8-A003-05D9AB18C21E', N'2', N'0', N'29', N'2', N'3', N'2025-12-19 23:32:57.1274387', N'2025-12-20 23:10:12.6593857')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCYDRNGWMRG9YY002QHCQFEN', N'DUTCH_LADY_GRN_1766252166868', N'9DD25BB6-7E0F-4E8C-800B-279740282734', N'14', N'30', N'36', N'2', N'1', N'2025-12-21 00:43:51.5936858', N'2025-12-22 01:35:42.4488080')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCYDRNHW0JMH2EMFB1SJFH55', N'DUTCH_LADY_GRN_1766252166868', N'9DD25BB6-7E0F-4E8C-800B-279740282734', N'14', N'30', N'37', N'2', N'1', N'2025-12-21 00:43:51.6128565', N'2025-12-22 01:35:42.2114521')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCYDRNJ5H2XVEQTZN9B1N45X', N'DUTCH_LADY_GRN_1766252166868', N'2FEF646F-256A-4BFE-B915-19AE188F64B1', N'13', N'30', N'38', N'2', N'1', N'2025-12-21 00:43:51.6217828', N'2025-12-22 01:35:43.5295608')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCYDRNJAK7PGKWYMSRG29W41', N'DUTCH_LADY_GRN_1766252166868', N'2FEF646F-256A-4BFE-B915-19AE188F64B1', N'13', N'30', N'39', N'2', N'1', N'2025-12-21 00:43:51.6313999', N'2025-12-22 01:35:44.0559898')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCYEFREZW2CX8TKAJ3Q6W32H', N'DUTCH_LADY_GRN_1766253205388', N'D0CEF867-58F9-47ED-B845-7A036F7D98AB', N'14', N'40', N'28', N'2', N'1', N'2025-12-21 00:56:28.2559864', N'2025-12-22 01:35:44.2258382')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCYEFRFJAJQNCT32Z1CHGBBZ', N'DUTCH_LADY_GRN_1766253205388', N'A3C4DD77-A88E-4933-AFC9-019EEB74E9BA', N'13', N'40', N'29', N'2', N'1', N'2025-12-21 00:56:28.2746165', N'2025-12-22 01:35:43.7003504')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCZGNSB59CTG605RCC46WTS4', N'IDP_GRN_1766289041204', N'328929CC-FFC2-4C0F-8DCF-808378B6D9D7', N'20', N'0', N'21', N'2', N'3', N'2025-12-21 10:53:57.3672439', N'2025-12-22 07:16:02.4292795')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KCZGNSJNFZ3W7P43KYEKSCQP', N'IDP_GRN_1766289041204', N'50AAF801-56C9-48C2-88A6-C1EAF876936B', N'19', N'0', N'23', N'2', N'3', N'2025-12-21 10:53:57.5900258', N'2025-12-22 07:16:02.4292742')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KD1WKV7YVJHBNEMMM14N8SYN', N'TH_TRUE_MILK_GRN_1766367664787', N'775CC26A-3C54-47CE-BA93-6D3040A785D3', N'7', N'20', N'21', N'2', N'1', N'2025-12-22 09:01:05.5765416', N'2025-12-22 09:02:49.1969540')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KD1WKVAS961NM691R5RZSY8S', N'TH_TRUE_MILK_GRN_1766367664787', N'775CC26A-3C54-47CE-BA93-6D3040A785D3', N'7', N'14', N'22', N'2', N'1', N'2025-12-22 09:01:05.6252713', N'2025-12-22 09:03:40.9896702')
GO

INSERT INTO [dbo].[Pallets] ([PalletId], [GoodsReceiptNoteId], [BatchId], [GoodsPackingId], [PackageQuantity], [LocationId], [CreateBy], [Status], [CreateAt], [UpdateAt]) VALUES (N'01KD1WKVB4G1H93Y3SWJ01BYAZ', N'TH_TRUE_MILK_GRN_1766367664787', N'BBFEB6E3-0D51-4FAF-9CA8-15F62DDF6CFD', N'6', N'34', N'23', N'2', N'1', N'2025-12-22 09:01:05.6361781', N'2025-12-22 09:04:20.5029539')
GO


-- ----------------------------
-- Table structure for PickAllocation
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PickAllocation]') AND type IN ('U'))
	DROP TABLE [dbo].[PickAllocation]
GO

CREATE TABLE [dbo].[PickAllocation] (
  [PickAllocationId] int  IDENTITY(1,1) NOT NULL,
  [GoodsIssueNoteDetailId] uniqueidentifier  NULL,
  [DisposalNoteDetailId] uniqueidentifier  NULL,
  [PalletId] char(26) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PackageQuantity] int  NULL,
  [Status] int DEFAULT 1 NULL
)
GO

ALTER TABLE [dbo].[PickAllocation] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PickAllocation
-- ----------------------------
SET IDENTITY_INSERT [dbo].[PickAllocation] ON
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'1', NULL, N'575F2010-656A-4BA8-AB8E-E9DF298015CB', N'01KCTYFSVKYF8AFGA3MB12J3Y5', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'2', NULL, N'575F2010-656A-4BA8-AB8E-E9DF298015CB', N'01KCTYFST34CE2BSFWZMGJD275', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'3', NULL, N'228DCDB7-A048-4D3A-8C38-07563224CCCA', N'01KCTXD1D84JZK43HA0SK8E5Z4', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'4', NULL, N'228DCDB7-A048-4D3A-8C38-07563224CCCA', N'01KCTXD16ZYQEADZ4YQN8BJCDH', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'5', NULL, N'5638C257-4124-45E2-921F-736ED86E5961', N'01KCTXD1E2SYT2DJ7N30RB6WA3', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'6', NULL, N'5638C257-4124-45E2-921F-736ED86E5961', N'01KCTXD1DJQ60HFBRX0JFWEMSY', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'7', NULL, N'C8B371EE-B398-46BF-B53F-4BA7952D9B1F', N'01KCTYFSSKNV2JF6V4VVFY4ASN', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'8', NULL, N'C8B371EE-B398-46BF-B53F-4BA7952D9B1F', N'01KCTYFSRF9D9K02BEKT0WTZ8R', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'9', NULL, N'1CA7665F-F8CB-4A50-B116-9345A003AAF0', N'01KCTYFST34CE2BSFWZMGJD275', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'10', NULL, N'1CA7665F-F8CB-4A50-B116-9345A003AAF0', N'01KCTYFSTCKTR62572T9F64174', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'11', NULL, N'B937B52F-27E5-4EBD-AEE5-C556C8B471DA', N'01KCTYFSRF9D9K02BEKT0WTZ8R', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'12', NULL, N'B937B52F-27E5-4EBD-AEE5-C556C8B471DA', N'01KCTYFSS8F0J793N4EVEQ16B2', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'13', NULL, N'B58FF0B3-481B-465D-AC16-6A6B496969D8', N'01KCTXD16ZYQEADZ4YQN8BJCDH', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'14', NULL, N'B58FF0B3-481B-465D-AC16-6A6B496969D8', N'01KCTXD1CXY7FP5F1TCZQA2R6N', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'15', NULL, N'E1854761-9BE7-4F15-B805-319C39A8C299', N'01KCTXD1DJQ60HFBRX0JFWEMSY', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'16', NULL, N'E1854761-9BE7-4F15-B805-319C39A8C299', N'01KCTXD1DWGN0W8X3YDSTZADPA', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'17', N'77643C2E-CA73-4879-98BC-1A8B927206AA', NULL, N'01KCVQA3PKQD1Q82GSJTR55AYB', N'30', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'18', N'2E822B1E-CED9-42B0-A3E9-ECC0FF8A7F2B', NULL, N'01KCVQA3S266XT14C6MER4E1ZV', N'30', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'19', N'C3DA0473-8AF5-4455-A62B-A7C9CEECC13A', NULL, N'01KCVGG7EWES6RTHPRYJNR1TQK', N'30', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'20', N'5E48CB0A-97D9-4136-8EAD-5ABE467E895F', NULL, N'01KCVGG7DA52A6GW43QMS0GZQF', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'21', N'49859D45-AB54-49FB-88C9-44AACA517DC5', NULL, N'01KCVGG7E8WPZ8716FE61SPRV7', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'22', N'4367F210-DE6A-4D8F-87D9-00CF36B517F3', NULL, N'01KCVGG7EWES6RTHPRYJNR1TQK', N'10', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'23', N'4367F210-DE6A-4D8F-87D9-00CF36B517F3', NULL, N'01KCVGG7F1HNYX0ZRWZ9PTJG2J', N'10', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'24', N'A682677A-EC1C-4E2A-8FAE-A2986A660D93', NULL, N'01KCVGG7DA52A6GW43QMS0GZQF', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'25', N'A682677A-EC1C-4E2A-8FAE-A2986A660D93', NULL, N'01KCVGG7E0S9CH9T2DS07BRY3S', N'10', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'26', N'C9966212-51EB-4DC4-A969-15E2E63B4AA4', NULL, N'01KCVGG7E8WPZ8716FE61SPRV7', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'27', N'C9966212-51EB-4DC4-A969-15E2E63B4AA4', NULL, N'01KCVGG7EDW71ZGR0K868AE6DM', N'10', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'28', N'798BE702-C0F1-4C76-8AF9-4B9A5A91E4D8', NULL, N'01KCVGG7F1HNYX0ZRWZ9PTJG2J', N'30', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'29', N'10118559-3576-487F-8467-6199460839A7', NULL, N'01KCVEMWB0NNQQ2YM85HVTEXYV', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'30', N'FAEDAB9E-2F4A-43A8-84E9-941EF7D7359D', NULL, N'01KCVEMWACH168SSQ5079Q6JF6', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'31', N'941EF91E-6197-455B-9A9E-066829A82335', NULL, N'01KCVEMW55EBJ1SZM6XQQHSX1R', N'20', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'32', N'359FF741-4CED-4A9F-894A-5905D3EB9EC0', NULL, N'01KCYDRNJ5H2XVEQTZN9B1N45X', N'20', N'1')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'33', N'8F81717B-4BDF-4110-BF63-323E0D5BF6C0', NULL, N'01KCYDRNGWMRG9YY002QHCQFEN', N'20', N'1')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'34', N'9AE96F95-EC65-4CB0-B523-58862029A631', NULL, N'01KCYDRNJ5H2XVEQTZN9B1N45X', N'10', N'1')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'35', N'9AE96F95-EC65-4CB0-B523-58862029A631', NULL, N'01KCYDRNJAK7PGKWYMSRG29W41', N'10', N'1')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'36', N'B15B4601-324C-48F3-A075-5B7BA1CE2960', NULL, N'01KCYDRNGWMRG9YY002QHCQFEN', N'10', N'1')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'37', N'B15B4601-324C-48F3-A075-5B7BA1CE2960', NULL, N'01KCYDRNHW0JMH2EMFB1SJFH55', N'10', N'1')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'38', N'EBB947AA-5532-4D55-AFBA-039CCF8D49A2', NULL, N'01KCVGG7EDW71ZGR0K868AE6DM', N'30', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'39', N'1E5620E7-2910-4DB9-A201-0B6D4A804698', NULL, N'01KCVGG7E0S9CH9T2DS07BRY3S', N'30', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'40', N'DA918920-46B6-45C1-ACAF-0165834D9DCD', NULL, N'01KCZGNSJNFZ3W7P43KYEKSCQP', N'33', N'2')
GO

INSERT INTO [dbo].[PickAllocation] ([PickAllocationId], [GoodsIssueNoteDetailId], [DisposalNoteDetailId], [PalletId], [PackageQuantity], [Status]) VALUES (N'41', N'7F3E8905-3C6E-4E6A-8F6F-8E562E614E88', NULL, N'01KCZGNSB59CTG605RCC46WTS4', N'33', N'2')
GO

SET IDENTITY_INSERT [dbo].[PickAllocation] OFF
GO


-- ----------------------------
-- Table structure for PurchaseOderDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseOderDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[PurchaseOderDetails]
GO

CREATE TABLE [dbo].[PurchaseOderDetails] (
  [PurchaseOrderDetailId] int  IDENTITY(1,1) NOT NULL,
  [PurchaseOderId] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [GoodsId] int  NOT NULL,
  [GoodsPackingId] int  NULL,
  [PackageQuantity] int  NULL
)
GO

ALTER TABLE [dbo].[PurchaseOderDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PurchaseOderDetails
-- ----------------------------
SET IDENTITY_INSERT [dbo].[PurchaseOderDetails] ON
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'1', N'IDP_PO_1766134317126', N'19', N'19', N'100')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'2', N'IDP_PO_1766134317126', N'20', N'20', N'100')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'3', N'VINASOY_PO_1766135502189', N'17', N'17', N'100')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'4', N'VINASOY_PO_1766135502189', N'18', N'18', N'100')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'5', N'NESTLE_PO_1766143458236', N'15', N'15', N'40')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'6', N'NESTLE_PO_1766143458236', N'16', N'16', N'40')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'7', N'VINAMILK_PO_1766151116505', N'1', N'1', N'80')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'8', N'VINAMILK_PO_1766151116505', N'2', N'2', N'80')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'9', N'VINAMILK_PO_1766151116505', N'3', N'3', N'80')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'10', N'TH_TRUE_MILK_PO_1766152430733', N'5', N'5', N'60')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'11', N'TH_TRUE_MILK_PO_1766152430733', N'6', N'6', N'60')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'12', N'TH_TRUE_MILK_PO_1766152430733', N'7', N'7', N'60')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'13', N'VINAMILK_PO_1766161510051', N'1', N'1', N'30')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'14', N'VINAMILK_PO_1766161510051', N'2', N'2', N'35')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'15', N'DUTCH_LADY_PO_1766252097625', N'13', N'13', N'60')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'16', N'DUTCH_LADY_PO_1766252097625', N'14', N'14', N'60')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'17', N'DUTCH_LADY_PO_1766253144646', N'14', N'14', N'40')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'18', N'DUTCH_LADY_PO_1766253144646', N'13', N'13', N'40')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'20', N'IDP_PO_1766288704148', N'19', N'19', N'30')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'21', N'IDP_PO_1766288704148', N'20', N'20', N'32')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'22', N'IDP_PO_1766288877992', N'19', N'19', N'33')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'23', N'IDP_PO_1766288877992', N'20', N'20', N'33')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'24', N'NESTLE_PO_1766289155115', N'15', N'15', N'32')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'25', N'NESTLE_PO_1766289155115', N'16', N'16', N'34')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'26', N'IDP_PO_1766342411270', N'19', N'19', N'31')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'27', N'IDP_PO_1766342411270', N'20', N'20', N'40')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'28', N'VINASOY_PO_1766342679366', N'18', N'18', N'41')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'29', N'VINASOY_PO_1766342679366', N'17', N'17', N'42')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'30', N'NESTLE_PO_1766342751701', N'15', N'15', N'35')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'31', N'DUTCH_LADY_PO_1766342827865', N'13', N'13', N'50')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'32', N'NUTIFOOD_PO_1766342930983', N'11', N'11', N'52')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'33', N'VINAMILK_PO_1766343002719', N'2', N'2', N'33')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'34', N'VINAMILK_PO_1766343002719', N'4', N'4', N'30')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'35', N'TH_TRUE_MILK_PO_1766367146685', N'6', N'6', N'34')
GO

INSERT INTO [dbo].[PurchaseOderDetails] ([PurchaseOrderDetailId], [PurchaseOderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'36', N'TH_TRUE_MILK_PO_1766367146685', N'7', N'7', N'34')
GO

SET IDENTITY_INSERT [dbo].[PurchaseOderDetails] OFF
GO


-- ----------------------------
-- Table structure for PurchaseOrders
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseOrders]') AND type IN ('U'))
	DROP TABLE [dbo].[PurchaseOrders]
GO

CREATE TABLE [dbo].[PurchaseOrders] (
  [PurchaseOderId] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Status] int  NULL,
  [SupplierId] int  NULL,
  [ApprovalBy] int  NULL,
  [CreatedBy] int  NULL,
  [ArrivalConfirmedBy] int  NULL,
  [AssignTo] int  NULL,
  [Note] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RejectionReason] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EstimatedTimeArrival] datetime2(7)  NULL,
  [DeliveryDateChangeReason] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdatedAt] datetime2(7)  NULL,
  [ApprovedAt] datetime2(7)  NULL,
  [ArrivalConfirmedAt] datetime2(7)  NULL,
  [AssignedAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[PurchaseOrders] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PurchaseOrders
-- ----------------------------
INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'DUTCH_LADY_PO_1766252097625', N'9', N'5', N'6', N'5', N'1', N'2', N'', N'', N'2025-12-21 00:35:33.3050000', N'', N'2025-12-21 00:34:57.5776165', N'2025-12-21 00:44:29.6659272', N'2025-12-21 00:35:12.1045408', N'2025-12-21 00:35:51.7728590', N'2025-12-21 00:35:57.2131510')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'DUTCH_LADY_PO_1766253144646', N'9', N'5', N'6', N'5', N'1', N'2', N'', N'', N'2025-12-21 00:53:06.3090000', N'', N'2025-12-21 00:52:24.4086431', N'2025-12-21 00:56:54.9746077', N'2025-12-21 00:52:45.5450329', N'2025-12-21 00:53:13.7343002', N'2025-12-21 00:53:16.1951881')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'DUTCH_LADY_PO_1766342827865', N'4', N'5', N'6', N'5', NULL, NULL, N'', N'', NULL, NULL, N'2025-12-22 01:47:07.8587977', N'2025-12-22 01:48:00.8884618', N'2025-12-22 01:48:00.8884584', NULL, NULL)
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'IDP_PO_1766134317126', N'9', N'8', N'6', N'5', N'1', N'2', N'', N'', N'2024-07-15 15:52:28.7820000', N'', N'2024-07-01 15:51:57.1113727', N'2024-07-15 16:01:01.2358651', N'2024-07-15 15:53:28.7820000', N'2024-07-15 15:55:28.7820000', N'2024-07-15 15:58:28.7820000')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'IDP_PO_1766288704148', N'9', N'8', N'6', N'5', N'1', N'2', N'', N'', N'2025-12-21 10:45:47.1560000', N'', N'2025-12-21 10:45:04.0167946', N'2025-12-21 10:48:06.4327715', N'2025-12-21 10:45:30.9286107', N'2025-12-21 10:47:21.1972573', N'2025-12-21 10:47:27.4163619')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'IDP_PO_1766288877992', N'9', N'8', N'6', N'5', N'1', N'2', N'', N'', N'2025-12-21 10:50:14.9250000', N'', N'2025-12-21 10:47:57.9833307', N'2025-12-21 10:54:11.3054335', N'2025-12-21 10:49:02.5097409', N'2025-12-21 10:50:27.3106511', N'2025-12-21 10:50:31.0315415')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'IDP_PO_1766342411270', N'6', N'8', N'6', N'5', N'1', N'2', N'', N'', N'2025-12-22 01:43:55.3810000', N'', N'2025-12-22 01:40:11.2121075', N'2025-12-22 01:44:37.1272852', N'2025-12-22 01:42:51.5211786', N'2025-12-22 01:44:33.8962076', N'2025-12-22 01:44:37.1272801')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'NESTLE_PO_1766143458236', N'9', N'6', N'6', N'5', N'1', N'2', N'', N'', N'2025-03-15 18:24:59.8990000', N'', N'2025-03-01 18:24:18.1983460', N'2025-03-15 18:34:42.3192183', N'2025-03-15 18:24:36.4689198', N'2025-03-15 18:25:32.7985473', N'2025-03-15 18:25:37.0586773')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'NESTLE_PO_1766289155115', N'8', N'6', N'6', N'5', N'1', N'2', N'', N'', N'2025-12-21 10:53:04.2430000', N'', N'2025-12-21 10:52:35.1054060', N'2025-12-22 01:43:03.4481706', N'2025-12-21 10:52:49.2674679', N'2025-12-22 01:41:38.9941644', N'2025-12-22 01:41:43.5983337')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'NESTLE_PO_1766342751701', N'10', N'6', N'6', N'5', NULL, NULL, N'', N'', N'2025-12-22 01:46:11.9590000', NULL, N'2025-12-22 01:45:51.6944969', N'2025-12-22 01:46:12.1324448', N'2025-12-22 01:46:00.4481964', NULL, NULL)
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'NUTIFOOD_PO_1766342930983', N'3', N'4', N'6', N'5', NULL, NULL, N'', N'Xem lại số lượng', NULL, NULL, N'2025-12-22 01:48:50.9744361', N'2025-12-22 01:49:09.8841895', N'2025-12-22 01:49:09.8841858', NULL, NULL)
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'TH_TRUE_MILK_PO_1766152430733', N'9', N'2', N'6', N'5', N'1', N'2', N'', N'', N'2025-12-19 20:56:14.6650000', N'', N'2025-12-19 20:53:50.7154073', N'2025-12-20 22:58:48.9378362', N'2025-12-19 20:55:05.2823445', N'2025-12-19 20:56:35.5252290', N'2025-12-19 20:56:38.3746081')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'TH_TRUE_MILK_PO_1766367146685', N'9', N'2', N'6', N'5', N'1', N'2', N'', N'', N'2025-12-22 08:36:18.0450000', N'', N'2025-12-22 08:32:26.6760040', N'2025-12-22 09:04:20.8933498', N'2025-12-22 08:36:03.8292880', N'2025-12-22 08:40:06.3516549', N'2025-12-22 08:40:47.5485461')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'VINAMILK_PO_1766151116505', N'9', N'1', N'6', N'5', N'1', N'2', N'', N'', N'2025-12-19 20:33:12.7930000', N'', N'2025-12-19 20:31:56.4656527', N'2025-12-20 22:49:11.2953070', N'2025-12-19 20:32:55.3578514', N'2025-12-19 20:34:48.0071995', N'2025-12-19 20:34:52.4295344')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'VINAMILK_PO_1766161510051', N'9', N'1', N'6', N'5', N'1', N'2', N'', N'', N'2025-12-19 23:26:03.5740000', N'', N'2025-12-19 23:25:09.9368294', N'2025-12-19 23:33:10.1500871', N'2025-12-19 23:25:55.4216535', N'2025-12-19 23:26:46.7071809', N'2025-12-19 23:26:50.5200383')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'VINAMILK_PO_1766343002719', N'1', N'1', NULL, N'5', NULL, NULL, N'', NULL, NULL, NULL, N'2025-12-22 01:50:02.7094390', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'VINASOY_PO_1766135502189', N'9', N'7', N'6', N'5', N'1', N'2', N'', N'', N'2024-08-15 16:12:02.4180000', N'', N'2024-08-01 16:11:42.1807499', N'2024-08-15 16:20:43.9826990', N'2024-08-15 16:11:48.4050133', N'2024-08-15 16:12:37.5562363', N'2024-08-15 16:12:45.4719303')
GO

INSERT INTO [dbo].[PurchaseOrders] ([PurchaseOderId], [Status], [SupplierId], [ApprovalBy], [CreatedBy], [ArrivalConfirmedBy], [AssignTo], [Note], [RejectionReason], [EstimatedTimeArrival], [DeliveryDateChangeReason], [CreatedAt], [UpdatedAt], [ApprovedAt], [ArrivalConfirmedAt], [AssignedAt]) VALUES (N'VINASOY_PO_1766342679366', N'11', N'7', N'6', N'5', NULL, N'2', N'', N'', N'2025-12-22 01:45:18.2840000', NULL, N'2025-12-22 01:44:39.3649573', N'2025-12-22 01:45:33.9618676', N'2025-12-22 01:44:49.2954932', NULL, N'2025-12-22 01:45:33.9618634')
GO


-- ----------------------------
-- Table structure for RefreshToken
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RefreshToken]') AND type IN ('U'))
	DROP TABLE [dbo].[RefreshToken]
GO

CREATE TABLE [dbo].[RefreshToken] (
  [RefreshTokenId] int  IDENTITY(1,1) NOT NULL,
  [UserId] int  NULL,
  [Token] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ExpiryDate] datetime2(7)  NULL,
  [IsRevoked] bit  NULL,
  [CreateAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[RefreshToken] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of RefreshToken
-- ----------------------------
SET IDENTITY_INSERT [dbo].[RefreshToken] ON
GO

INSERT INTO [dbo].[RefreshToken] ([RefreshTokenId], [UserId], [Token], [ExpiryDate], [IsRevoked], [CreateAt], [UpdateAt]) VALUES (N'1', N'1', N'463edacd-2693-44a8-ab94-d2f93bb3b85a', N'2026-01-03 17:42:52.1679175', N'0', N'2025-12-19 14:57:44.6486184', N'2025-12-27 17:42:52.1736349')
GO

INSERT INTO [dbo].[RefreshToken] ([RefreshTokenId], [UserId], [Token], [ExpiryDate], [IsRevoked], [CreateAt], [UpdateAt]) VALUES (N'2', N'2', N'92e70d97-b355-4355-b87e-bead62ab082c', N'2025-12-30 19:20:50.2861143', N'0', N'2025-12-19 15:00:47.8993128', N'2025-12-23 19:20:50.2861331')
GO

INSERT INTO [dbo].[RefreshToken] ([RefreshTokenId], [UserId], [Token], [ExpiryDate], [IsRevoked], [CreateAt], [UpdateAt]) VALUES (N'3', N'7', N'8e21ae69-c09b-419d-a559-20b0c67f7014', N'2025-12-26 15:06:41.3969508', N'1', N'2025-12-19 15:06:41.3969779', N'2025-12-19 15:06:41.3969776')
GO

INSERT INTO [dbo].[RefreshToken] ([RefreshTokenId], [UserId], [Token], [ExpiryDate], [IsRevoked], [CreateAt], [UpdateAt]) VALUES (N'4', N'5', N'e8350ce3-5b53-4f50-bf53-ba716971088f', N'2025-12-29 08:30:57.9225718', N'0', N'2025-12-19 15:36:43.2345014', N'2025-12-22 08:30:57.9225849')
GO

INSERT INTO [dbo].[RefreshToken] ([RefreshTokenId], [UserId], [Token], [ExpiryDate], [IsRevoked], [CreateAt], [UpdateAt]) VALUES (N'5', N'6', N'e40f3f74-87c6-47de-88cf-a31969d306d8', N'2025-12-29 07:01:09.3249456', N'0', N'2025-12-19 16:46:30.2121024', N'2025-12-22 07:01:09.3249540')
GO

INSERT INTO [dbo].[RefreshToken] ([RefreshTokenId], [UserId], [Token], [ExpiryDate], [IsRevoked], [CreateAt], [UpdateAt]) VALUES (N'6', N'3', N'ce825e68-5c4a-43b7-8b32-e0310c3ff42b', N'2025-12-29 01:23:59.5949668', N'1', N'2025-12-22 01:23:59.5950928', N'2025-12-22 01:23:59.5949839')
GO

SET IDENTITY_INSERT [dbo].[RefreshToken] OFF
GO


-- ----------------------------
-- Table structure for Retailers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Retailers]') AND type IN ('U'))
	DROP TABLE [dbo].[Retailers]
GO

CREATE TABLE [dbo].[Retailers] (
  [RetailerId] int  IDENTITY(1,1) NOT NULL,
  [RetailerName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TaxCode] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Phone] varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdatedAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[Retailers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Retailers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Retailers] ON
GO

INSERT INTO [dbo].[Retailers] ([RetailerId], [RetailerName], [TaxCode], [Email], [Address], [Phone], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'1', N'Đại Lý Sữa & Tã Bỉm Hạnh Phúc', N'0101234567', N'dailyhongha@gmail.com', N'120 Trần Duy Hưng, Phường Trung Hòa, Quận Cầu Giấy, Hà Nội', N'0912345678', N'1', N'2025-12-14 07:27:22.2566667', N'2025-12-14 07:27:22.2566667')
GO

INSERT INTO [dbo].[Retailers] ([RetailerId], [RetailerName], [TaxCode], [Email], [Address], [Phone], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'2', N'Tạp Hóa Cô Mai', N'8012345678', N'maitaphoa@gmail.com', N'Số 5 Ngõ 102 Chùa Láng, Quận Đống Đa, Hà Nội', N'0398765432', N'1', N'2025-12-14 07:27:22.2566667', N'2025-12-17 13:56:22.8094239')
GO

INSERT INTO [dbo].[Retailers] ([RetailerId], [RetailerName], [TaxCode], [Email], [Address], [Phone], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'3', N'Đại Lý Tổng Hợp Minh Đức - CN Thanh Xuân', N'0109998888001', N'minhduc.agent@gmail.com', N'45 Nguyễn Tuân, Quận Thanh Xuân, Hà Nội', N'0903334444', N'1', N'2025-12-14 07:27:22.2566667', N'2025-12-14 07:27:22.2566667')
GO

INSERT INTO [dbo].[Retailers] ([RetailerId], [RetailerName], [TaxCode], [Email], [Address], [Phone], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'4', N'Tạp Hóa Bốn Mùa', N'0102223334', N'taphoabonmua@yahoo.com', N'15 Phố Hàng Gai, Quận Hoàn Kiếm, Hà Nội', N'0345678901', N'1', N'2025-12-14 07:27:22.2566667', N'2025-12-14 07:27:22.2566667')
GO

INSERT INTO [dbo].[Retailers] ([RetailerId], [RetailerName], [TaxCode], [Email], [Address], [Phone], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'5', N'Đại Lý Sữa Dinh Dưỡng Bình An', N'0105556667', N'binhan.milk@gmail.com', N'Kiot 10, Chung Cư HH4C Linh Đàm, Quận Hoàng Mai, Hà Nội', N'0988776655', N'1', N'2025-12-14 07:27:22.2566667', N'2025-12-14 07:27:22.2566667')
GO

INSERT INTO [dbo].[Retailers] ([RetailerId], [RetailerName], [TaxCode], [Email], [Address], [Phone], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'6', N'Tạp Hóa Xanh - Green Mart', N'8355667788', N'greenmart.taphoa@gmail.com', N'Số 8 Đường Mỹ Đình, Quận Nam Từ Liêm, Hà Nội', N'0321122334', N'1', N'2025-12-14 07:27:22.2566667', N'2025-12-14 07:27:22.2566667')
GO

INSERT INTO [dbo].[Retailers] ([RetailerId], [RetailerName], [TaxCode], [Email], [Address], [Phone], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'7', N'Đại Lý Sữa Chua Hùng Cường', N'0108889999002', N'hungcuong.agent@gmail.com', N'224 Lạc Long Quân, Quận Tây Hồ, Hà Nội', N'0911223399', N'1', N'2025-12-14 07:27:22.2566667', N'2025-12-14 07:27:22.2566667')
GO

INSERT INTO [dbo].[Retailers] ([RetailerId], [RetailerName], [TaxCode], [Email], [Address], [Phone], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'8', N'Cửa Hàng Tạp Hóa Bác Hạnh', N'8099887766', N'bachanhdaily@gmail.com', N'68 Ngọc Lâm, Quận Long Biên, Hà Nội', N'0334455667', N'1', N'2025-12-14 07:27:22.2566667', N'2025-12-14 07:27:22.2566667')
GO

INSERT INTO [dbo].[Retailers] ([RetailerId], [RetailerName], [TaxCode], [Email], [Address], [Phone], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'9', N'Đại Lý Sữa Nhất Nhất', N'0107776665', N'nhatnhat.closed@gmail.com', N'10 Quang Trung, Quận Hà Đông, Hà Nội', N'0909000111', N'1', N'2025-12-14 07:27:22.2566667', N'2025-12-14 07:27:22.2566667')
GO

INSERT INTO [dbo].[Retailers] ([RetailerId], [RetailerName], [TaxCode], [Email], [Address], [Phone], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'10', N'Tạp Hóa & Siêu Thị Mini 24h', N'0106667778', N'mini24h.store@gmail.com', N'55 Minh Khai, Quận Hai Bà Trưng, Hà Nội', N'0966554433', N'1', N'2025-12-14 07:27:22.2566667', N'2025-12-14 07:27:22.2566667')
GO

SET IDENTITY_INSERT [dbo].[Retailers] OFF
GO


-- ----------------------------
-- Table structure for Role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type IN ('U'))
	DROP TABLE [dbo].[Role]
GO

CREATE TABLE [dbo].[Role] (
  [RoleId] int  IDENTITY(1,1) NOT NULL,
  [RoleName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Role] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Role] ON
GO

INSERT INTO [dbo].[Role] ([RoleId], [RoleName], [Description]) VALUES (N'1', N'Warehouse Manager', N'Quản Lý Kho')
GO

INSERT INTO [dbo].[Role] ([RoleId], [RoleName], [Description]) VALUES (N'2', N'Warehouse Staff', N'Nhân Viên Kho')
GO

INSERT INTO [dbo].[Role] ([RoleId], [RoleName], [Description]) VALUES (N'3', N'Administrator', N'Quản Trị Viên')
GO

INSERT INTO [dbo].[Role] ([RoleId], [RoleName], [Description]) VALUES (N'4', N'Business Owner', N'Chủ Doanh Nghiệp')
GO

INSERT INTO [dbo].[Role] ([RoleId], [RoleName], [Description]) VALUES (N'5', N'Sales Representative', N'Nhân Viên Kinh Doanh')
GO

INSERT INTO [dbo].[Role] ([RoleId], [RoleName], [Description]) VALUES (N'6', N'Sale Manager', N'Quản Lý Kinh Doanh')
GO

SET IDENTITY_INSERT [dbo].[Role] OFF
GO


-- ----------------------------
-- Table structure for SalesOrderDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SalesOrderDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[SalesOrderDetails]
GO

CREATE TABLE [dbo].[SalesOrderDetails] (
  [SalesOrderDetailId] int  IDENTITY(1,1) NOT NULL,
  [SalesOrderId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GoodsId] int  NULL,
  [GoodsPackingId] int  NULL,
  [PackageQuantity] int  NULL
)
GO

ALTER TABLE [dbo].[SalesOrderDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SalesOrderDetails
-- ----------------------------
SET IDENTITY_INSERT [dbo].[SalesOrderDetails] ON
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'1', N'RET_SO_1766246840480', N'1', N'1', N'30')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'2', N'RET_SO_1766246840480', N'2', N'2', N'30')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'3', N'RET_SO_1766246840480', N'3', N'3', N'30')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'4', N'RET_SO_1766247472196', N'1', N'1', N'20')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'5', N'RET_SO_1766247472196', N'2', N'2', N'20')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'6', N'RET_SO_1766247472196', N'3', N'3', N'20')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'7', N'RET_SO_1766248211770', N'1', N'1', N'30')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'8', N'RET_SO_1766248211770', N'2', N'2', N'30')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'9', N'RET_SO_1766248211770', N'3', N'3', N'30')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'10', N'RET_SO_1766251567114', N'5', N'5', N'20')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'11', N'RET_SO_1766251567114', N'6', N'6', N'20')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'12', N'RET_SO_1766251567114', N'7', N'7', N'20')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'13', N'RET_SO_1766251725755', N'5', N'5', N'30')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'14', N'RET_SO_1766251725755', N'6', N'6', N'30')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'15', N'RET_SO_1766251725755', N'7', N'7', N'30')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'16', N'RET_SO_1766251790302', N'5', N'5', N'10')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'17', N'RET_SO_1766251790302', N'6', N'6', N'10')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'18', N'RET_SO_1766251790302', N'7', N'7', N'10')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'19', N'RET_SO_1766253607938', N'13', N'13', N'20')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'20', N'RET_SO_1766253607938', N'14', N'14', N'20')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'21', N'RET_SO_1766253851201', N'13', N'13', N'20')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'22', N'RET_SO_1766253851201', N'14', N'14', N'20')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'23', N'RET_SO_1766362047732', N'2', N'2', N'30')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'24', N'RET_SO_1766362047732', N'1', N'1', N'30')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'25', N'RET_SO_1766362511783', N'19', N'19', N'33')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'26', N'RET_SO_1766362511783', N'20', N'20', N'33')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'27', N'RET_SO_1766369836345', N'15', N'15', N'20')
GO

INSERT INTO [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [GoodsId], [GoodsPackingId], [PackageQuantity]) VALUES (N'28', N'RET_SO_1766369836345', N'16', N'16', N'20')
GO

SET IDENTITY_INSERT [dbo].[SalesOrderDetails] OFF
GO


-- ----------------------------
-- Table structure for SalesOrders
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SalesOrders]') AND type IN ('U'))
	DROP TABLE [dbo].[SalesOrders]
GO

CREATE TABLE [dbo].[SalesOrders] (
  [SalesOrderId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [RetailerId] int  NULL,
  [EstimatedTimeDeparture] date  NULL,
  [Status] int  NULL,
  [CreatedBy] int  NULL,
  [ApprovalBy] int  NULL,
  [AcknowledgedBy] int  NULL,
  [AssignTo] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL,
  [ApprovalAt] datetime2(7)  NULL,
  [AcknowledgeAt] datetime2(7)  NULL,
  [PickingAt] datetime2(7)  NULL,
  [Note] nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RejectionReason] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ShipmentDateChangeReason] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SalesOrders] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SalesOrders
-- ----------------------------
INSERT INTO [dbo].[SalesOrders] ([SalesOrderId], [RetailerId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AcknowledgedBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AcknowledgeAt], [PickingAt], [Note], [RejectionReason], [ShipmentDateChangeReason]) VALUES (N'RET_SO_1766246840480', N'10', N'2025-12-20', N'7', N'5', N'6', N'1', N'2', N'2025-12-20 23:07:20.4425385', N'2025-12-20 23:10:12.6579608', N'2025-12-20 23:07:54.1144271', N'2025-12-20 23:08:12.4076605', N'2025-12-20 23:08:21.6976506', N'', N'', NULL)
GO

INSERT INTO [dbo].[SalesOrders] ([SalesOrderId], [RetailerId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AcknowledgedBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AcknowledgeAt], [PickingAt], [Note], [RejectionReason], [ShipmentDateChangeReason]) VALUES (N'RET_SO_1766247472196', N'9', N'2025-12-20', N'7', N'5', N'6', N'1', N'2', N'2025-12-20 23:17:52.1960233', N'2025-12-20 23:27:50.6918434', N'2025-12-20 23:18:05.5767236', N'2025-12-20 23:18:18.4118805', N'2025-12-20 23:20:13.6150549', N'', N'', NULL)
GO

INSERT INTO [dbo].[SalesOrders] ([SalesOrderId], [RetailerId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AcknowledgedBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AcknowledgeAt], [PickingAt], [Note], [RejectionReason], [ShipmentDateChangeReason]) VALUES (N'RET_SO_1766248211770', N'8', N'2025-12-20', N'7', N'5', N'6', N'1', N'2', N'2025-12-20 23:30:11.7704993', N'2025-12-20 23:37:57.3616228', N'2025-12-20 23:30:26.5192250', N'2025-12-20 23:30:57.5048933', N'2025-12-20 23:31:23.0053904', N'', N'', NULL)
GO

INSERT INTO [dbo].[SalesOrders] ([SalesOrderId], [RetailerId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AcknowledgedBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AcknowledgeAt], [PickingAt], [Note], [RejectionReason], [ShipmentDateChangeReason]) VALUES (N'RET_SO_1766251567114', N'7', N'2025-12-21', N'7', N'5', N'6', N'1', N'2', N'2025-12-21 00:26:07.1144423', N'2025-12-21 00:27:20.5970093', N'2025-12-21 00:26:16.7596009', N'2025-12-21 00:26:28.1631340', N'2025-12-21 00:26:39.2938510', N'', N'', NULL)
GO

INSERT INTO [dbo].[SalesOrders] ([SalesOrderId], [RetailerId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AcknowledgedBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AcknowledgeAt], [PickingAt], [Note], [RejectionReason], [ShipmentDateChangeReason]) VALUES (N'RET_SO_1766251725755', N'6', N'2025-12-23', N'4', N'5', N'6', NULL, NULL, N'2025-12-21 00:28:45.7551262', N'2025-12-21 00:28:55.3906340', N'2025-12-21 00:28:55.3906310', NULL, NULL, N'', N'', NULL)
GO

INSERT INTO [dbo].[SalesOrders] ([SalesOrderId], [RetailerId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AcknowledgedBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AcknowledgeAt], [PickingAt], [Note], [RejectionReason], [ShipmentDateChangeReason]) VALUES (N'RET_SO_1766251790302', N'5', N'2025-12-25', N'2', N'5', NULL, NULL, NULL, N'2025-12-21 00:29:50.3028185', N'2025-12-21 00:29:50.7088044', NULL, NULL, NULL, N'', NULL, NULL)
GO

INSERT INTO [dbo].[SalesOrders] ([SalesOrderId], [RetailerId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AcknowledgedBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AcknowledgeAt], [PickingAt], [Note], [RejectionReason], [ShipmentDateChangeReason]) VALUES (N'RET_SO_1766253607938', N'4', N'2025-12-21', N'6', N'5', N'6', N'1', N'2', N'2025-12-21 01:00:07.9386568', N'2025-12-21 01:00:32.6549191', N'2025-12-21 01:00:20.5471411', N'2025-12-21 01:00:32.6549158', N'2025-12-21 01:00:45.7189426', N'', N'', NULL)
GO

INSERT INTO [dbo].[SalesOrders] ([SalesOrderId], [RetailerId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AcknowledgedBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AcknowledgeAt], [PickingAt], [Note], [RejectionReason], [ShipmentDateChangeReason]) VALUES (N'RET_SO_1766253851201', N'3', N'2025-12-21', N'6', N'5', N'6', N'1', N'2', N'2025-12-21 01:04:11.2019045', N'2025-12-21 01:04:48.0412694', N'2025-12-21 01:04:19.5638408', N'2025-12-21 01:04:48.0412669', N'2025-12-21 01:05:24.8725958', N'', N'', NULL)
GO

INSERT INTO [dbo].[SalesOrders] ([SalesOrderId], [RetailerId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AcknowledgedBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AcknowledgeAt], [PickingAt], [Note], [RejectionReason], [ShipmentDateChangeReason]) VALUES (N'RET_SO_1766362047732', N'4', N'2025-12-22', N'7', N'5', N'6', N'1', N'2', N'2025-12-22 07:07:27.7320850', N'2025-12-22 07:08:23.4912541', N'2025-12-22 07:07:35.8478890', N'2025-12-22 07:07:51.7798350', N'2025-12-22 07:07:59.6138019', N'', N'', NULL)
GO

INSERT INTO [dbo].[SalesOrders] ([SalesOrderId], [RetailerId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AcknowledgedBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AcknowledgeAt], [PickingAt], [Note], [RejectionReason], [ShipmentDateChangeReason]) VALUES (N'RET_SO_1766362511783', N'3', N'2025-12-22', N'7', N'5', N'6', N'1', N'2', N'2025-12-22 07:15:11.7832315', N'2025-12-22 07:16:02.4292534', N'2025-12-22 07:15:22.4297427', N'2025-12-22 07:15:32.4788062', N'2025-12-22 07:15:39.2727220', N'', N'', NULL)
GO

INSERT INTO [dbo].[SalesOrders] ([SalesOrderId], [RetailerId], [EstimatedTimeDeparture], [Status], [CreatedBy], [ApprovalBy], [AcknowledgedBy], [AssignTo], [CreatedAt], [UpdateAt], [ApprovalAt], [AcknowledgeAt], [PickingAt], [Note], [RejectionReason], [ShipmentDateChangeReason]) VALUES (N'RET_SO_1766369836345', N'1', N'2025-12-22', N'5', N'5', N'6', N'1', N'2', N'2025-12-22 09:17:16.3458919', N'2025-12-22 09:22:06.0791147', N'2025-12-22 09:17:30.8137751', N'2025-12-22 09:22:06.0791113', NULL, N'', N'', NULL)
GO


-- ----------------------------
-- Table structure for StocktakingAreas
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[StocktakingAreas]') AND type IN ('U'))
	DROP TABLE [dbo].[StocktakingAreas]
GO

CREATE TABLE [dbo].[StocktakingAreas] (
  [StocktakingAreaId] uniqueidentifier  NOT NULL,
  [StocktakingSheetId] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AreaId] int  NULL,
  [AssignTo] int  NULL,
  [Status] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[StocktakingAreas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of StocktakingAreas
-- ----------------------------
INSERT INTO [dbo].[StocktakingAreas] ([StocktakingAreaId], [StocktakingSheetId], [AreaId], [AssignTo], [Status], [CreatedAt], [UpdateAt]) VALUES (N'DCD90ACB-A619-4A99-A7A2-273C42065A26', N'STK_20251221_1766341749642', N'1', N'2', N'1', N'2025-12-22 01:29:09.8815902', N'2025-12-22 01:29:10.4573730')
GO

INSERT INTO [dbo].[StocktakingAreas] ([StocktakingAreaId], [StocktakingSheetId], [AreaId], [AssignTo], [Status], [CreatedAt], [UpdateAt]) VALUES (N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'STK_20251221_1766289336201', N'1', N'2', N'4', N'2025-12-21 10:55:36.3652784', N'2025-12-22 01:27:07.6444351')
GO

INSERT INTO [dbo].[StocktakingAreas] ([StocktakingAreaId], [StocktakingSheetId], [AreaId], [AssignTo], [Status], [CreatedAt], [UpdateAt]) VALUES (N'EFCACDD6-25B7-4F48-BCF4-58CBA5556DD3', N'STK_20251221_1766289486464', N'2', N'3', N'1', N'2025-12-21 11:35:28.8477043', N'2025-12-21 11:35:40.0183735')
GO

INSERT INTO [dbo].[StocktakingAreas] ([StocktakingAreaId], [StocktakingSheetId], [AreaId], [AssignTo], [Status], [CreatedAt], [UpdateAt]) VALUES (N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'STK_20251221_1766289336201', N'2', N'2', N'4', N'2025-12-21 10:55:36.3653277', N'2025-12-22 01:35:11.0562289')
GO

INSERT INTO [dbo].[StocktakingAreas] ([StocktakingAreaId], [StocktakingSheetId], [AreaId], [AssignTo], [Status], [CreatedAt], [UpdateAt]) VALUES (N'C7C9073C-9E63-46EB-AE0E-E7F075CE9CC0', N'STK_20251221_1766289486464', N'1', N'2', N'1', N'2025-12-21 10:58:06.4750312', N'2025-12-21 11:35:39.8123312')
GO


-- ----------------------------
-- Table structure for StocktakingLocation
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[StocktakingLocation]') AND type IN ('U'))
	DROP TABLE [dbo].[StocktakingLocation]
GO

CREATE TABLE [dbo].[StocktakingLocation] (
  [StocktakingLocationId] uniqueidentifier  NOT NULL,
  [StocktakingAreaId] uniqueidentifier  NULL,
  [LocationId] int  NULL,
  [Note] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RejectReason] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[StocktakingLocation] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of StocktakingLocation
-- ----------------------------
INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'7C132167-FF05-406B-BED0-011082584FA2', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'35', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667031', N'2025-12-22 01:35:11.0561640')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'197322B3-9380-4906-921D-0DB62DF00E0D', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'16', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519450', N'2025-12-22 01:27:07.6438440')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'6D32200A-7771-4309-82F1-17CA1F784671', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'21', NULL, NULL, N'4', N'2025-12-22 01:29:41.1666796', N'2025-12-22 01:35:11.0561650')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'CCD0B112-8942-4D5B-85EE-298703584EEF', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'17', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519464', N'2025-12-22 01:27:07.6438454')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'310B4391-4FCB-4AA2-818B-2F5DDEE77050', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'30', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667010', N'2025-12-22 01:35:11.0561652')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'50C36557-AC6F-4621-B85C-3A0EF9D1CF9D', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'37', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667041', N'2025-12-22 01:35:11.0561653')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'B13E468F-B80F-4492-AEB9-3C31F57F8BEF', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'23', NULL, NULL, N'4', N'2025-12-22 01:29:41.1666972', N'2025-12-22 01:35:11.0561655')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'C2039BEB-60F8-4A9A-94CD-3D45C7406D0A', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'5', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519258', N'2025-12-22 01:27:07.6438456')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'1FE9D40E-CBD7-45D6-BC75-4E2934B153D9', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'15', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519441', N'2025-12-22 01:27:07.6438458')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'E8F30EF8-1F21-4183-9EB2-4EB15FED0022', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'27', NULL, NULL, N'4', N'2025-12-22 01:29:41.1666990', N'2025-12-22 01:35:11.0561657')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'0837126D-3E29-47B1-ABE1-521D87C671FE', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'39', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667050', N'2025-12-22 01:35:11.0561659')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'7769493E-BE67-4440-8587-559794E4B431', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'29', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667006', N'2025-12-22 01:35:11.0561663')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'E8295FF3-341E-427D-A546-5889B64228EA', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'13', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519417', N'2025-12-22 01:27:07.6438460')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'A3247A27-5042-40A3-80AB-67E5E61E7205', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'14', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519424', N'2025-12-22 01:27:07.6438462')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'E9C83F81-DC0A-4472-86B4-6B03E0B71048', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'1', NULL, NULL, N'4', N'2025-12-22 01:24:52.4517275', N'2025-12-22 01:27:07.6438463')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'A361275A-0A32-4352-AF08-6CCE8904A0FE', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'28', NULL, NULL, N'4', N'2025-12-22 01:29:41.1666994', N'2025-12-22 01:35:11.0561665')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'228EFDCF-1038-424A-A0B2-6D7DC3389238', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'25', NULL, NULL, N'4', N'2025-12-22 01:29:41.1666980', N'2025-12-22 01:35:11.0561667')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'F41B8246-3183-4D90-9C10-71CC5475061F', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'24', NULL, NULL, N'4', N'2025-12-22 01:29:41.1666976', N'2025-12-22 01:35:11.0561669')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'AC12D565-5446-4CE7-9E52-765DFFFCAEC6', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'4', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519245', N'2025-12-22 01:27:07.6438465')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'8B1B63E4-0197-4F63-93FC-76783FA15EBC', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'7', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519322', N'2025-12-22 01:27:07.6438467')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'13222762-959A-4CBC-B758-782F7F6CA631', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'20', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519493', N'2025-12-22 01:27:07.6438469')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'822CF918-D3B2-4FF6-A413-7F935679633E', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'8', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519329', N'2025-12-22 01:27:07.6438470')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'9C4F6C3A-2CD7-4920-8011-9B3F43392717', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'38', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667046', N'2025-12-22 01:35:11.0561671')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'B7139DAE-B1E6-42D2-B036-AF76A1D08150', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'6', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519269', N'2025-12-22 01:27:07.6438472')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'C803412B-F8AE-4577-BDBD-B128BAB0D763', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'19', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519486', N'2025-12-22 01:27:07.6438474')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'546A5548-A292-428D-B03E-BBB09D51203D', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'10', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519367', N'2025-12-22 01:27:07.6438476')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'69284E19-1B95-4A48-AD77-BCD49F966E84', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'32', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667020', N'2025-12-22 01:35:11.0561672')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'75AE8628-82A3-4A7E-A30D-C52502826EC2', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'26', NULL, NULL, N'4', N'2025-12-22 01:29:41.1666986', N'2025-12-22 01:35:11.0561674')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'710100B6-5BDB-43BB-96F0-CE030A5E2B56', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'36', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667035', N'2025-12-22 01:35:11.0561676')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'8D94934F-F2D5-4B7D-B30D-D14C27C9629E', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'12', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519390', N'2025-12-22 01:27:07.6438478')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'E47B2AC1-ADFF-4FC2-B55B-DA0C33DCA424', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'2', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519215', N'2025-12-22 01:27:07.6438480')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'623AAC5B-2D2E-4035-8E50-DD474D4E348E', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'31', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667016', N'2025-12-22 01:35:11.0561678')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'E70AEBB8-8041-45A7-AC0C-DF1B512750A0', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'18', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519479', N'2025-12-22 01:27:07.6438482')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'2CEC34AA-CA87-432E-A174-E6CA54B87254', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'22', NULL, NULL, N'4', N'2025-12-22 01:29:41.1666965', N'2025-12-22 01:35:11.0561679')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'2F57345A-167A-4B4D-A25E-EC2F2EFB0AA3', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'9', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519344', N'2025-12-22 01:27:07.6438483')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'51283B2C-BA50-4422-9666-EE29482CAEFA', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'33', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667023', N'2025-12-22 01:35:11.0561684')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'091C5020-65B9-4FE8-81D7-F8594B8DAF76', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'3', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519237', N'2025-12-22 01:27:07.6438485')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'797EB443-9330-4F2D-B0DF-F9A344C58105', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'40', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667054', N'2025-12-22 01:35:11.0561685')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'2CF2E593-DCA9-4AF7-9170-FD7CDDB6ADC5', N'B1C43429-5E68-48F3-9C90-2A8F3548A6CE', N'11', NULL, NULL, N'4', N'2025-12-22 01:24:52.4519374', N'2025-12-22 01:27:07.6438487')
GO

INSERT INTO [dbo].[StocktakingLocation] ([StocktakingLocationId], [StocktakingAreaId], [LocationId], [Note], [RejectReason], [Status], [CreatedAt], [UpdateAt]) VALUES (N'30D6F73B-EB9E-423A-9374-FFB211E2D1C0', N'CD9E0EBA-7E80-4DBE-97DB-8A366C2DB245', N'34', NULL, NULL, N'4', N'2025-12-22 01:29:41.1667027', N'2025-12-22 01:35:11.0561687')
GO


-- ----------------------------
-- Table structure for StocktakingPallet
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[StocktakingPallet]') AND type IN ('U'))
	DROP TABLE [dbo].[StocktakingPallet]
GO

CREATE TABLE [dbo].[StocktakingPallet] (
  [StocktakingPalletId] uniqueidentifier  NOT NULL,
  [StocktakingLocationId] uniqueidentifier  NULL,
  [PalletId] char(26) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ExpectedPackageQuantity] int  NULL,
  [ActualPackageQuantity] int  NULL,
  [Status] int  NULL,
  [Note] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UpdateAt] datetime2(7)  NULL,
  [CreatedAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[StocktakingPallet] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of StocktakingPallet
-- ----------------------------
INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'CE0F2A08-5280-49F0-ACC1-131F1A6D02F6', N'75AE8628-82A3-4A7E-A30D-C52502826EC2', N'01KCVEMW55EBJ1SZM6XQQHSX1R', N'10', N'10', N'2', N'', N'2025-12-22 01:33:26.0001473', N'2025-12-22 01:29:41.3405085')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'5C355236-67EC-4DCB-9AD2-1F43CF6A5A68', N'797EB443-9330-4F2D-B0DF-F9A344C58105', N'01KCV63DFBAE7001BQ8Z1RWRE1', N'40', N'40', N'2', N'', N'2025-12-22 01:34:35.3579991', N'2025-12-22 01:29:41.3405081')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'1BB7CA1D-DBA6-46F7-8E20-21B20D447A0A', N'E8F30EF8-1F21-4183-9EB2-4EB15FED0022', N'01KCVEMWB0NNQQ2YM85HVTEXYV', N'10', N'10', N'2', N'', N'2025-12-22 01:31:44.4035771', N'2025-12-22 01:29:41.3405092')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'222947C3-2292-47D1-9315-3337226A4091', N'228EFDCF-1038-424A-A0B2-6D7DC3389238', N'01KCVEMWBAA0CCGXG1N7ZP19HA', N'30', N'30', N'2', N'', N'2025-12-22 01:32:37.8980886', N'2025-12-22 01:29:41.3405098')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'FBC6D5AF-2EB0-4980-B7AA-34EB8390A47D', N'B13E468F-B80F-4492-AEB9-3C31F57F8BEF', N'01KCZGNSJNFZ3W7P43KYEKSCQP', N'33', N'33', N'2', N'', N'2025-12-22 01:31:32.5174657', N'2025-12-22 01:29:41.3405140')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'203F86B0-6526-47DA-9569-3A80899539C2', N'50C36557-AC6F-4621-B85C-3A0EF9D1CF9D', N'01KCYDRNHW0JMH2EMFB1SJFH55', N'30', N'30', N'2', N'', N'2025-12-22 01:31:14.2155499', N'2025-12-22 01:29:41.3405116')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'706BE07B-8EF2-4FD7-A12C-43D03D219519', N'710100B6-5BDB-43BB-96F0-CE030A5E2B56', N'01KCYDRNGWMRG9YY002QHCQFEN', N'30', N'30', N'2', N'', N'2025-12-22 01:33:38.5394458', N'2025-12-22 01:29:41.3405111')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'F5C59385-3C34-4989-8F52-56B0C81A73AD', N'51283B2C-BA50-4422-9666-EE29482CAEFA', N'01KCTXD1DWGN0W8X3YDSTZADPA', N'20', N'20', N'2', N'', N'2025-12-22 01:34:23.7687750', N'2025-12-22 01:29:41.3405029')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'9DF242B8-E076-4D76-BE7D-5DB09BC2DC24', N'6D32200A-7771-4309-82F1-17CA1F784671', N'01KCZGNSB59CTG605RCC46WTS4', N'33', N'33', N'2', N'', N'2025-12-22 01:30:48.4757587', N'2025-12-22 01:29:41.3405136')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'F7234324-76EB-4D18-BA54-61B19973AB60', N'30D6F73B-EB9E-423A-9374-FFB211E2D1C0', N'01KCTXD1CXY7FP5F1TCZQA2R6N', N'20', N'20', N'2', N'', N'2025-12-22 01:34:48.3517006', N'2025-12-22 01:29:41.3404999')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'621D1D6D-9302-4F0D-A219-80C019A22A10', N'623AAC5B-2D2E-4035-8E50-DD474D4E348E', N'01KCTYFSTCKTR62572T9F64174', N'20', N'20', N'2', N'', N'2025-12-22 01:33:51.6075771', N'2025-12-22 01:29:41.3405046')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'5559920D-2296-4D8A-8860-896333752C08', N'310B4391-4FCB-4AA2-818B-2F5DDEE77050', N'01KCVEMW94WJ69PTQ2NDYTGHSF', N'30', N'30', N'2', N'', N'2025-12-22 01:30:59.4806431', N'2025-12-22 01:29:41.3405089')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'F3750EEF-E5DD-4A7C-A1C5-94831F3A7667', N'9C4F6C3A-2CD7-4920-8011-9B3F43392717', N'01KCYDRNJ5H2XVEQTZN9B1N45X', N'30', N'30', N'2', N'', N'2025-12-22 01:33:00.8607819', N'2025-12-22 01:29:41.3405120')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'D229E0DD-9750-4CFA-B993-A51A3EB7C0A3', N'7769493E-BE67-4440-8587-559794E4B431', N'01KCYEFRFJAJQNCT32Z1CHGBBZ', N'40', N'40', N'2', N'', N'2025-12-22 01:32:11.4051066', N'2025-12-22 01:29:41.3405132')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'40903862-D31C-4F5D-8D28-A79211C8AA9E', N'69284E19-1B95-4A48-AD77-BCD49F966E84', N'01KCTYFSS8F0J793N4EVEQ16B2', N'20', N'20', N'2', N'', N'2025-12-22 01:33:15.7189860', N'2025-12-22 01:29:41.3405038')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'DC27FA80-5FE8-447C-B955-B11FEB9FD5B6', N'0837126D-3E29-47B1-ABE1-521D87C671FE', N'01KCYDRNJAK7PGKWYMSRG29W41', N'30', N'30', N'2', N'', N'2025-12-22 01:31:56.6835423', N'2025-12-22 01:29:41.3405125')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'26BA22FE-787C-4183-B4BE-BA5DDD71CF87', N'A361275A-0A32-4352-AF08-6CCE8904A0FE', N'01KCYEFREZW2CX8TKAJ3Q6W32H', N'40', N'40', N'2', N'', N'2025-12-22 01:32:23.3167914', N'2025-12-22 01:29:41.3405128')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'19F84F30-5D51-40F3-91AA-C453F0D57190', N'E47B2AC1-ADFF-4FC2-B55B-DA0C33DCA424', N'01KCVEMWAPVGNVWY5C2G2XT9CA', N'30', N'30', N'2', N'', N'2025-12-22 01:25:31.8590810', N'2025-12-22 01:24:52.7445206')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'F5609CF0-9FBA-4423-A159-CC97283C418D', N'2CEC34AA-CA87-432E-A174-E6CA54B87254', N'01KCVGG7E0S9CH9T2DS07BRY3S', N'30', N'30', N'2', N'', N'2025-12-22 01:34:03.6605815', N'2025-12-22 01:29:41.3405101')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'57A75D11-C050-4F2F-B058-D4D09F53D35F', N'7C132167-FF05-406B-BED0-011082584FA2', N'01KCV63DA5R5WCVJNBN4WXX46M', N'40', N'39', N'2', N'', N'2025-12-22 01:30:35.3168018', N'2025-12-22 01:29:41.3405072')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'A2AE7B92-ACA9-4590-8B92-EAEE61826DD7', N'AC12D565-5446-4CE7-9E52-765DFFFCAEC6', N'01KCVEMWACH168SSQ5079Q6JF6', N'10', N'10', N'2', N'', N'2025-12-22 01:25:20.4624745', N'2025-12-22 01:24:52.7444596')
GO

INSERT INTO [dbo].[StocktakingPallet] ([StocktakingPalletId], [StocktakingLocationId], [PalletId], [ExpectedPackageQuantity], [ActualPackageQuantity], [Status], [Note], [UpdateAt], [CreatedAt]) VALUES (N'8629FDC9-1120-454D-A358-F2E2583AB5FA', N'F41B8246-3183-4D90-9C10-71CC5475061F', N'01KCVGG7EDW71ZGR0K868AE6DM', N'30', N'30', N'2', N'', N'2025-12-22 01:32:50.7001575', N'2025-12-22 01:29:41.3405105')
GO


-- ----------------------------
-- Table structure for StocktakingSheets
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[StocktakingSheets]') AND type IN ('U'))
	DROP TABLE [dbo].[StocktakingSheets]
GO

CREATE TABLE [dbo].[StocktakingSheets] (
  [StocktakingSheetId] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Status] int  NULL,
  [StartTime] datetime2(7)  NULL,
  [Note] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [CreatedBy] int  NULL,
  [UpdateAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[StocktakingSheets] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of StocktakingSheets
-- ----------------------------
INSERT INTO [dbo].[StocktakingSheets] ([StocktakingSheetId], [Status], [StartTime], [Note], [CreatedAt], [CreatedBy], [UpdateAt]) VALUES (N'STK_20251221_1766289336201', N'7', N'2025-12-21 10:57:00.0000000', N'Kiểm kê ngày 21/12/2025', N'2025-12-21 10:55:36.2010657', N'1', N'2025-12-22 01:35:40.8509637')
GO

INSERT INTO [dbo].[StocktakingSheets] ([StocktakingSheetId], [Status], [StartTime], [Note], [CreatedAt], [CreatedBy], [UpdateAt]) VALUES (N'STK_20251221_1766289486464', N'2', N'2025-12-22 07:00:00.0000000', N'Kiểm kê ngày 22/12/2025 07:00', N'2025-12-21 10:58:06.4643027', N'1', N'2025-12-21 11:35:40.0364306')
GO

INSERT INTO [dbo].[StocktakingSheets] ([StocktakingSheetId], [Status], [StartTime], [Note], [CreatedAt], [CreatedBy], [UpdateAt]) VALUES (N'STK_20251221_1766341749642', N'2', N'2025-12-23 07:00:00.0000000', N'Kiem ke ngay 23/12/2025', N'2025-12-22 01:29:09.6425805', N'1', N'2025-12-22 01:29:10.5731338')
GO


-- ----------------------------
-- Table structure for StorageConditions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[StorageConditions]') AND type IN ('U'))
	DROP TABLE [dbo].[StorageConditions]
GO

CREATE TABLE [dbo].[StorageConditions] (
  [StorageConditionId] int  IDENTITY(1,1) NOT NULL,
  [TemperatureMin] decimal(5,2)  NULL,
  [TemperatureMax] decimal(5,2)  NULL,
  [HumidityMin] decimal(5,2)  NULL,
  [HumidityMax] decimal(5,2)  NULL,
  [LightLevel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[StorageConditions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of StorageConditions
-- ----------------------------
SET IDENTITY_INSERT [dbo].[StorageConditions] ON
GO

INSERT INTO [dbo].[StorageConditions] ([StorageConditionId], [TemperatureMin], [TemperatureMax], [HumidityMin], [HumidityMax], [LightLevel], [Status], [CreatedAt], [UpdateAt]) VALUES (N'1', N'15.00', N'30.00', N'50.00', N'75.00', N'Bình thường', N'1', N'2025-12-14 07:04:11.4454645', N'2025-12-14 21:37:04.8910057')
GO

INSERT INTO [dbo].[StorageConditions] ([StorageConditionId], [TemperatureMin], [TemperatureMax], [HumidityMin], [HumidityMax], [LightLevel], [Status], [CreatedAt], [UpdateAt]) VALUES (N'2', N'5.00', N'15.00', N'75.00', N'85.00', N'Bình thường', N'1', N'2025-12-14 07:04:29.7802091', N'2025-12-14 21:37:45.3405691')
GO

SET IDENTITY_INSERT [dbo].[StorageConditions] OFF
GO


-- ----------------------------
-- Table structure for Suppliers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Suppliers]') AND type IN ('U'))
	DROP TABLE [dbo].[Suppliers]
GO

CREATE TABLE [dbo].[Suppliers] (
  [SupplierId] int  IDENTITY(1,1) NOT NULL,
  [CompanyName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BrandName] nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Phone] varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TaxCode] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ContactPersonName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ContactPersonPhone] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ContactPersonEmail] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NULL,
  [UpdatedAt] datetime2(7)  NULL,
  [CreatedAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[Suppliers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Suppliers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Suppliers] ON
GO

INSERT INTO [dbo].[Suppliers] ([SupplierId], [CompanyName], [BrandName], [Email], [Phone], [TaxCode], [Address], [ContactPersonName], [ContactPersonPhone], [ContactPersonEmail], [Status], [UpdatedAt], [CreatedAt]) VALUES (N'1', N'Công Ty Cổ Phần Sữa Việt Nam (Vinamilk)', N'Vinamilk', N'vinamilk@vinamilk.com.vn', N'0964582931', N'0300588569', N'Số 10, Đường Tân Trào, Phường Dịch Vọng Hậu, Quận Cầu Giấy, Hà Nội', N'Nguyễn Văn An (Sales Miền Bắc)', N'0901234567', N'an.nguyen@vinamilk.com.vn', N'1', N'2025-12-14 07:35:48.9766667', N'2025-12-14 07:35:48.9766667')
GO

INSERT INTO [dbo].[Suppliers] ([SupplierId], [CompanyName], [BrandName], [Email], [Phone], [TaxCode], [Address], [ContactPersonName], [ContactPersonPhone], [ContactPersonEmail], [Status], [UpdatedAt], [CreatedAt]) VALUES (N'2', N'Công Ty Cổ Phần Chuỗi Thực Phẩm TH', N'TH True Milk', N'chamsockhachhang@thmilk.vn', N'0978143620', N'2901277842', N'Số 166 Nguyễn Thái Học, Phường Quang Trung, Quận Ba Đình, Hà Nội', N'Lê Thị Thu Hà', N'0398765432', N'ha.le@thmilk.vn', N'1', N'2025-12-14 07:35:48.9766667', N'2025-12-14 07:35:48.9766667')
GO

INSERT INTO [dbo].[Suppliers] ([SupplierId], [CompanyName], [BrandName], [Email], [Phone], [TaxCode], [Address], [ContactPersonName], [ContactPersonPhone], [ContactPersonEmail], [Status], [UpdatedAt], [CreatedAt]) VALUES (N'3', N'Văn Phòng Đại Diện Abbott Laboratories GmbH', N'Abbott', N'pv@abbott.com', N'0982759404', N'0103987654', N'Tháp A, Tòa nhà Handi Resco, 521 Kim Mã, Quận Ba Đình, Hà Nội', N'Trần Minh Đức', N'0912333444', N'duc.tran@abbott.com', N'1', N'2025-12-14 07:35:48.9766667', N'2025-12-14 07:35:48.9766667')
GO

INSERT INTO [dbo].[Suppliers] ([SupplierId], [CompanyName], [BrandName], [Email], [Phone], [TaxCode], [Address], [ContactPersonName], [ContactPersonPhone], [ContactPersonEmail], [Status], [UpdatedAt], [CreatedAt]) VALUES (N'4', N'Công Ty Cổ Phần Thực Phẩm Dinh Dưỡng Nutifood', N'Nutifood', N'nutifood@nutifood.com.vn', N'0869331785', N'0302029978', N'281-283 Hoàng Diệu, Phường Hồng Bàng, Quận Hồng Bàng, Hải Phòng', N'Phạm Hoàng Nam', N'0909888999', N'nam.pham@nutifood.com.vn', N'1', N'2025-12-14 07:35:48.9766667', N'2025-12-14 07:35:48.9766667')
GO

INSERT INTO [dbo].[Suppliers] ([SupplierId], [CompanyName], [BrandName], [Email], [Phone], [TaxCode], [Address], [ContactPersonName], [ContactPersonPhone], [ContactPersonEmail], [Status], [UpdatedAt], [CreatedAt]) VALUES (N'5', N'Công Ty TNHH FrieslandCampina Việt Nam', N'Dutch Lady', N'cskh@frieslandcampina.com', N'0327614998', N'3700229358', N'Khu phố Bình Đức 1, Phường Bình Hàn, TP. Hải Dương, Tỉnh Hải Dương', N'Vũ Thị Mai', N'0345678901', N'mai.vu@dutchlady.com.vn', N'1', N'2025-12-14 07:35:48.9766667', N'2025-12-14 07:35:48.9766667')
GO

INSERT INTO [dbo].[Suppliers] ([SupplierId], [CompanyName], [BrandName], [Email], [Phone], [TaxCode], [Address], [ContactPersonName], [ContactPersonPhone], [ContactPersonEmail], [Status], [UpdatedAt], [CreatedAt]) VALUES (N'6', N'Công Ty TNHH Nestlé Việt Nam', N'Nestlé', N'consumer.services@vn.nestle.com', N'0338902176', N'3600235305', N'Lầu 5, Tòa nhà VCCI Tower, 9 Đào Duy Anh, Quận Đống Đa, Hà Nội', N'Hoàng Văn Thái', N'0988776655', N'thai.hoang@vn.nestle.com', N'1', N'2025-12-14 07:35:48.9766667', N'2025-12-14 07:35:48.9766667')
GO

INSERT INTO [dbo].[Suppliers] ([SupplierId], [CompanyName], [BrandName], [Email], [Phone], [TaxCode], [Address], [ContactPersonName], [ContactPersonPhone], [ContactPersonEmail], [Status], [UpdatedAt], [CreatedAt]) VALUES (N'7', N'Công Ty Sữa Đậu Nành Việt Nam - Vinasoy', N'Vinasoy', N'cskh@vinasoy.com.vn', N'0365447289', N'5900320658', N'02 Nguyễn Chí Thanh, TP. Hạ Long, Tỉnh Quảng Ninh', N'Đỗ Ngọc Lan', N'0332211444', N'lan.do@vinasoy.com.vn', N'1', N'2025-12-14 07:35:48.9766667', N'2025-12-14 07:35:48.9766667')
GO

INSERT INTO [dbo].[Suppliers] ([SupplierId], [CompanyName], [BrandName], [Email], [Phone], [TaxCode], [Address], [ContactPersonName], [ContactPersonPhone], [ContactPersonEmail], [Status], [UpdatedAt], [CreatedAt]) VALUES (N'8', N'Công Ty Cổ Phần Sữa Quốc Tế (IDP)', N'IDP', N'chamsockhachhang@idp.vn', N'0391880563', N'0500427616', N'217 Nguyễn Văn Thủ, Phường Lý Thái Tổ, Quận Hoàn Kiếm, Hà Nội', N'Nguyễn Thị Bích', N'0911555666', N'bich.nguyen@idp.vn', N'1', N'2025-12-14 07:35:48.9766667', N'2025-12-14 07:35:48.9766667')
GO

SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO


-- ----------------------------
-- Table structure for UnitMeasures
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[UnitMeasures]') AND type IN ('U'))
	DROP TABLE [dbo].[UnitMeasures]
GO

CREATE TABLE [dbo].[UnitMeasures] (
  [UnitMeasureId] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL,
  [Status] int  NULL
)
GO

ALTER TABLE [dbo].[UnitMeasures] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of UnitMeasures
-- ----------------------------
SET IDENTITY_INSERT [dbo].[UnitMeasures] ON
GO

INSERT INTO [dbo].[UnitMeasures] ([UnitMeasureId], [Name], [Description], [CreatedAt], [UpdateAt], [Status]) VALUES (N'1', N'Hộp', N'Đơn vị nhỏ nhất cho sữa nước (giấy) hoặc sữa bột hộp giấy', N'2025-12-14 07:30:39.3666667', N'2025-12-14 07:30:39.3666667', N'1')
GO

INSERT INTO [dbo].[UnitMeasures] ([UnitMeasureId], [Name], [Description], [CreatedAt], [UpdateAt], [Status]) VALUES (N'2', N'Lon', N'Đơn vị cơ bản cho sữa bột đóng lon thiếc', N'2025-12-14 07:30:39.3666667', N'2025-12-14 07:30:39.3666667', N'1')
GO

INSERT INTO [dbo].[UnitMeasures] ([UnitMeasureId], [Name], [Description], [CreatedAt], [UpdateAt], [Status]) VALUES (N'3', N'Chai', N'Đơn vị cho các loại sữa tươi thanh trùng/tiệt trùng đóng chai', N'2025-12-14 07:30:39.3666667', N'2025-12-14 07:30:39.3666667', N'1')
GO

INSERT INTO [dbo].[UnitMeasures] ([UnitMeasureId], [Name], [Description], [CreatedAt], [UpdateAt], [Status]) VALUES (N'4', N'Gói', N'Đơn vị cho sữa bột dạng túi hoặc sữa chua ăn', N'2025-12-14 07:30:39.3666667', N'2025-12-14 07:30:39.3666667', N'1')
GO

INSERT INTO [dbo].[UnitMeasures] ([UnitMeasureId], [Name], [Description], [CreatedAt], [UpdateAt], [Status]) VALUES (N'5', N'Hũ', N'Đơn vị dùng cho sữa chua ăn', N'2025-12-14 07:30:39.3666667', N'2025-12-14 07:30:39.3666667', N'1')
GO

SET IDENTITY_INSERT [dbo].[UnitMeasures] OFF
GO


-- ----------------------------
-- Table structure for UserOtp
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[UserOtp]') AND type IN ('U'))
	DROP TABLE [dbo].[UserOtp]
GO

CREATE TABLE [dbo].[UserOtp] (
  [Email] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [OtpCode] varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CreatedAt] datetime2(7)  NULL,
  [ExpiresAt] datetime2(7)  NOT NULL,
  [UsedAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[UserOtp] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of UserOtp
-- ----------------------------

-- ----------------------------
-- Table structure for UserRole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRole]') AND type IN ('U'))
	DROP TABLE [dbo].[UserRole]
GO

CREATE TABLE [dbo].[UserRole] (
  [UserId] int  NOT NULL,
  [RoleId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[UserRole] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of UserRole
-- ----------------------------
INSERT INTO [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'1', N'1')
GO

INSERT INTO [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'2', N'2')
GO

INSERT INTO [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'3', N'2')
GO

INSERT INTO [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'4', N'2')
GO

INSERT INTO [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'5', N'5')
GO

INSERT INTO [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'6', N'6')
GO

INSERT INTO [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'7', N'3')
GO

INSERT INTO [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'8', N'4')
GO

INSERT INTO [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'9', N'5')
GO

INSERT INTO [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'10', N'5')
GO


-- ----------------------------
-- Table structure for Users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type IN ('U'))
	DROP TABLE [dbo].[Users]
GO

CREATE TABLE [dbo].[Users] (
  [UserId] int  IDENTITY(1,1) NOT NULL,
  [Email] varchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Password] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FullName] nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DoB] date  NULL,
  [Gender] bit  NULL,
  [Phone] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int DEFAULT 1 NULL,
  [IsFirstLogin] bit DEFAULT 0 NULL,
  [CreateAt] datetime2(7)  NULL,
  [UpdateAt] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[Users] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Users
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Users] ON
GO

INSERT INTO [dbo].[Users] ([UserId], [Email], [Password], [FullName], [DoB], [Gender], [Phone], [Address], [Status], [IsFirstLogin], [CreateAt], [UpdateAt]) VALUES (N'1', N'warehouse-manager-1@gmail.com', N'$2a$11$U9lIwhBoGC.s2UK3et1ODuvZ4UP3eL5AE/V9nGALvmWCl127gzSM.', N'Lê Hữu An', N'1985-01-01', N'1', N'0901000101', N'Hà Nội', N'1', N'0', N'2025-10-03 20:51:49.8833333', N'2025-10-03 20:51:49.8833333')
GO

INSERT INTO [dbo].[Users] ([UserId], [Email], [Password], [FullName], [DoB], [Gender], [Phone], [Address], [Status], [IsFirstLogin], [CreateAt], [UpdateAt]) VALUES (N'2', N'warehouse-staff-1@gmail.com', N'$2a$11$R6G4NtzkzuTP7mQq3.dOn.RjEBf8wmlhB.D7U3kNhFysxsfdPmNKS', N'Trần Thị Bích', N'1990-05-15', N'0', N'0901000102', N'Hưng Yên', N'1', N'0', N'2025-10-03 20:51:49.8833333', N'2025-12-14 21:31:58.1857975')
GO

INSERT INTO [dbo].[Users] ([UserId], [Email], [Password], [FullName], [DoB], [Gender], [Phone], [Address], [Status], [IsFirstLogin], [CreateAt], [UpdateAt]) VALUES (N'3', N'warehouse-staff-2@gmail.com', N'$2a$08$qw4UsgVG49T80yyynCnGkOfP4I3pIKkQnVr4qg.VC9B1hQU1Qyij6', N'Nguyễn Văn Phát', N'1995-12-20', N'1', N'0901000103', N'Hải Phòng', N'1', N'0', N'2025-10-03 20:51:49.8833333', N'2025-12-14 21:32:08.0331193')
GO

INSERT INTO [dbo].[Users] ([UserId], [Email], [Password], [FullName], [DoB], [Gender], [Phone], [Address], [Status], [IsFirstLogin], [CreateAt], [UpdateAt]) VALUES (N'4', N'warehouse-staff-3@gmail.com', N'$2a$08$qw4UsgVG49T80yyynCnGkOfP4I3pIKkQnVr4qg.VC9B1hQU1Qyij6', N'Phạm Thanh Nga', N'1998-08-10', N'0', N'0901000104', N'Hà Nội', N'1', N'0', N'2025-10-03 20:51:49.8833333', N'2025-12-14 21:32:19.9926643')
GO

INSERT INTO [dbo].[Users] ([UserId], [Email], [Password], [FullName], [DoB], [Gender], [Phone], [Address], [Status], [IsFirstLogin], [CreateAt], [UpdateAt]) VALUES (N'5', N'representative-sale-1@gmail.com', N'$2a$08$2892OJyijUkhcEhUq1USQOVNjrOB/F5vp/30AzvMI8Pcmuy7OdgDS', N'Hoàng Anh Thư', N'1996-03-25', N'0', N'0901000105', N'Thái Nguyên', N'1', N'0', N'2025-10-03 20:51:49.8833333', N'2025-10-03 20:51:49.8833333')
GO

INSERT INTO [dbo].[Users] ([UserId], [Email], [Password], [FullName], [DoB], [Gender], [Phone], [Address], [Status], [IsFirstLogin], [CreateAt], [UpdateAt]) VALUES (N'6', N'representative-manager-1@gmail.com', N'$2a$08$qw4UsgVG49T80yyynCnGkOfP4I3pIKkQnVr4qg.VC9B1hQU1Qyij6', N'Vũ Minh Đức', N'1988-11-05', N'1', N'0901000106', N'Hà Nội', N'1', N'0', N'2025-10-03 20:51:49.8833333', N'2025-10-20 04:20:31.1867403')
GO

INSERT INTO [dbo].[Users] ([UserId], [Email], [Password], [FullName], [DoB], [Gender], [Phone], [Address], [Status], [IsFirstLogin], [CreateAt], [UpdateAt]) VALUES (N'7', N'administrator@gmail.com', N'$2a$08$1nmg6cyVzIZJuwiTzE1biOJMF3UppuRT.QdIVmhCjBaUjceA95wGi', N'Cao Xuân An', N'1980-02-02', N'1', N'0901000107', N'Hà Nội', N'1', N'0', N'2025-10-03 20:51:49.8833333', N'2025-12-05 02:06:21.8411848')
GO

INSERT INTO [dbo].[Users] ([UserId], [Email], [Password], [FullName], [DoB], [Gender], [Phone], [Address], [Status], [IsFirstLogin], [CreateAt], [UpdateAt]) VALUES (N'8', N'business-owner@gmail.com', N'$2a$08$Q7TDpYY.6UW5efixDTUxm.HcCCj/V2ZIKpWelzzLlBQ/Y7bDktZkW', N'Đặng Văn Tài', N'1975-07-07', N'1', N'0901000108', N'Lào Cai', N'1', N'0', N'2025-10-03 20:51:49.8833333', N'2025-10-03 20:51:49.8833333')
GO

INSERT INTO [dbo].[Users] ([UserId], [Email], [Password], [FullName], [DoB], [Gender], [Phone], [Address], [Status], [IsFirstLogin], [CreateAt], [UpdateAt]) VALUES (N'9', N'representative-sale-2@gmail.com', N'$2a$11$VQc1aweWdFnfUHuTTj8YqeI7Un9RPe/OxaPE/VGnv1Patbv2mfehK', N'Hoàng Minh Nghĩa', N'2005-10-04', N'1', N'0173337867', N'Nam Định', N'1', N'0', N'2025-10-03 20:51:49.8833333', N'2025-10-16 03:38:55.8130923')
GO

INSERT INTO [dbo].[Users] ([UserId], [Email], [Password], [FullName], [DoB], [Gender], [Phone], [Address], [Status], [IsFirstLogin], [CreateAt], [UpdateAt]) VALUES (N'10', N'representative-sale-3@gmail.com', N'$2a$11$4xjNl5GeciqgYJWXbCFv/OrpkFQtrY2.va2kyeDMkMX.AWuVbgpEK', N'Tiến Đặng Hoàng', N'2005-10-04', N'1', N'0173337867', N'Hà Nội', N'1', N'0', N'2025-10-03 20:51:49.8833333', N'2025-10-16 03:38:55.8130923')
GO

SET IDENTITY_INSERT [dbo].[Users] OFF
GO


-- ----------------------------
-- procedure structure for DeleteStocktakingSheet
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DeleteStocktakingSheet]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE [dbo].[DeleteStocktakingSheet]
GO

CREATE PROCEDURE [dbo].[DeleteStocktakingSheet]
    @stocktakingSheetId NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DELETE sp
    FROM StocktakingPallet sp
    INNER JOIN StocktakingLocation sl ON sp.StocktakingLocationId = sl.StocktakingLocationId
    INNER JOIN StocktakingAreas sa ON sl.StocktakingAreaId = sa.StocktakingAreaId
    WHERE sa.StocktakingSheetId = @stocktakingSheetId;

    DELETE sl
    FROM StocktakingLocation sl
    INNER JOIN StocktakingAreas sa ON sl.StocktakingAreaId = sa.StocktakingAreaId
    WHERE sa.StocktakingSheetId = @stocktakingSheetId;

    DELETE FROM StocktakingAreas
    WHERE StocktakingSheetId = @stocktakingSheetId;

    DELETE FROM StocktakingSheets
    WHERE StocktakingSheetId = @stocktakingSheetId;
END;
GO


-- ----------------------------
-- Auto increment value for Areas
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Areas]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table Areas
-- ----------------------------
ALTER TABLE [dbo].[Areas] ADD CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED ([AreaId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table BackOrders
-- ----------------------------
ALTER TABLE [dbo].[BackOrders] ADD CONSTRAINT [PK_BackOrders] PRIMARY KEY CLUSTERED ([BackOrderId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Batchs
-- ----------------------------
ALTER TABLE [dbo].[Batchs] ADD CONSTRAINT [PK_Batchs] PRIMARY KEY CLUSTERED ([BatchId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for Categories
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Categories]', RESEED, 7)
GO


-- ----------------------------
-- Primary Key structure for table Categories
-- ----------------------------
ALTER TABLE [dbo].[Categories] ADD CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table DisposalNoteDetails
-- ----------------------------
ALTER TABLE [dbo].[DisposalNoteDetails] ADD CONSTRAINT [PK__Disposal__C3D1F4DD12871FDA] PRIMARY KEY CLUSTERED ([DisposalNoteDetailId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table DisposalNotes
-- ----------------------------
ALTER TABLE [dbo].[DisposalNotes] ADD CONSTRAINT [PK__Disposal__520D5C00B0E4A467] PRIMARY KEY CLUSTERED ([DisposalNoteId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for DisposalRequestDetails
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[DisposalRequestDetails]', RESEED, 13)
GO


-- ----------------------------
-- Primary Key structure for table DisposalRequestDetails
-- ----------------------------
ALTER TABLE [dbo].[DisposalRequestDetails] ADD CONSTRAINT [PK__Disposal__71BD39471FA51889] PRIMARY KEY CLUSTERED ([DisposalRequestDetailId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table DisposalRequests
-- ----------------------------
ALTER TABLE [dbo].[DisposalRequests] ADD CONSTRAINT [PK__Disposal__E01900E5CC9B31AE] PRIMARY KEY CLUSTERED ([DisposalRequestId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for Goods
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Goods]', RESEED, 20)
GO


-- ----------------------------
-- Primary Key structure for table Goods
-- ----------------------------
ALTER TABLE [dbo].[Goods] ADD CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([GoodsId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table GoodsIssueNoteDetails
-- ----------------------------
ALTER TABLE [dbo].[GoodsIssueNoteDetails] ADD CONSTRAINT [PK_GoodsIssueNoteDetails] PRIMARY KEY CLUSTERED ([GoodsIssueNoteDetailId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table GoodsIssueNotes
-- ----------------------------
ALTER TABLE [dbo].[GoodsIssueNotes] ADD CONSTRAINT [PK_GoodsIssueNotes] PRIMARY KEY CLUSTERED ([GoodsIssueNoteId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for GoodsPacking
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[GoodsPacking]', RESEED, 20)
GO


-- ----------------------------
-- Primary Key structure for table GoodsPacking
-- ----------------------------
ALTER TABLE [dbo].[GoodsPacking] ADD CONSTRAINT [PK_GoodsPacking] PRIMARY KEY CLUSTERED ([GoodsPackingId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table GoodsReceiptNoteDetails
-- ----------------------------
ALTER TABLE [dbo].[GoodsReceiptNoteDetails] ADD CONSTRAINT [PK_ImportInspections] PRIMARY KEY CLUSTERED ([GoodsReceiptNoteDetailId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table GoodsReceiptNotes
-- ----------------------------
ALTER TABLE [dbo].[GoodsReceiptNotes] ADD CONSTRAINT [PK_ImportInspections_1] PRIMARY KEY CLUSTERED ([GoodsReceiptNoteId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for InventoryLedger
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[InventoryLedger]', RESEED, 71)
GO


-- ----------------------------
-- Primary Key structure for table InventoryLedger
-- ----------------------------
ALTER TABLE [dbo].[InventoryLedger] ADD CONSTRAINT [PK_InventoryLedger] PRIMARY KEY CLUSTERED ([LedgerId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for Locations
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Locations]', RESEED, 40)
GO


-- ----------------------------
-- Primary Key structure for table Locations
-- ----------------------------
ALTER TABLE [dbo].[Locations] ADD CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED ([LocationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for LogHistory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[LogHistory]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table LogHistory
-- ----------------------------
ALTER TABLE [dbo].[LogHistory] ADD CONSTRAINT [PK_LogHistory] PRIMARY KEY CLUSTERED ([LogId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Notifications
-- ----------------------------
ALTER TABLE [dbo].[Notifications] ADD CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED ([NotificationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Pallets
-- ----------------------------
ALTER TABLE [dbo].[Pallets] ADD CONSTRAINT [PK_Pallets] PRIMARY KEY CLUSTERED ([PalletId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for PickAllocation
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PickAllocation]', RESEED, 41)
GO


-- ----------------------------
-- Primary Key structure for table PickAllocation
-- ----------------------------
ALTER TABLE [dbo].[PickAllocation] ADD CONSTRAINT [PK_PickAllocation] PRIMARY KEY CLUSTERED ([PickAllocationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for PurchaseOderDetails
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PurchaseOderDetails]', RESEED, 36)
GO


-- ----------------------------
-- Primary Key structure for table PurchaseOderDetails
-- ----------------------------
ALTER TABLE [dbo].[PurchaseOderDetails] ADD CONSTRAINT [PK_ImportOderDetails] PRIMARY KEY CLUSTERED ([PurchaseOrderDetailId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table PurchaseOrders
-- ----------------------------
ALTER TABLE [dbo].[PurchaseOrders] ADD CONSTRAINT [PK_ImportOrders] PRIMARY KEY CLUSTERED ([PurchaseOderId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for RefreshToken
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[RefreshToken]', RESEED, 6)
GO


-- ----------------------------
-- Uniques structure for table RefreshToken
-- ----------------------------
ALTER TABLE [dbo].[RefreshToken] ADD CONSTRAINT [IX_RefreshToken] UNIQUE NONCLUSTERED ([UserId] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table RefreshToken
-- ----------------------------
ALTER TABLE [dbo].[RefreshToken] ADD CONSTRAINT [PK_RefreshToken] PRIMARY KEY CLUSTERED ([RefreshTokenId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for Retailers
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Retailers]', RESEED, 13)
GO


-- ----------------------------
-- Primary Key structure for table Retailers
-- ----------------------------
ALTER TABLE [dbo].[Retailers] ADD CONSTRAINT [PK_Retailers] PRIMARY KEY CLUSTERED ([RetailerId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for Role
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Role]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE [dbo].[Role] ADD CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED ([RoleId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for SalesOrderDetails
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SalesOrderDetails]', RESEED, 28)
GO


-- ----------------------------
-- Primary Key structure for table SalesOrderDetails
-- ----------------------------
ALTER TABLE [dbo].[SalesOrderDetails] ADD CONSTRAINT [PK_ExportOrderDetails] PRIMARY KEY CLUSTERED ([SalesOrderDetailId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table SalesOrders
-- ----------------------------
ALTER TABLE [dbo].[SalesOrders] ADD CONSTRAINT [PK_ExportOrders] PRIMARY KEY CLUSTERED ([SalesOrderId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table StocktakingAreas
-- ----------------------------
ALTER TABLE [dbo].[StocktakingAreas] ADD CONSTRAINT [PK_StocktakingAreas] PRIMARY KEY CLUSTERED ([StocktakingAreaId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table StocktakingLocation
-- ----------------------------
ALTER TABLE [dbo].[StocktakingLocation] ADD CONSTRAINT [PK_StocktakingOrderDetails] PRIMARY KEY CLUSTERED ([StocktakingLocationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table StocktakingPallet
-- ----------------------------
ALTER TABLE [dbo].[StocktakingPallet] ADD CONSTRAINT [PK_CheckLists] PRIMARY KEY CLUSTERED ([StocktakingPalletId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table StocktakingSheets
-- ----------------------------
ALTER TABLE [dbo].[StocktakingSheets] ADD CONSTRAINT [PK_StocktakingOrders] PRIMARY KEY CLUSTERED ([StocktakingSheetId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for StorageConditions
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[StorageConditions]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table StorageConditions
-- ----------------------------
ALTER TABLE [dbo].[StorageConditions] ADD CONSTRAINT [PK_StorageConditions] PRIMARY KEY CLUSTERED ([StorageConditionId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for Suppliers
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Suppliers]', RESEED, 8)
GO


-- ----------------------------
-- Primary Key structure for table Suppliers
-- ----------------------------
ALTER TABLE [dbo].[Suppliers] ADD CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([SupplierId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for UnitMeasures
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[UnitMeasures]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table UnitMeasures
-- ----------------------------
ALTER TABLE [dbo].[UnitMeasures] ADD CONSTRAINT [PK_UnitOfMeasures] PRIMARY KEY CLUSTERED ([UnitMeasureId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table UserOtp
-- ----------------------------
ALTER TABLE [dbo].[UserOtp] ADD CONSTRAINT [PK_UserOtp] PRIMARY KEY CLUSTERED ([Email])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table UserRole
-- ----------------------------
ALTER TABLE [dbo].[UserRole] ADD CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED ([UserId], [RoleId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Auto increment value for Users
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Users]', RESEED, 10)
GO


-- ----------------------------
-- Primary Key structure for table Users
-- ----------------------------
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Foreign Keys structure for table Areas
-- ----------------------------
ALTER TABLE [dbo].[Areas] ADD CONSTRAINT [FK_Areas_StorageConditions] FOREIGN KEY ([StorageConditionId]) REFERENCES [dbo].[StorageConditions] ([StorageConditionId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table BackOrders
-- ----------------------------
ALTER TABLE [dbo].[BackOrders] ADD CONSTRAINT [FK_BackOrders_Goods] FOREIGN KEY ([GoodsId]) REFERENCES [dbo].[Goods] ([GoodsId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[BackOrders] ADD CONSTRAINT [FK_BackOrders_GoodsPacking] FOREIGN KEY ([GoodsPackingId]) REFERENCES [dbo].[GoodsPacking] ([GoodsPackingId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[BackOrders] ADD CONSTRAINT [FK_BackOrders_Retailers] FOREIGN KEY ([RetailerId]) REFERENCES [dbo].[Retailers] ([RetailerId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[BackOrders] ADD CONSTRAINT [FK_BackOrders_Users] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Batchs
-- ----------------------------
ALTER TABLE [dbo].[Batchs] ADD CONSTRAINT [FK_Batchs_Products] FOREIGN KEY ([GoodsId]) REFERENCES [dbo].[Goods] ([GoodsId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Batchs] ADD CONSTRAINT [FK_Batchs_Users] FOREIGN KEY ([CreateBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DisposalNoteDetails
-- ----------------------------
ALTER TABLE [dbo].[DisposalNoteDetails] ADD CONSTRAINT [FK_DisposalNoteDetails_DisposalNotes1] FOREIGN KEY ([DisposalNoteId]) REFERENCES [dbo].[DisposalNotes] ([DisposalNoteId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DisposalNoteDetails] ADD CONSTRAINT [FK_DisposalNoteDetails_Goods] FOREIGN KEY ([GoodsId]) REFERENCES [dbo].[Goods] ([GoodsId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DisposalNoteDetails] ADD CONSTRAINT [FK_DisposalNoteDetails_GoodsPacking] FOREIGN KEY ([GoodsPackingId]) REFERENCES [dbo].[GoodsPacking] ([GoodsPackingId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DisposalNotes
-- ----------------------------
ALTER TABLE [dbo].[DisposalNotes] ADD CONSTRAINT [FK_DisposalNotes_DisposalRequests1] FOREIGN KEY ([DisposalRequestId]) REFERENCES [dbo].[DisposalRequests] ([DisposalRequestId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DisposalNotes] ADD CONSTRAINT [FK_DisposalNotes_Users] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DisposalNotes] ADD CONSTRAINT [FK_DisposalNotes_Users1] FOREIGN KEY ([ApprovalBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DisposalRequestDetails
-- ----------------------------
ALTER TABLE [dbo].[DisposalRequestDetails] ADD CONSTRAINT [FK_DisposalRequestDetails_DisposalRequests1] FOREIGN KEY ([DisposalRequestId]) REFERENCES [dbo].[DisposalRequests] ([DisposalRequestId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DisposalRequestDetails] ADD CONSTRAINT [FK_DisposalRequestDetails_Goods] FOREIGN KEY ([GoodsId]) REFERENCES [dbo].[Goods] ([GoodsId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DisposalRequestDetails] ADD CONSTRAINT [FK_DisposalRequestDetails_GoodsPacking] FOREIGN KEY ([GoodsPackingId]) REFERENCES [dbo].[GoodsPacking] ([GoodsPackingId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DisposalRequests
-- ----------------------------
ALTER TABLE [dbo].[DisposalRequests] ADD CONSTRAINT [FK_DisposalRequests_Users] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DisposalRequests] ADD CONSTRAINT [FK_DisposalRequests_Users1] FOREIGN KEY ([ApprovalBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DisposalRequests] ADD CONSTRAINT [FK_DisposalRequests_Users2] FOREIGN KEY ([AssignTo]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Goods
-- ----------------------------
ALTER TABLE [dbo].[Goods] ADD CONSTRAINT [FK_Goods_UnitMeasures] FOREIGN KEY ([UnitMeasureId]) REFERENCES [dbo].[UnitMeasures] ([UnitMeasureId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Goods] ADD CONSTRAINT [FK_Products_Categories] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([CategoryId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Goods] ADD CONSTRAINT [FK_Products_StorageConditions] FOREIGN KEY ([StorageConditionId]) REFERENCES [dbo].[StorageConditions] ([StorageConditionId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Goods] ADD CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Suppliers] ([SupplierId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GoodsIssueNoteDetails
-- ----------------------------
ALTER TABLE [dbo].[GoodsIssueNoteDetails] ADD CONSTRAINT [FK_GoodsIssueNoteDetails_Goods] FOREIGN KEY ([GoodsId]) REFERENCES [dbo].[Goods] ([GoodsId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GoodsIssueNoteDetails] ADD CONSTRAINT [FK_GoodsIssueNoteDetails_GoodsIssueNotes] FOREIGN KEY ([GoodsIssueNoteId]) REFERENCES [dbo].[GoodsIssueNotes] ([GoodsIssueNoteId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GoodsIssueNoteDetails] ADD CONSTRAINT [FK_GoodsIssueNoteDetails_GoodsPacking] FOREIGN KEY ([GoodsPackingId]) REFERENCES [dbo].[GoodsPacking] ([GoodsPackingId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GoodsIssueNotes
-- ----------------------------
ALTER TABLE [dbo].[GoodsIssueNotes] ADD CONSTRAINT [FK_GoodsIssueNotes_SalesOrders] FOREIGN KEY ([SalesOderId]) REFERENCES [dbo].[SalesOrders] ([SalesOrderId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GoodsIssueNotes] ADD CONSTRAINT [FK_GoodsIssueNotes_Users] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GoodsIssueNotes] ADD CONSTRAINT [FK_GoodsIssueNotes_Users2] FOREIGN KEY ([ApprovalBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GoodsPacking
-- ----------------------------
ALTER TABLE [dbo].[GoodsPacking] ADD CONSTRAINT [FK_GoodsPacking_Goods] FOREIGN KEY ([GoodsId]) REFERENCES [dbo].[Goods] ([GoodsId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GoodsReceiptNoteDetails
-- ----------------------------
ALTER TABLE [dbo].[GoodsReceiptNoteDetails] ADD CONSTRAINT [FK_GoodsReceiptNoteDetails_Goods] FOREIGN KEY ([GoodsId]) REFERENCES [dbo].[Goods] ([GoodsId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GoodsReceiptNoteDetails] ADD CONSTRAINT [FK_GoodsReceiptNoteDetails_GoodsPacking] FOREIGN KEY ([GoodsPackingId]) REFERENCES [dbo].[GoodsPacking] ([GoodsPackingId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GoodsReceiptNoteDetails] ADD CONSTRAINT [FK_GoodsReceiptNoteDetails_GoodsReceiptNotes] FOREIGN KEY ([GoodsReceiptNoteId]) REFERENCES [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GoodsReceiptNotes
-- ----------------------------
ALTER TABLE [dbo].[GoodsReceiptNotes] ADD CONSTRAINT [FK_GoodsReceiptNotes_ApprovalBy] FOREIGN KEY ([ApprovalBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GoodsReceiptNotes] ADD CONSTRAINT [FK_GoodsReceiptNotes_PurchaseOrders] FOREIGN KEY ([PurchaseOderId]) REFERENCES [dbo].[PurchaseOrders] ([PurchaseOderId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GoodsReceiptNotes] ADD CONSTRAINT [FK_GoodsReceiptNotes_Users] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table InventoryLedger
-- ----------------------------
ALTER TABLE [dbo].[InventoryLedger] ADD CONSTRAINT [FK_InventoryLedger_Goods] FOREIGN KEY ([GoodsId]) REFERENCES [dbo].[Goods] ([GoodsId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[InventoryLedger] ADD CONSTRAINT [FK_InventoryLedger_GoodsPacking] FOREIGN KEY ([GoodPackingId]) REFERENCES [dbo].[GoodsPacking] ([GoodsPackingId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Locations
-- ----------------------------
ALTER TABLE [dbo].[Locations] ADD CONSTRAINT [FK_Locations_Areas] FOREIGN KEY ([AreaId]) REFERENCES [dbo].[Areas] ([AreaId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Notifications
-- ----------------------------
ALTER TABLE [dbo].[Notifications] ADD CONSTRAINT [FK_Notifications_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Pallets
-- ----------------------------
ALTER TABLE [dbo].[Pallets] ADD CONSTRAINT [FK_Pallets_Locations] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Locations] ([LocationId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Pallets] ADD CONSTRAINT [FK_Pallets_Batchs] FOREIGN KEY ([BatchId]) REFERENCES [dbo].[Batchs] ([BatchId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Pallets] ADD CONSTRAINT [FK_Pallets_GoodsPacking] FOREIGN KEY ([GoodsPackingId]) REFERENCES [dbo].[GoodsPacking] ([GoodsPackingId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Pallets] ADD CONSTRAINT [FK_Pallets_GoodsReceiptNotes] FOREIGN KEY ([GoodsReceiptNoteId]) REFERENCES [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Pallets] ADD CONSTRAINT [FK_Pallets_Users] FOREIGN KEY ([CreateBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PickAllocation
-- ----------------------------
ALTER TABLE [dbo].[PickAllocation] ADD CONSTRAINT [FK_PickAllocation_DisposalNoteDetails] FOREIGN KEY ([DisposalNoteDetailId]) REFERENCES [dbo].[DisposalNoteDetails] ([DisposalNoteDetailId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PickAllocation] ADD CONSTRAINT [FK_PickAllocation_GoodsIssueNoteDetails] FOREIGN KEY ([GoodsIssueNoteDetailId]) REFERENCES [dbo].[GoodsIssueNoteDetails] ([GoodsIssueNoteDetailId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PickAllocation] ADD CONSTRAINT [FK_PickAllocation_Pallets] FOREIGN KEY ([PalletId]) REFERENCES [dbo].[Pallets] ([PalletId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PurchaseOderDetails
-- ----------------------------
ALTER TABLE [dbo].[PurchaseOderDetails] ADD CONSTRAINT [FK_ImportOderDetails_ImportOrders] FOREIGN KEY ([PurchaseOderId]) REFERENCES [dbo].[PurchaseOrders] ([PurchaseOderId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PurchaseOderDetails] ADD CONSTRAINT [FK_ImportOderDetails_Products] FOREIGN KEY ([GoodsId]) REFERENCES [dbo].[Goods] ([GoodsId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PurchaseOderDetails] ADD CONSTRAINT [FK_PurchaseOderDetails_GoodsPacking] FOREIGN KEY ([GoodsPackingId]) REFERENCES [dbo].[GoodsPacking] ([GoodsPackingId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PurchaseOrders
-- ----------------------------
ALTER TABLE [dbo].[PurchaseOrders] ADD CONSTRAINT [FK_ImportOrders_Suppliers] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Suppliers] ([SupplierId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PurchaseOrders] ADD CONSTRAINT [FK_PurchaseOrders_Users_ApprovalBy] FOREIGN KEY ([ApprovalBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PurchaseOrders] ADD CONSTRAINT [FK_PurchaseOrders_Users_ArrivalConfirmedBy] FOREIGN KEY ([ArrivalConfirmedBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PurchaseOrders] ADD CONSTRAINT [FK_PurchaseOrders_Users_AssignTo] FOREIGN KEY ([AssignTo]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PurchaseOrders] ADD CONSTRAINT [FK_PurchaseOrders_Users_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RefreshToken
-- ----------------------------
ALTER TABLE [dbo].[RefreshToken] ADD CONSTRAINT [FK_RefreshToken_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table SalesOrderDetails
-- ----------------------------
ALTER TABLE [dbo].[SalesOrderDetails] ADD CONSTRAINT [FK_ExportOrderDetails_Products] FOREIGN KEY ([GoodsId]) REFERENCES [dbo].[Goods] ([GoodsId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[SalesOrderDetails] ADD CONSTRAINT [FK_SalesOrderDetails_GoodsPacking] FOREIGN KEY ([GoodsPackingId]) REFERENCES [dbo].[GoodsPacking] ([GoodsPackingId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[SalesOrderDetails] ADD CONSTRAINT [FK_SalesOrderDetails_SalesOrders] FOREIGN KEY ([SalesOrderId]) REFERENCES [dbo].[SalesOrders] ([SalesOrderId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table SalesOrders
-- ----------------------------
ALTER TABLE [dbo].[SalesOrders] ADD CONSTRAINT [FK_ExportOrders_Retailers] FOREIGN KEY ([RetailerId]) REFERENCES [dbo].[Retailers] ([RetailerId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[SalesOrders] ADD CONSTRAINT [FK_SalesOrders_Users] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[SalesOrders] ADD CONSTRAINT [FK_SalesOrders_Users1] FOREIGN KEY ([ApprovalBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[SalesOrders] ADD CONSTRAINT [FK_SalesOrders_Users2] FOREIGN KEY ([AcknowledgedBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[SalesOrders] ADD CONSTRAINT [FK_SalesOrders_Users3] FOREIGN KEY ([AssignTo]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table StocktakingAreas
-- ----------------------------
ALTER TABLE [dbo].[StocktakingAreas] ADD CONSTRAINT [FK_StocktakingAreas_Areas] FOREIGN KEY ([AreaId]) REFERENCES [dbo].[Areas] ([AreaId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[StocktakingAreas] ADD CONSTRAINT [FK_StocktakingAreas_StocktakingSheets] FOREIGN KEY ([StocktakingSheetId]) REFERENCES [dbo].[StocktakingSheets] ([StocktakingSheetId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[StocktakingAreas] ADD CONSTRAINT [FK_StocktakingAreas_Users] FOREIGN KEY ([AssignTo]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table StocktakingLocation
-- ----------------------------
ALTER TABLE [dbo].[StocktakingLocation] ADD CONSTRAINT [FK_StocktakingLocation_Locations] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Locations] ([LocationId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[StocktakingLocation] ADD CONSTRAINT [FK_StocktakingLocation_StocktakingAreas] FOREIGN KEY ([StocktakingAreaId]) REFERENCES [dbo].[StocktakingAreas] ([StocktakingAreaId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table StocktakingPallet
-- ----------------------------
ALTER TABLE [dbo].[StocktakingPallet] ADD CONSTRAINT [FK_StocktakingPallet_Pallets] FOREIGN KEY ([PalletId]) REFERENCES [dbo].[Pallets] ([PalletId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[StocktakingPallet] ADD CONSTRAINT [FK_StocktakingPallet_StocktakingLocation] FOREIGN KEY ([StocktakingLocationId]) REFERENCES [dbo].[StocktakingLocation] ([StocktakingLocationId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table StocktakingSheets
-- ----------------------------
ALTER TABLE [dbo].[StocktakingSheets] ADD CONSTRAINT [FK_StocktakingSheets_Users] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table UserRole
-- ----------------------------
ALTER TABLE [dbo].[UserRole] ADD CONSTRAINT [FK_UserRole_Role] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([RoleId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[UserRole] ADD CONSTRAINT [FK_UserRole_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

