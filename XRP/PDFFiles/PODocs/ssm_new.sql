USE [ssm_new]
GO
/****** Object:  UserDefinedTableType [dbo].[ssmUT_TermsNCondtion]    Script Date: 05/07/2018 16:08:28 ******/
CREATE TYPE [dbo].[ssmUT_TermsNCondtion] AS TABLE(
	[TermsNConditionID] [bigint] NOT NULL,
	[TermsNConditionContent] [varchar](max) NOT NULL
)
GO
/****** Object:  Table [dbo].[ssmtbl_WorkOrderDetails]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_WorkOrderDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[WorkOrderNo] [varchar](max) NULL,
	[PoNo] [varchar](max) NULL,
	[OperationId] [int] NULL,
	[Shift] [varchar](50) NULL,
	[OPDate] [datetime] NULL,
	[ActualQnty] [float] NULL,
	[Comment] [varchar](max) NULL,
	[CreatedBy] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[StatusTime] [int] NULL,
 CONSTRAINT [PK_ssmtbl_WorkOrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_WorkOrderDetails] ON
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (1, N'WO-00001', N'001', 1, NULL, CAST(0x0000A7A300FC26CA AS DateTime), 400, NULL, N'admin', CAST(0x0000A7A300FC26CA AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (2, N'WO-00001', N'001', 2, NULL, CAST(0x0000A7A300FC26CB AS DateTime), 200, NULL, N'admin', CAST(0x0000A7A300FC26CB AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (3, N'WO-00001', N'001', 3, NULL, CAST(0x0000A7A300FC26CC AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC26CC AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (4, N'WO-00001', N'001', 4, NULL, CAST(0x0000A7A300FC26CD AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC26CD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (5, N'WO-00001', N'001', 5, NULL, CAST(0x0000A7A300FC26CD AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC26CD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (6, N'WO-00001', N'001', 13, NULL, CAST(0x0000A7A300FC26CE AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC26CE AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (7, N'WO-00001', N'001', 14, NULL, CAST(0x0000A7A300FC26CF AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC26CF AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (8, N'WO-00001', N'001', 15, NULL, CAST(0x0000A7A300FC26D0 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC26D0 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (9, N'WO-00001', N'001', 100, NULL, CAST(0x0000A7A300FC26D0 AS DateTime), 2, NULL, N'admin', CAST(0x0000A7A300FC26D0 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (10, N'WO-00001', N'001', 101, NULL, CAST(0x0000A7A300FC26D1 AS DateTime), 3, NULL, N'admin', CAST(0x0000A7A300FC26D1 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (11, N'WO-00001', N'001', 102, NULL, CAST(0x0000A7A300FC26D2 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC26D2 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (12, N'WO-00001', N'001', 1, NULL, CAST(0x0000A7A300FC45C5 AS DateTime), 100, NULL, N'admin', CAST(0x0000A7A300FC45C5 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (13, N'WO-00001', N'001', 2, NULL, CAST(0x0000A7A300FC45C6 AS DateTime), 200, NULL, N'admin', CAST(0x0000A7A300FC45C6 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (14, N'WO-00001', N'001', 3, NULL, CAST(0x0000A7A300FC45C6 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC45C6 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (15, N'WO-00001', N'001', 4, NULL, CAST(0x0000A7A300FC45C7 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC45C7 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (16, N'WO-00001', N'001', 5, NULL, CAST(0x0000A7A300FC45C7 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC45C7 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (17, N'WO-00001', N'001', 13, NULL, CAST(0x0000A7A300FC45C8 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC45C8 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (18, N'WO-00001', N'001', 14, NULL, CAST(0x0000A7A300FC45C8 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC45C8 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (19, N'WO-00001', N'001', 15, NULL, CAST(0x0000A7A300FC45C9 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A300FC45C9 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (20, N'WO-00001', N'001', 100, NULL, CAST(0x0000A7A300FC45C9 AS DateTime), 2, NULL, N'admin', CAST(0x0000A7A300FC45C9 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (21, N'WO-00001', N'001', 101, NULL, CAST(0x0000A7A300FC45CA AS DateTime), 2, NULL, N'admin', CAST(0x0000A7A300FC45CA AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (22, N'WO-00001', N'001', 102, NULL, CAST(0x0000A7A300FC45CA AS DateTime), 200, NULL, N'admin', CAST(0x0000A7A300FC45CA AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (23, N'WO-00002', N'12', 1, NULL, CAST(0x0000A7A6011AC26C AS DateTime), 500, NULL, N'admin', CAST(0x0000A7A6011AC26C AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (24, N'WO-00002', N'12', 2, NULL, CAST(0x0000A7A6011AC26D AS DateTime), 400, NULL, N'admin', CAST(0x0000A7A6011AC26D AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (25, N'WO-00002', N'12', 3, NULL, CAST(0x0000A7A6011AC26D AS DateTime), 200, NULL, N'admin', CAST(0x0000A7A6011AC26D AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (26, N'WO-00002', N'12', 4, NULL, CAST(0x0000A7A6011AC26E AS DateTime), 200, NULL, N'admin', CAST(0x0000A7A6011AC26E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (27, N'WO-00002', N'12', 5, NULL, CAST(0x0000A7A6011AC26F AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A6011AC26F AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (28, N'WO-00002', N'12', 13, NULL, CAST(0x0000A7A6011AC270 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A6011AC270 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (29, N'WO-00002', N'12', 14, NULL, CAST(0x0000A7A6011AC270 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A6011AC270 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (30, N'WO-00002', N'12', 15, NULL, CAST(0x0000A7A6011AC271 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A6011AC271 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (31, N'WO-00002', N'12', 100, NULL, CAST(0x0000A7A6011AC272 AS DateTime), 1, NULL, N'admin', CAST(0x0000A7A6011AC272 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (32, N'WO-00002', N'12', 101, NULL, CAST(0x0000A7A6011AC273 AS DateTime), 1, NULL, N'admin', CAST(0x0000A7A6011AC273 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (33, N'WO-00002', N'12', 102, NULL, CAST(0x0000A7A6011AC273 AS DateTime), 0, NULL, N'admin', CAST(0x0000A7A6011AC273 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (34, N'WO-00011', N'15963', 1, NULL, CAST(0x0000A852012043A2 AS DateTime), 100, NULL, N'admin', CAST(0x0000A852012043A2 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (35, N'WO-00011', N'15963', 2, NULL, CAST(0x0000A852012043BE AS DateTime), 90, NULL, N'admin', CAST(0x0000A852012043BE AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (36, N'WO-00011', N'15963', 3, NULL, CAST(0x0000A852012043CA AS DateTime), 90, NULL, N'admin', CAST(0x0000A852012043CA AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (37, N'WO-00011', N'15963', 4, NULL, CAST(0x0000A852012043D3 AS DateTime), 0, NULL, N'admin', CAST(0x0000A852012043D3 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (38, N'WO-00011', N'15963', 5, NULL, CAST(0x0000A852012043DB AS DateTime), 0, NULL, N'admin', CAST(0x0000A852012043DB AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (39, N'WO-00011', N'15963', 13, NULL, CAST(0x0000A852012043E7 AS DateTime), 0, NULL, N'admin', CAST(0x0000A852012043E7 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (40, N'WO-00011', N'15963', 14, NULL, CAST(0x0000A852012043F0 AS DateTime), 0, NULL, N'admin', CAST(0x0000A852012043F0 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (41, N'WO-00011', N'15963', 15, NULL, CAST(0x0000A85201204401 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85201204401 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (42, N'WO-00011', N'15963', 100, NULL, CAST(0x0000A8520120440C AS DateTime), 10, NULL, N'admin', CAST(0x0000A8520120440C AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (43, N'WO-00011', N'15963', 101, NULL, CAST(0x0000A85201204414 AS DateTime), 10, NULL, N'admin', CAST(0x0000A85201204414 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (44, N'WO-00011', N'15963', 102, NULL, CAST(0x0000A8520120441D AS DateTime), 90, NULL, N'admin', CAST(0x0000A8520120441D AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (45, N'WO-00010', N'15963', 1, NULL, CAST(0x0000A85400C6979A AS DateTime), 250, NULL, N'admin', CAST(0x0000A85400C6979A AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (46, N'WO-00010', N'15963', 2, NULL, CAST(0x0000A85400C697A2 AS DateTime), 200, NULL, N'admin', CAST(0x0000A85400C697A2 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (47, N'WO-00010', N'15963', 3, NULL, CAST(0x0000A85400C697AA AS DateTime), 125, NULL, N'admin', CAST(0x0000A85400C697AA AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (48, N'WO-00010', N'15963', 4, NULL, CAST(0x0000A85400C697B1 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400C697B1 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (49, N'WO-00010', N'15963', 5, NULL, CAST(0x0000A85400C697B8 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400C697B8 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (50, N'WO-00010', N'15963', 13, NULL, CAST(0x0000A85400C697BF AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400C697BF AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (51, N'WO-00010', N'15963', 14, NULL, CAST(0x0000A85400C697C7 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400C697C7 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (52, N'WO-00010', N'15963', 15, NULL, CAST(0x0000A85400C697CE AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400C697CE AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (53, N'WO-00010', N'15963', 100, NULL, CAST(0x0000A85400C697D5 AS DateTime), 100, NULL, N'admin', CAST(0x0000A85400C697D5 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (54, N'WO-00010', N'15963', 101, NULL, CAST(0x0000A85400C697DD AS DateTime), 100, NULL, N'admin', CAST(0x0000A85400C697DD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (55, N'WO-00010', N'15963', 102, NULL, CAST(0x0000A85400C697E6 AS DateTime), 100, NULL, N'admin', CAST(0x0000A85400C697E6 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (56, N'WO-00011', N'15963', 1, NULL, CAST(0x0000A85400CA08D6 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA08D6 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (57, N'WO-00011', N'15963', 2, NULL, CAST(0x0000A85400CA08DD AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA08DD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (58, N'WO-00011', N'15963', 3, NULL, CAST(0x0000A85400CA08E6 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA08E6 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (59, N'WO-00011', N'15963', 4, NULL, CAST(0x0000A85400CA08ED AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA08ED AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (60, N'WO-00011', N'15963', 5, NULL, CAST(0x0000A85400CA08F5 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA08F5 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (61, N'WO-00011', N'15963', 13, NULL, CAST(0x0000A85400CA08FD AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA08FD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (62, N'WO-00011', N'15963', 14, NULL, CAST(0x0000A85400CA0904 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA0904 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (63, N'WO-00011', N'15963', 15, NULL, CAST(0x0000A85400CA090C AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA090C AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (64, N'WO-00011', N'15963', 100, NULL, CAST(0x0000A85400CA0913 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA0913 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (65, N'WO-00011', N'15963', 101, NULL, CAST(0x0000A85400CA091B AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA091B AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (66, N'WO-00011', N'15963', 102, NULL, CAST(0x0000A85400CA0923 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA0923 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (67, N'WO-00011', N'15963', 1, NULL, CAST(0x0000A85400CA2C8A AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA2C8A AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (68, N'WO-00011', N'15963', 2, NULL, CAST(0x0000A85400CA3259 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA3259 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (69, N'WO-00011', N'15963', 3, NULL, CAST(0x0000A85400CA4055 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA4055 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (70, N'WO-00011', N'15963', 4, NULL, CAST(0x0000A85400CA4210 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA4210 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (71, N'WO-00011', N'15963', 5, NULL, CAST(0x0000A85400CA42EF AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA42EF AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (72, N'WO-00011', N'15963', 13, NULL, CAST(0x0000A85400CA43AB AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA43AB AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (73, N'WO-00011', N'15963', 14, NULL, CAST(0x0000A85400CA4444 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA4444 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (74, N'WO-00011', N'15963', 15, NULL, CAST(0x0000A85400CA44F0 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA44F0 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (75, N'WO-00011', N'15963', 100, NULL, CAST(0x0000A85400CA4585 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA4585 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (76, N'WO-00011', N'15963', 101, NULL, CAST(0x0000A85400CA4629 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA4629 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (77, N'WO-00011', N'15963', 102, NULL, CAST(0x0000A85400CA46DD AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400CA46DD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (78, N'WO-00009', N'001', 1, NULL, CAST(0x0000A85400D64322 AS DateTime), 500, NULL, N'admin', CAST(0x0000A85400D64322 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (79, N'WO-00009', N'001', 2, NULL, CAST(0x0000A85400D64329 AS DateTime), 250, NULL, N'admin', CAST(0x0000A85400D64329 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (80, N'WO-00009', N'001', 3, NULL, CAST(0x0000A85400D64331 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400D64331 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (81, N'WO-00009', N'001', 4, NULL, CAST(0x0000A85400D64337 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400D64337 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (82, N'WO-00009', N'001', 5, NULL, CAST(0x0000A85400D64340 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400D64340 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (83, N'WO-00009', N'001', 13, NULL, CAST(0x0000A85400D64348 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400D64348 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (84, N'WO-00009', N'001', 14, NULL, CAST(0x0000A85400D6434F AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400D6434F AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (85, N'WO-00009', N'001', 15, NULL, CAST(0x0000A85400D64356 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85400D64356 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (86, N'WO-00009', N'001', 100, NULL, CAST(0x0000A85400D64360 AS DateTime), 100, NULL, N'admin', CAST(0x0000A85400D64360 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (87, N'WO-00009', N'001', 101, NULL, CAST(0x0000A85400D64367 AS DateTime), 100, NULL, N'admin', CAST(0x0000A85400D64367 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (88, N'WO-00009', N'001', 102, NULL, CAST(0x0000A85400D6436E AS DateTime), 100, NULL, N'admin', CAST(0x0000A85400D6436E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (89, N'WO-00005', N'15963', 1, NULL, CAST(0x0000A85500B4E66D AS DateTime), 250, NULL, N'admin', CAST(0x0000A85500B4E66D AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (90, N'WO-00005', N'15963', 2, NULL, CAST(0x0000A85500B4E67B AS DateTime), 250, NULL, N'admin', CAST(0x0000A85500B4E67B AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (91, N'WO-00005', N'15963', 3, NULL, CAST(0x0000A85500B4E683 AS DateTime), 250, NULL, N'admin', CAST(0x0000A85500B4E683 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (92, N'WO-00005', N'15963', 4, NULL, CAST(0x0000A85500B4E68C AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B4E68C AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (93, N'WO-00005', N'15963', 5, NULL, CAST(0x0000A85500B4E697 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B4E697 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (94, N'WO-00005', N'15963', 13, NULL, CAST(0x0000A85500B4E6A6 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B4E6A6 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (95, N'WO-00005', N'15963', 14, NULL, CAST(0x0000A85500B4E6AF AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B4E6AF AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (96, N'WO-00005', N'15963', 15, NULL, CAST(0x0000A85500B4E6B7 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B4E6B7 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (97, N'WO-00005', N'15963', 100, NULL, CAST(0x0000A85500B4E6C8 AS DateTime), 260, NULL, N'admin', CAST(0x0000A85500B4E6C8 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (98, N'WO-00005', N'15963', 101, NULL, CAST(0x0000A85500B4E6D2 AS DateTime), 270, NULL, N'admin', CAST(0x0000A85500B4E6D2 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (99, N'WO-00005', N'15963', 102, NULL, CAST(0x0000A85500B4E6D9 AS DateTime), 100, NULL, N'admin', CAST(0x0000A85500B4E6D9 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (100, N'WO-00004', N'15963', 1, NULL, CAST(0x0000A85500B5DF77 AS DateTime), 400, NULL, N'admin', CAST(0x0000A85500B5DF77 AS DateTime), NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (101, N'WO-00004', N'15963', 2, NULL, CAST(0x0000A85500B5DF7E AS DateTime), 400, NULL, N'admin', CAST(0x0000A85500B5DF7E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (102, N'WO-00004', N'15963', 3, NULL, CAST(0x0000A85500B5DF8B AS DateTime), 350, NULL, N'admin', CAST(0x0000A85500B5DF8B AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (103, N'WO-00004', N'15963', 4, NULL, CAST(0x0000A85500B5DF99 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B5DF99 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (104, N'WO-00004', N'15963', 5, NULL, CAST(0x0000A85500B5DFA6 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B5DFA6 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (105, N'WO-00004', N'15963', 13, NULL, CAST(0x0000A85500B5DFAF AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B5DFAF AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (106, N'WO-00004', N'15963', 14, NULL, CAST(0x0000A85500B5DFC0 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B5DFC0 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (107, N'WO-00004', N'15963', 15, NULL, CAST(0x0000A85500B5DFC8 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B5DFC8 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (108, N'WO-00004', N'15963', 100, NULL, CAST(0x0000A85500B5DFCF AS DateTime), 350, NULL, N'admin', CAST(0x0000A85500B5DFCF AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (109, N'WO-00004', N'15963', 101, NULL, CAST(0x0000A85500B5DFD9 AS DateTime), 350, NULL, N'admin', CAST(0x0000A85500B5DFD9 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (110, N'WO-00004', N'15963', 102, NULL, CAST(0x0000A85500B5DFE0 AS DateTime), 300, NULL, N'admin', CAST(0x0000A85500B5DFE0 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (111, N'WO-00003', N'15963', 1, NULL, CAST(0x0000A85500B6ABA5 AS DateTime), 100, NULL, N'admin', CAST(0x0000A85500B6ABA5 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (112, N'WO-00003', N'15963', 2, NULL, CAST(0x0000A85500B6ABAC AS DateTime), 100, NULL, N'admin', CAST(0x0000A85500B6ABAC AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (113, N'WO-00003', N'15963', 3, NULL, CAST(0x0000A85500B6ABB3 AS DateTime), 90, NULL, N'admin', CAST(0x0000A85500B6ABB3 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (114, N'WO-00003', N'15963', 4, NULL, CAST(0x0000A85500B6ABBC AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B6ABBC AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (115, N'WO-00003', N'15963', 5, NULL, CAST(0x0000A85500B6ABC4 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B6ABC4 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (116, N'WO-00003', N'15963', 13, NULL, CAST(0x0000A85500B6ABCC AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B6ABCC AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (117, N'WO-00003', N'15963', 14, NULL, CAST(0x0000A85500B6ABD5 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B6ABD5 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (118, N'WO-00003', N'15963', 15, NULL, CAST(0x0000A85500B6ABDD AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500B6ABDD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (119, N'WO-00003', N'15963', 100, NULL, CAST(0x0000A85500B6ABE4 AS DateTime), 90, NULL, N'admin', CAST(0x0000A85500B6ABE4 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (120, N'WO-00003', N'15963', 101, NULL, CAST(0x0000A85500B6ABEB AS DateTime), 90, NULL, N'admin', CAST(0x0000A85500B6ABEB AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (121, N'WO-00003', N'15963', 102, NULL, CAST(0x0000A85500B6ABF3 AS DateTime), 90, NULL, N'admin', CAST(0x0000A85500B6ABF3 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (122, N'WO-00008', N'15963', 1, NULL, CAST(0x0000A85500FFB7F3 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500FFB7F3 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (123, N'WO-00008', N'15963', 2, NULL, CAST(0x0000A85500FFB802 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500FFB802 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (124, N'WO-00008', N'15963', 3, NULL, CAST(0x0000A85500FFB80D AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500FFB80D AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (125, N'WO-00008', N'15963', 4, NULL, CAST(0x0000A85500FFB816 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500FFB816 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (126, N'WO-00008', N'15963', 5, NULL, CAST(0x0000A85500FFB824 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500FFB824 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (127, N'WO-00008', N'15963', 13, NULL, CAST(0x0000A85500FFB82C AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500FFB82C AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (128, N'WO-00008', N'15963', 14, NULL, CAST(0x0000A85500FFB837 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500FFB837 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (129, N'WO-00008', N'15963', 15, NULL, CAST(0x0000A85500FFB83E AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500FFB83E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (130, N'WO-00008', N'15963', 100, NULL, CAST(0x0000A85500FFB848 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500FFB848 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (131, N'WO-00008', N'15963', 101, NULL, CAST(0x0000A85500FFB850 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500FFB850 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (132, N'WO-00008', N'15963', 102, NULL, CAST(0x0000A85500FFB858 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85500FFB858 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (133, N'WO-00006', N'001', 1, NULL, CAST(0x0000A85501022079 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85501022079 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (134, N'WO-00006', N'001', 2, NULL, CAST(0x0000A85501022081 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85501022081 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (135, N'WO-00006', N'001', 3, NULL, CAST(0x0000A8550102208B AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102208B AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (136, N'WO-00006', N'001', 4, NULL, CAST(0x0000A85501022097 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85501022097 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (137, N'WO-00006', N'001', 5, NULL, CAST(0x0000A855010220A7 AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010220A7 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (138, N'WO-00006', N'001', 13, NULL, CAST(0x0000A855010220BC AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010220BC AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (139, N'WO-00006', N'001', 14, NULL, CAST(0x0000A855010220CB AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010220CB AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (140, N'WO-00006', N'001', 15, NULL, CAST(0x0000A855010220D4 AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010220D4 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (141, N'WO-00006', N'001', 100, NULL, CAST(0x0000A855010220E0 AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010220E0 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (142, N'WO-00006', N'001', 101, NULL, CAST(0x0000A855010220EE AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010220EE AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (143, N'WO-00006', N'001', 102, NULL, CAST(0x0000A855010220F7 AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010220F7 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (144, N'WO-00006', N'001', 1, NULL, CAST(0x0000A8550102339A AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102339A AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (145, N'WO-00006', N'001', 2, NULL, CAST(0x0000A855010233C8 AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010233C8 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (146, N'WO-00006', N'001', 3, NULL, CAST(0x0000A855010233CF AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010233CF AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (147, N'WO-00006', N'001', 4, NULL, CAST(0x0000A855010233D6 AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010233D6 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (148, N'WO-00006', N'001', 5, NULL, CAST(0x0000A855010233DE AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010233DE AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (149, N'WO-00006', N'001', 13, NULL, CAST(0x0000A855010233ED AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010233ED AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (150, N'WO-00006', N'001', 14, NULL, CAST(0x0000A855010233FB AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010233FB AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (151, N'WO-00006', N'001', 15, NULL, CAST(0x0000A85501023441 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85501023441 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (152, N'WO-00006', N'001', 100, NULL, CAST(0x0000A85501023458 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85501023458 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (153, N'WO-00006', N'001', 101, NULL, CAST(0x0000A85501023460 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85501023460 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (154, N'WO-00006', N'001', 102, NULL, CAST(0x0000A8550102346E AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102346E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (155, N'WO-00006', N'001', 1, NULL, CAST(0x0000A8550102603E AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102603E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (156, N'WO-00006', N'001', 2, NULL, CAST(0x0000A8550102605D AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102605D AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (157, N'WO-00006', N'001', 3, NULL, CAST(0x0000A8550102606E AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102606E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (158, N'WO-00006', N'001', 4, NULL, CAST(0x0000A85501026076 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85501026076 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (159, N'WO-00006', N'001', 5, NULL, CAST(0x0000A8550102607E AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102607E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (160, N'WO-00006', N'001', 13, NULL, CAST(0x0000A85501026086 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85501026086 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (161, N'WO-00006', N'001', 14, NULL, CAST(0x0000A85501026091 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85501026091 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (162, N'WO-00006', N'001', 15, NULL, CAST(0x0000A8550102609D AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102609D AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (163, N'WO-00006', N'001', 100, NULL, CAST(0x0000A855010260A5 AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010260A5 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (164, N'WO-00006', N'001', 101, NULL, CAST(0x0000A855010260B9 AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010260B9 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (165, N'WO-00006', N'001', 102, NULL, CAST(0x0000A855010260C4 AS DateTime), 0, NULL, N'admin', CAST(0x0000A855010260C4 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (166, N'WO-00009', N'001', 1, NULL, CAST(0x0000A8550102B54D AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102B54D AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (167, N'WO-00009', N'001', 2, NULL, CAST(0x0000A8550102B556 AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102B556 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (168, N'WO-00009', N'001', 3, NULL, CAST(0x0000A8550102B55F AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102B55F AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (169, N'WO-00009', N'001', 4, NULL, CAST(0x0000A8550102B568 AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102B568 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (170, N'WO-00009', N'001', 5, NULL, CAST(0x0000A8550102B571 AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102B571 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (171, N'WO-00009', N'001', 13, NULL, CAST(0x0000A8550102B57A AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102B57A AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (172, N'WO-00009', N'001', 14, NULL, CAST(0x0000A8550102B583 AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102B583 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (173, N'WO-00009', N'001', 15, NULL, CAST(0x0000A8550102B58C AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102B58C AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (174, N'WO-00009', N'001', 100, NULL, CAST(0x0000A8550102B595 AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102B595 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (175, N'WO-00009', N'001', 101, NULL, CAST(0x0000A8550102B59F AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102B59F AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (176, N'WO-00009', N'001', 102, NULL, CAST(0x0000A8550102B5A8 AS DateTime), 0, NULL, N'admin', CAST(0x0000A8550102B5A8 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (177, N'WO-00012', N'12345', 1, NULL, CAST(0x0000A8590102694E AS DateTime), 12, NULL, N'admin', CAST(0x0000A8590102694E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (178, N'WO-00012', N'12345', 2, NULL, CAST(0x0000A85901026951 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85901026951 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (179, N'WO-00012', N'12345', 3, NULL, CAST(0x0000A85901026954 AS DateTime), 10, NULL, N'admin', CAST(0x0000A85901026954 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (180, N'WO-00012', N'12345', 4, NULL, CAST(0x0000A85901026957 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85901026957 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (181, N'WO-00012', N'12345', 5, NULL, CAST(0x0000A85901026959 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85901026959 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (182, N'WO-00012', N'12345', 13, NULL, CAST(0x0000A8590102695C AS DateTime), 0, NULL, N'admin', CAST(0x0000A8590102695C AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (183, N'WO-00012', N'12345', 14, NULL, CAST(0x0000A8590102695E AS DateTime), 0, NULL, N'admin', CAST(0x0000A8590102695E AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (184, N'WO-00012', N'12345', 15, NULL, CAST(0x0000A85901026960 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85901026960 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (185, N'WO-00012', N'12345', 100, NULL, CAST(0x0000A85901026963 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85901026963 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (186, N'WO-00012', N'12345', 101, NULL, CAST(0x0000A85901026966 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85901026966 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_WorkOrderDetails] ([ID], [WorkOrderNo], [PoNo], [OperationId], [Shift], [OPDate], [ActualQnty], [Comment], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StatusTime]) VALUES (187, N'WO-00012', N'12345', 102, NULL, CAST(0x0000A85901026968 AS DateTime), 0, NULL, N'admin', CAST(0x0000A85901026968 AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ssmtbl_WorkOrderDetails] OFF
/****** Object:  Table [dbo].[ssmtbl_WorkOrder]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_WorkOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WorkorderNo] [varchar](max) NULL,
	[HeatCode] [varchar](max) NULL,
	[DateOfIssue] [datetime] NULL,
	[TargetDate] [datetime] NULL,
	[CutWeight] [varchar](max) NULL,
	[ColorCode] [varchar](max) NULL,
	[PoNo] [varchar](max) NULL,
	[CustomerName] [varchar](max) NULL,
	[AllocatedRMQty] [float] NULL,
	[Status] [bigint] NULL,
	[AllocatedRM] [float] NULL,
	[AllocatedSection] [varchar](max) NULL,
	[PoRM] [varchar](max) NULL,
	[PoSection] [varchar](max) NULL,
	[ProductionUnit] [varchar](max) NULL,
	[BalancedRMQty] [varchar](max) NULL,
	[DieStatus] [int] NULL,
 CONSTRAINT [PK__WorkOrde__3214EC27014935CB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_WorkOrder] ON
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (1, N'WO-00001', N'1002', CAST(0x0000A85F00000000 AS DateTime), CAST(0x0000A87900000000 AS DateTime), N'5', N'white', N'5236', N'Alfa Laval India', 275, 602, NULL, NULL, N'En8D', N'90 RCS', N'4', N'270', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (2, N'WO-00002', N'1006', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A87900000000 AS DateTime), N'5', N'Yellow', N'PO2', N'SONAWANE ENTERPRISES', 500, 602, NULL, NULL, N'20MnCr5', N'60 Dia', N'3', N'415', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (3, N'WO-00003', N'1002', CAST(0x0000A86400000000 AS DateTime), CAST(0x0000A87900000000 AS DateTime), N'13.3', N'White', N'PO3', N'Ambota Steel Sales', 455, 602, NULL, NULL, N'En8D', N'60 Dia', N'4', N'455', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (4, N'WO-00004', N'1001', CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A87900000000 AS DateTime), N'10', N'White', N'PO4', N'AKAR TTOLS LTD UNIT II', 810, 601, NULL, NULL, N'En8D', N'75 Dia', N'1', N'810', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (5, N'WO-PO4-00005', N'1006', CAST(0x0000A86700000000 AS DateTime), CAST(0x0000A87900000000 AS DateTime), N'10', N'White', N'PO4', N'Ambota Steel Sales', 560, 603, NULL, NULL, N'20MnCr5', N'75 Dia', N'3', N'560', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (6, N'WO-PO1-00001', N'1001', CAST(0x0000A86700000000 AS DateTime), CAST(0x0000A86700000000 AS DateTime), N'10', N'White', N'PO1', N'Ambota Steel Sales', 510, 602, NULL, NULL, N'En8D', N'65 Dia', N'1', N'495', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (7, N'WO-PO2-00002', N'1002', CAST(0x0000A86700000000 AS DateTime), CAST(0x0000A87900000000 AS DateTime), N'10', N'White', N'PO2', N'KOHINOOR INDUSTRIES', 250, 604, NULL, NULL, N'20MnCr5', N'65 Dia', N'4', N'250', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (8, N'WO-PO4-00003', N'1009', CAST(0x0000A86700000000 AS DateTime), CAST(0x0000A88300000000 AS DateTime), N'10', N'White', N'PO4', N'Crane Process Flow', 200, 602, NULL, NULL, N'En8D', N'65 Dia', N'1', N'195', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (9, N'WO-PO6-00004', N'1009', CAST(0x0000A86700000000 AS DateTime), CAST(0x0000A88300000000 AS DateTime), N'10', N'White', N'PO6', N'TRINITY INDIA FORGE TECH PVT.LTD', 150, 602, NULL, NULL, N'En8D', N'65 Dia', N'1', N'140', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (10, N'WO-PO7-00005', N'1009', CAST(0x0000A86900000000 AS DateTime), CAST(0x0000A88300000000 AS DateTime), N'10', N'White', N'PO7', N'S.R.AUTO PARTS.', 220, 602, 0, NULL, N'ST 52.3 ', N'65 Dia', N'1', N'215', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (11, N'WO-PO8-00006', N'1006', CAST(0x0000A86B00000000 AS DateTime), CAST(0x0000A86B00000000 AS DateTime), N'10', N'White', N'PO8', N'Mahindra Gears & Transmissions Pvt Ltd', 420, 601, 0, NULL, N'ST 52.3 ', N'90 RCS', N'3', N'410', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (12, N'WO-PO1-00001', N'1002', CAST(0x0000A86B00000000 AS DateTime), CAST(0x0000A86B00000000 AS DateTime), N'10', N'White', N'PO1', N'Mahindra Gears & Transmissions Pvt Ltd', 455, 602, 0, NULL, N'ASTM A105', N'90 RCS', N'4', N'440', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (13, N'WO-PO1-00001', N'1005', CAST(0x0000A86B00000000 AS DateTime), CAST(0x0000A86B00000000 AS DateTime), N'10', N'White', N'PO1', N'Mahindra Gears & Transmissions Pvt Ltd', 405, 602, 0, NULL, N'ASTM A105', N'65 Dia', N'2', N'390', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (14, N'WO-PO6-00002', N'1003', CAST(0x0000A86B00000000 AS DateTime), CAST(0x0000A86B00000000 AS DateTime), N'40', N'Yellow', N'PO6', N'AKAR TTOLS LTD UNIT II', 800, 602, 0, NULL, N'ASTM A105', N'95 RCS', N'2', N'790', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (15, N'WO-PO6-00003', N'1003', CAST(0x0000A86C00000000 AS DateTime), CAST(0x0000A86C00000000 AS DateTime), N'40', N'Yellow', N'PO6', N'Mahindra Gears & Transmissions Pvt Ltd', 126, 602, 0, NULL, N'ST 52.3 ', N'90 RCS', N'2', N'121', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (16, N'WO-PO6-00004', N'1001', CAST(0x0000A86C00000000 AS DateTime), CAST(0x0000A86C00000000 AS DateTime), N'23', N'Yellow', N'PO6', N'OBCONIC TOOL CRAFTS', 256, 602, 0, NULL, N'ASTM A105', N'80 RCS', N'1', N'246', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (17, N'WO-PO7-00005', N'1003', CAST(0x0000A86C00000000 AS DateTime), CAST(0x0000A86C00000000 AS DateTime), N'0', N'Orange', N'PO7', N'TRINITY INDIA FORGE TECH PVT.LTD', 896, 601, 0, NULL, N'ST 52.3 ', N'75 Dia', N'2', N'891', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (18, N'WO-PO8-00006', N'1003', CAST(0x0000A86D00000000 AS DateTime), CAST(0x0000A86D00000000 AS DateTime), N'0', N'Orange', N'PO7', N'TRINITY INDIA FORGE TECH PVT.LTD', 400, 602, 0, NULL, N'CK-45', N'90 RCS', N'2', N'390', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (19, N'WO-PO8-00007', N'1003', CAST(0x0000A86D00000000 AS DateTime), CAST(0x0000A86D00000000 AS DateTime), N'40', N'Yellow', N'PO5', N'AKAR TTOLS LTD UNIT II', 250, 602, 0, NULL, N'En19', N'90 RCS', N'2', N'195', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (20, N'WO-PO6-00008', N'1006', CAST(0x0000A86D00000000 AS DateTime), CAST(0x0000A86D00000000 AS DateTime), N'40', N'Yellow', N'PO5', N'AKAR TTOLS LTD UNIT II', 200, 602, 0, NULL, N'En19', N'75 Dia', N'3', N'190', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (21, N'WO-PO6-00009', N'1003', CAST(0x0000A86E00000000 AS DateTime), CAST(0x0000A86E00000000 AS DateTime), N'0', N'Orange', N'PO7', N'TRINITY INDIA FORGE TECH PVT.LTD', 100, 602, 0, NULL, N'CK-45', N'110 Dia', N'2', N'95', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (22, N'WO-PO8-00010', N'1004', CAST(0x0000A87000000000 AS DateTime), CAST(0x0000A87000000000 AS DateTime), N'40', N'Yellow', N'PO5', N'Mahindra Gears & Transmissions Pvt Ltd', 200, 601, 0, NULL, N'En19', N'75 Dia', N'4', N'195', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (23, N'WO-PO5-00011', N'1005', CAST(0x0000A87000000000 AS DateTime), CAST(0x0000A87000000000 AS DateTime), N'40', NULL, N'PO5', N'Mahindra Gears & Transmissions Pvt Ltd', 156, 602, 0, NULL, N'En19', N'65 Dia', N'2', N'101', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (24, N'WO-PO5-00012', N'1006', CAST(0x0000A87000000000 AS DateTime), CAST(0x0000A87000000000 AS DateTime), N'40', NULL, N'PO5', N'AKAR TTOLS LTD UNIT II', 200, 602, 0, NULL, N'En19', N'90 RCS', N'3', N'195', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (25, N'WO-PO5-00013', N'1001', CAST(0x0000A87000000000 AS DateTime), CAST(0x0000A87000000000 AS DateTime), N'40', N'Yellow', N'PO5', N'AKAR TTOLS LTD UNIT II', 250, 601, 0, NULL, N'En19', N'75 Dia', N'1', N'245', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (26, N'WO-PO4-00014', N'1001', NULL, NULL, N'45', N'Yellow', N'PO-4', N'AKAR TTOLS LTD UNIT II', 455, 602, NULL, NULL, N'ASTM A105', N'75 Dia', N'1', N'455', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (27, N'WO-00015', N'1010', NULL, CAST(0x0000A89600000000 AS DateTime), N'40', N'Yellow', N'PO-6', N'Mahindra Gears & Transmissions Pvt Ltd', 550, 602, 0, NULL, N'En19', N'85 Dia', N'1', N'530', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (28, N'WO-PO5-00016', N'1008', NULL, CAST(0x0000A89600000000 AS DateTime), N'40', N'Yellow', N'PO5', N'AKAR TTOLS LTD UNIT II', 550, 601, 0, NULL, N'En19', N'95 Dia', N'2', N'699', NULL)
INSERT [dbo].[ssmtbl_WorkOrder] ([ID], [WorkorderNo], [HeatCode], [DateOfIssue], [TargetDate], [CutWeight], [ColorCode], [PoNo], [CustomerName], [AllocatedRMQty], [Status], [AllocatedRM], [AllocatedSection], [PoRM], [PoSection], [ProductionUnit], [BalancedRMQty], [DieStatus]) VALUES (29, N'WO-PO5-00017', N'TC1', NULL, CAST(0x0000A89600000000 AS DateTime), N'40', N'Yellow', N'PO5', N'AKAR TTOLS LTD UNIT II', 550, 602, 0, NULL, N'En19', N'95 Dia', N'4', N'790', NULL)
SET IDENTITY_INSERT [dbo].[ssmtbl_WorkOrder] OFF
/****** Object:  Table [dbo].[ssmtbl_TermsNCondtion]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_TermsNCondtion](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[QuotationID] [bigint] NOT NULL,
	[TermsNConditionID] [bigint] NOT NULL,
	[TermsNConditionContent] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_TermsNCondtion] ON
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (1, 7, 1, N'1. Payment Terms   :    Within 45 days')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (2, 7, 2, N'2. Transporation   :   our end')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (3, 8, 1, N'1. Payment Terms   :    Within 45 days')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (4, 8, 2, N'2. Transporation   :   our end')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (5, 9, 1, N'1. Payment Terms   :    Within 45 days')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (6, 9, 2, N'2. Transporation   :   our end')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (7, 10, 1, N'1. Payment Terms   :    Within 45 days')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (8, 10, 2, N'2. Transporation   :   our end')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (9, 11, 1, N'1. Payment Terms   :    Within 45 days')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (10, 11, 2, N'2. Transporation   :   our end')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (11, 12, 3, N'3. Delivery Period :')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (12, 13, 1, N'1. Payment Terms   :    Within 45 days')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (13, 13, 2, N'2. Transporation   :   our end')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (14, 14, 1, N'1. Payment Terms   :    Within 45 days')
INSERT [dbo].[ssmtbl_TermsNCondtion] ([id], [QuotationID], [TermsNConditionID], [TermsNConditionContent]) VALUES (15, 14, 2, N'2. Transporation   :   our end')
SET IDENTITY_INSERT [dbo].[ssmtbl_TermsNCondtion] OFF
/****** Object:  Table [dbo].[ssmtbl_RMInventary]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_RMInventary](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Heatcode] [varchar](max) NULL,
	[ChallanNo] [varchar](max) NULL,
	[Quntity] [float] NULL,
	[Unit] [varchar](max) NULL,
	[RMUnit] [varchar](max) NULL,
	[GradeOfMaterial] [varchar](max) NULL,
	[Section] [varchar](max) NULL,
 CONSTRAINT [PK_RMInventary_Tb] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_RMInventary] ON
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (1, N'1001', N'25', 390, N'Tonne', N'Per Piece', N'ST 52.3', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (2, N'1006', N'63', 543, N'dsfsfdg5', N'Mtr', N'LF2 A350', N'50 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (3, N'HC', N'5236', 295, N'KHI', N'Mtr/KG', N'C-45', N'45 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (4, N'T1', N'2536', 790, N'LBC', N'KG', N'CK-45', N'43 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (5, N'1002', N'2536', 250, N'LBCD', N'Tonne', N'SAE 1018', N'53 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (6, N'1001', N'450', 290, N'htc', N'Per Piece', N'ST 52.3', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (7, N'1002', N'450', 85, N'htc', N'Tonne', N'SAE 1018', N'53 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (8, N'1002', N'CH1263', 0, N'sdf', N'Tonne', N'SAE 1018', N'53 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (9, N'1001', N'CH112', 350, N'LVBC', N'KG', N'SAE 1018', N'53 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (10, N'HC', N'CH102', 450, N'LVBC', N'KG', N'C-45', N'50 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (11, N'HC', N'CH12', 450, N'LBC', N'KGS', N'C-45', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (12, N'1007', N'CH85', 500, N'RTG', N'Piece', N'SAE 1018', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (13, N'HC1', N'no', 100, N'RM', N'Piece', N'LF2 A350', N'45 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (14, N'1005', N'yh', 250, N'Tonne', N'Per Piece', N'En19', N'75 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (15, N'1008', N'RT56', 779, N'Tonne', N'Pe Piece', N'En19', N'95 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (16, N'TC1', N'CH34', 690, N'Tonne', N'Per Piece', N'En19', N'95 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (17, N'1010', N'CH78', 725, N'Tonne', N'Meter', N'En19', N'85 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (18, N'1006', N'CH12', 500, N'TG', N'KG', N'En19', N'65 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (19, N'1003', N'CH57', 345, N'KGS', N'TRS', N'En19', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (20, N'1009', N'CH46', 485, N'GS', N'Tonne', N'En8D', N'65 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (21, N'1006', N'CH56', 515, N'KGS', N'RTGS', N'20MnCr5', N'60 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (22, N'1006', N'456', 500, N'GS', N'Tgs', N'20MnCr5', N'65 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (23, N'1002', N'67', 500, N'HRS', N'TGS', N'20MnCr5', N'75 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (24, N'1002', N'RT56', 695, N'TGS', N'KG', N'ASTM A105', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (25, N'1005', N'56', 390, N'LBC', N'Per Piece', N'ASTM A105', N'65 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (26, N'1003', N'78', 290, N'LBCD', N'KGS', N'ASTM A105', N'95 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (27, N'TC1', N'123', 350, N'KGS', N'Tonne', N'ASTM A105', N'80 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (28, N'1001', N'124', 550, N'KG', N'Meter', N'ASTM A105', N'85 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (29, N'1002', N'33', 395, N'KG', N'Meter', N'En8D', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (30, N'1001', N'23', 500, N'KGS', N'MTR', N'En8D', N'60 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (31, N'1005', N'34', 550, N'KG', N'Meter', N'En8D', N'75 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (32, N'1003', N'344', 600, N'KGS', N'Tonne', N'En8D', N'65 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (33, N'1005', N'67', 550, N'LBCD', N'KGS', N'En8D', N'65 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (34, N'HC1', N'56', 500, N'LBC', N'Per Piece', N'En8D', N'65 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (35, N'1003', N'45', 500, N'Tonne', N'Tonne', N'ST 52.3', N'65 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (36, N'HC1', N'3', 250, N'LBC', N'KGS', N'ST 52.3', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (37, N'1005', N'344', 300, N'LBCD', N'Tonne', N'ST 52.3', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (38, N'1003', N'2', 350, N'Tonne', N'Tonne', N'ST 52.3', N'75 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (39, N'1005', N'RT56', 300, N'LBC', N'Tonne', N'ASTM A105', N'75 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (40, N'1006', N'CH46', 400, N'LBCD', N'KGS', N'20MnCr5', N'75 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (41, N'1005', N'CH34', 545, N'LBC', N'Meter', N'En19', N'65 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (42, N'1006', N'RT56', 345, N'Tonne', N'Per Piece', N'En19', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (43, N'1001', N'CH34', 295, N'LBCD', N'KGS', N'En19', N'75 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (44, N'1006', N'RTG', 530, N'LBC', N'MTR', N'En19', N'75 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (45, N'1002', N'CH34', 350, N'LBC', N'KGS', N'En8D', N'60 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (46, N'1002', N'CH34', 535, N'LBC', N'MTR', N'En8D', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (47, N'1003', N'CH1222', 120, N'LBVC', N'Tonne', N'ST 52.3', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (48, N'1003', N'CH1222', 120, N'LBVC', N'Tonne', N'CK-45', N'110 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (49, N'1009', N'CH1222', 120, N'LBVC', N'Tonne', N'ST 52.3', N'65 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (50, N'1003', N'CH1222', 115, N'LBVC', N'Tonne', N'CK-45', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (51, N'1006', N'CH1222', 125, N'LBVC', N'Tonne', N'ST 52.3', N'90 RCS')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (52, N'1004', N'CH1222', 120, N'LBVC', N'Tonne', N'En19', N'75 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (53, N'1001', N'CH5263', 250, N'LBC', N'KGS', N'En8D', N'75 Dia')
INSERT [dbo].[ssmtbl_RMInventary] ([ID], [Heatcode], [ChallanNo], [Quntity], [Unit], [RMUnit], [GradeOfMaterial], [Section]) VALUES (54, N'1001', N'CH856', 440, N'LBVC', N'KGS', N'En8D', N'65 Dia')
SET IDENTITY_INSERT [dbo].[ssmtbl_RMInventary] OFF
/****** Object:  Table [dbo].[ssmtbl_Quotation]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_Quotation](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[InquiryNo] [bigint] NULL,
	[QuotationNo] [varchar](50) NULL,
	[CustomerName] [varchar](50) NULL,
	[PartDescription] [varchar](50) NULL,
	[PartNo] [varchar](50) NULL,
	[HeatTreatment] [varchar](50) NULL,
	[Material] [varchar](50) NULL,
	[VersionNo] [uniqueidentifier] NOT NULL,
	[Section] [varchar](50) NULL,
	[MachainedWeight] [varchar](50) NULL,
	[GrossWeight] [decimal](18, 2) NULL,
	[CutWeight] [decimal](18, 2) NULL,
	[NetWeight] [decimal](18, 2) NULL,
	[ForgingCostBased] [varchar](50) NULL,
	[MPICostBasedOn] [varchar](50) NULL,
	[SteelCost] [decimal](18, 2) NULL,
	[Transportation] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[TotalRowMaterialCost] [decimal](18, 2) NULL,
	[CuttingSquare1] [decimal](18, 2) NULL,
	[CuttingSquare2] [decimal](18, 2) NULL,
	[Forging1] [decimal](18, 2) NULL,
	[Forging2] [decimal](18, 2) NULL,
	[HeatTreatment1] [decimal](18, 2) NULL,
	[HeatTreatment2] [decimal](18, 2) NULL,
	[ShotBlasting1] [decimal](18, 2) NULL,
	[ShotBlasting2] [decimal](18, 2) NULL,
	[MPI1] [decimal](18, 2) NULL,
	[MPI2] [decimal](18, 2) NULL,
	[Grinding1] [decimal](18, 2) NULL,
	[Grinding2] [decimal](18, 2) NULL,
	[ColdCoining1] [decimal](18, 2) NULL,
	[ColdCoining2] [decimal](18, 2) NULL,
	[Machining1] [decimal](18, 2) NULL,
	[Machining2] [decimal](18, 2) NULL,
	[DieMaintenance1] [decimal](18, 2) NULL,
	[DieMaintenance2] [decimal](18, 2) NULL,
	[TotalConverstionCost] [decimal](18, 2) NULL,
	[TotalComponentCost] [decimal](18, 2) NULL,
	[InitialDieCost] [decimal](18, 2) NULL,
	[PoNo] [varchar](50) NULL,
	[FileStatus] [varchar](50) NULL,
	[Comment] [varchar](50) NULL,
	[ApprovalDate] [datetime] NULL,
	[ApprovedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[Createdby] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[new_Version_No] [int] NULL,
	[UserComment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Quotation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_Quotation] ON
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (1, 7, N'SSM_1736_7', N'DYCON SYSTEMS PVT LTD', N'ert', N'ert', N'1001', N'En19C', N'f9614b9c-aaac-4b06-ae25-b0bc94d8f3f0', N'3', NULL, CAST(25.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), N'Gross Wt', N'Net Wt', CAST(12.00 AS Decimal(18, 2)), CAST(34.00 AS Decimal(18, 2)), CAST(46.00 AS Decimal(18, 2)), CAST(334.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), CAST(1350.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(43.00 AS Decimal(18, 2)), CAST(1462.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2887.00 AS Decimal(18, 2)), CAST(3221.00 AS Decimal(18, 2)), CAST(53.00 AS Decimal(18, 2)), NULL, N'Quotation Approval Pending', NULL, NULL, NULL, CAST(0x0000A85801539DC4 AS DateTime), N'Test', NULL, NULL, 1, NULL)
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (2, 7, N'SSM_1736_7', N'DYCON SYSTEMS PVT LTD', N'ert', N'ert', N'1001', NULL, N'2cd17ca9-a5f1-43d6-a85f-d23135d936c1', N'16', NULL, CAST(25.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), N'Gross Wt', N'Net Wt', CAST(24.00 AS Decimal(18, 2)), CAST(34.00 AS Decimal(18, 2)), CAST(58.00 AS Decimal(18, 2)), CAST(634.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), CAST(1350.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(43.00 AS Decimal(18, 2)), CAST(1462.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2887.00 AS Decimal(18, 2)), CAST(3521.00 AS Decimal(18, 2)), CAST(53.00 AS Decimal(18, 2)), NULL, N'Quotation Approval Pending', NULL, NULL, NULL, CAST(0x0000A85900C0D977 AS DateTime), N'Test', NULL, NULL, 2, N'Test Update')
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (3, 7, N'SSM_1736_7', N'DYCON SYSTEMS PVT LTD', N'ert', N'ert', N'1001', NULL, N'93503d37-d2fa-4999-bd6c-6ee06d6e3070', N'16', NULL, CAST(25.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), N'Gross Wt', N'Net Wt', CAST(24.00 AS Decimal(18, 2)), CAST(34.00 AS Decimal(18, 2)), CAST(58.00 AS Decimal(18, 2)), CAST(634.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), CAST(1350.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(43.00 AS Decimal(18, 2)), CAST(1462.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2887.00 AS Decimal(18, 2)), CAST(3521.00 AS Decimal(18, 2)), CAST(53.00 AS Decimal(18, 2)), NULL, N'Quotation Approval Pending', NULL, NULL, NULL, CAST(0x0000A85900D5F972 AS DateTime), N'Test', NULL, NULL, 3, N'Test New')
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (4, 7, N'SSM_1736_7', N'DYCON SYSTEMS PVT LTD', N'ert', N'ert', N'1001', NULL, N'56ffa56e-8d06-4ef8-8d75-0683ae5cc129', N'16', NULL, CAST(25.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), N'Gross Wt', N'Net Wt', CAST(24.00 AS Decimal(18, 2)), CAST(34.00 AS Decimal(18, 2)), CAST(58.00 AS Decimal(18, 2)), CAST(634.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), CAST(1350.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(43.00 AS Decimal(18, 2)), CAST(1462.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2887.00 AS Decimal(18, 2)), CAST(3521.00 AS Decimal(18, 2)), CAST(53.00 AS Decimal(18, 2)), NULL, N'Quotation Approved', N'', CAST(0x0000A86C00F34328 AS DateTime), N'Admin', CAST(0x0000A85900E4F6A9 AS DateTime), N'Test', NULL, NULL, 4, N'Test New')
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (5, 8, N'SSM_1712_8', N'KOHINOOR INDUSTRIES', N'rewt', N'wert', N'1006', N'En19C', N'93af053f-58c9-451c-a5e4-d94ac3247c05', N'17', NULL, CAST(32.00 AS Decimal(18, 2)), CAST(32.00 AS Decimal(18, 2)), CAST(42.00 AS Decimal(18, 2)), N'Gross Wt', N'Net Wt', CAST(250.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(550.00 AS Decimal(18, 2)), CAST(8300.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(32.00 AS Decimal(18, 2)), CAST(1024.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(504.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)), CAST(782.00 AS Decimal(18, 2)), CAST(2310.00 AS Decimal(18, 2)), CAST(10610.00 AS Decimal(18, 2)), CAST(23232.00 AS Decimal(18, 2)), NULL, N'Quotation Approval Pending', NULL, NULL, NULL, CAST(0x0000A85900E6929A AS DateTime), N'Test', NULL, NULL, 1, N'New')
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (6, 11, N'SSM_1801_11', N'METS INDIA MACHINE EQUIPMENTS & TRANSMISSION SYSTE', N'rty', N'rty', N'1003', N'En19', N'fefdfc0f-cc5f-418d-acc7-68240416a54c', N'7', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), N'Cut Wt', N'Per Piece', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, N'Quotation Approval Pending', NULL, NULL, NULL, CAST(0x0000A86300D63BD1 AS DateTime), N'Test', NULL, NULL, 1, NULL)
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (7, 11, N'SSM_1801_11', N'METS INDIA MACHINE EQUIPMENTS & TRANSMISSION SYSTE', N'rty', N'rty', N'1003', NULL, N'db13ceaa-de14-499f-a9d4-6da3d7b0d56e', N'7', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), N'Cut Wt', N'Per Piece', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, N'Quotation Approval Pending', NULL, NULL, NULL, CAST(0x0000A86300D67169 AS DateTime), N'Test', NULL, NULL, 2, NULL)
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (8, 11, N'SSM_1801_11', N'METS INDIA MACHINE EQUIPMENTS & TRANSMISSION SYSTE', N'rty', N'rty', N'1003', NULL, N'8a2cadf3-eee5-463b-bf10-c4cb371dc0aa', N'7', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), N'Cut Wt', N'Per Piece', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, N'Quotation Approval Pending', NULL, NULL, NULL, CAST(0x0000A86300D77BEE AS DateTime), N'Test', NULL, NULL, 3, NULL)
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (9, 11, N'SSM_1801_11', N'METS INDIA MACHINE EQUIPMENTS & TRANSMISSION SYSTE', N'rty', N'rty', N'1003', NULL, N'414362ff-beda-44fe-ae5d-f5961bb1ce0d', N'7', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), N'Cut Wt', N'Per Piece', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'8', N'Quotation Approved', N'', CAST(0x0000A86300D92B2B AS DateTime), N'Admin', CAST(0x0000A86300D7B0D0 AS DateTime), N'Test', NULL, NULL, 4, N'vxcvxcv')
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (10, 15, N'SSM_1801_15', N'OBCONIC TOOL CRAFTS', N'OBC456', N'456', N'1001', N'En19C', N'8124adb5-60cd-4042-a39b-df6820070847', N'5', NULL, CAST(25.00 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), N'Net Wt', N'Per Piece', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'9', N'Quotation Approved', N'', CAST(0x0000A86300EEB63F AS DateTime), N'Admin', CAST(0x0000A86300DDA20A AS DateTime), N'Test', NULL, NULL, 1, N'ghij')
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (11, 17, N'SSM_1801_17', N'TRINITY INDIA FORGE TECH PVT.LTD', N'Art', N'1452', N'1003', N'CK-45', N'58474cbb-ee1f-401f-8272-1b46fa9fdb42', N'12', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Gross Wt', N'Net Wt', CAST(0.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'10', N'Quotation Approved', N'', CAST(0x0000A86C00F36ACA AS DateTime), N'Admin', CAST(0x0000A86C00F30E55 AS DateTime), N'Test', NULL, NULL, 1, NULL)
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (12, 12, N'SSM_1801_12', N'Alfa Laval India Ltd', N'Gear', N'12', N'1002', N'S-40C', N'feb10c37-6d6d-4e93-8ec2-6cac4ddbe2fe', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, N'Quotation Approval Pending', NULL, NULL, NULL, CAST(0x0000A86D01089846 AS DateTime), N'Test', NULL, NULL, 1, NULL)
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (13, 18, N'SSM_1803_18', N'Crane Process Flow', N'CRANE', N'1452', N'1002', N'1020', N'4e60e76c-6f6b-4b73-826e-e6fa7784cb2d', N'4', NULL, CAST(25.00 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), N'Gross Wt', N'Net Wt', CAST(0.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(1250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), CAST(9500.00 AS Decimal(18, 2)), CAST(9550.00 AS Decimal(18, 2)), CAST(1050.00 AS Decimal(18, 2)), NULL, N'Quotation Approved', N'', CAST(0x0000A8B000C7D996 AS DateTime), N'Admin', CAST(0x0000A8B000C6C2BB AS DateTime), N'Test', NULL, NULL, 1, N'gg')
INSERT [dbo].[ssmtbl_Quotation] ([id], [InquiryNo], [QuotationNo], [CustomerName], [PartDescription], [PartNo], [HeatTreatment], [Material], [VersionNo], [Section], [MachainedWeight], [GrossWeight], [CutWeight], [NetWeight], [ForgingCostBased], [MPICostBasedOn], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [PoNo], [FileStatus], [Comment], [ApprovalDate], [ApprovedBy], [CreatedOn], [Createdby], [UpdatedOn], [UpdatedBy], [new_Version_No], [UserComment]) VALUES (14, 19, N'SSM_1803_19', N'ALLIANCE ENGINEERING COMPANY', N'SB78', N'12', N'1003', N'LF2 A350', N'ae2378bb-f999-4b45-860d-9e8624993476', N'5', NULL, CAST(45.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), N'Gross Wt', N'Net Wt', CAST(0.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(1125.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(2900.00 AS Decimal(18, 2)), CAST(5825.00 AS Decimal(18, 2)), CAST(5870.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), NULL, N'Quotation Approved', N'', CAST(0x0000A8B000C91A8A AS DateTime), N'Admin', CAST(0x0000A8B000C901DA AS DateTime), N'Test', NULL, NULL, 1, N'NA')
SET IDENTITY_INSERT [dbo].[ssmtbl_Quotation] OFF
/****** Object:  Table [dbo].[ssmtbl_PurchaseOrder]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_PurchaseOrder](
	[po_id] [bigint] IDENTITY(1,1) NOT NULL,
	[InquiryNo] [bigint] NOT NULL,
	[customerName] [varchar](max) NULL,
	[QuotationNo] [varchar](max) NULL,
	[CustomerPONo] [varchar](max) NULL,
	[POValidity] [datetime] NULL,
	[QtymentionedinPO] [varchar](max) NULL,
	[DieNumber] [varchar](max) NULL,
	[HSNCode] [varchar](max) NULL,
	[SteelCost] [decimal](18, 2) NULL,
	[Transportation] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[TotalRowMaterialCost] [decimal](18, 2) NULL,
	[CuttingSquare1] [decimal](18, 2) NULL,
	[CuttingSquare2] [decimal](18, 2) NULL,
	[Forging1] [decimal](18, 2) NULL,
	[Forging2] [decimal](18, 2) NULL,
	[HeatTreatment1] [decimal](18, 2) NULL,
	[HeatTreatment2] [decimal](18, 2) NULL,
	[ShotBlasting1] [decimal](18, 2) NULL,
	[ShotBlasting2] [decimal](18, 2) NULL,
	[MPI1] [decimal](18, 2) NULL,
	[MPI2] [decimal](18, 2) NULL,
	[Grinding1] [decimal](18, 2) NULL,
	[Grinding2] [decimal](18, 2) NULL,
	[ColdCoining1] [decimal](18, 2) NULL,
	[ColdCoining2] [decimal](18, 2) NULL,
	[Machining1] [decimal](18, 2) NULL,
	[Machining2] [decimal](18, 2) NULL,
	[DieMaintenance1] [decimal](18, 2) NULL,
	[DieMaintenance2] [decimal](18, 2) NULL,
	[TotalConverstionCost] [decimal](18, 2) NULL,
	[TotalComponentCost] [decimal](18, 2) NULL,
	[InitialDieCost] [decimal](18, 2) NULL,
	[Filepath] [varchar](max) NULL,
	[CGST] [decimal](18, 2) NULL,
	[IGST] [decimal](18, 2) NULL,
	[SGST] [decimal](18, 2) NULL,
	[createdby] [varchar](max) NULL,
	[createddate] [datetime] NULL,
	[updatedby] [varchar](max) NULL,
	[updateddate] [datetime] NULL,
	[QuotationId] [int] NULL,
	[POStatus] [varchar](50) NULL,
	[Comment] [nvarchar](max) NULL,
	[ApprovalDate] [datetime] NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[POQty_Open] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_PurchaseOrder] ON
INSERT [dbo].[ssmtbl_PurchaseOrder] ([po_id], [InquiryNo], [customerName], [QuotationNo], [CustomerPONo], [POValidity], [QtymentionedinPO], [DieNumber], [HSNCode], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [Filepath], [CGST], [IGST], [SGST], [createdby], [createddate], [updatedby], [updateddate], [QuotationId], [POStatus], [Comment], [ApprovalDate], [ApprovedBy], [POQty_Open]) VALUES (1, 3, N'ALLIANCE ENGINEERING COMPANY', N'Q-3', N'PO1', CAST(0x0000A85900000000 AS DateTime), N'100', N'10', N'AAA', CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', CAST(12.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), N'Test', CAST(0x0000A85201133514 AS DateTime), NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_PurchaseOrder] ([po_id], [InquiryNo], [customerName], [QuotationNo], [CustomerPONo], [POValidity], [QtymentionedinPO], [DieNumber], [HSNCode], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [Filepath], [CGST], [IGST], [SGST], [createdby], [createddate], [updatedby], [updateddate], [QuotationId], [POStatus], [Comment], [ApprovalDate], [ApprovedBy], [POQty_Open]) VALUES (2, 4, N'ALLIANCE ENGINEERING COMPANY', N'Q-4', N'PO1', CAST(0x0000A85800000000 AS DateTime), N'100', N'10', N'AAA', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), N'', CAST(12.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), N'Test', CAST(0x0000A8520118CD8B AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_PurchaseOrder] ([po_id], [InquiryNo], [customerName], [QuotationNo], [CustomerPONo], [POValidity], [QtymentionedinPO], [DieNumber], [HSNCode], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [Filepath], [CGST], [IGST], [SGST], [createdby], [createddate], [updatedby], [updateddate], [QuotationId], [POStatus], [Comment], [ApprovalDate], [ApprovedBy], [POQty_Open]) VALUES (7, 1, N'Mahindra Gears & Transmissions Pvt Ltd', N'Q-1', N'PO5', CAST(0x0000A85700000000 AS DateTime), N'100', N'10', N'AAA', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(33.44 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(1.30 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(260.74 AS Decimal(18, 2)), CAST(260.74 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), N'/PDFFiles/PODocs/Q.pdf', CAST(12.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), N'Test', CAST(0x0000A857012F5657 AS DateTime), NULL, NULL, 37, N'PO Approved', N'qweqwe', CAST(0x0000A857013798EE AS DateTime), N'Admin', NULL)
INSERT [dbo].[ssmtbl_PurchaseOrder] ([po_id], [InquiryNo], [customerName], [QuotationNo], [CustomerPONo], [POValidity], [QtymentionedinPO], [DieNumber], [HSNCode], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [Filepath], [CGST], [IGST], [SGST], [createdby], [createddate], [updatedby], [updateddate], [QuotationId], [POStatus], [Comment], [ApprovalDate], [ApprovedBy], [POQty_Open]) VALUES (6, 2, N'AKAR TTOLS LTD UNIT II', N'Q-2', N'PO5', CAST(0x0000A85800000000 AS DateTime), N'120', N'1212', N'JHG', CAST(100.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(12.35 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(1726.05 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(690.42 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(690.42 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(42.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(84.00 AS Decimal(18, 2)), CAST(3539.24 AS Decimal(18, 2)), CAST(3564.24 AS Decimal(18, 2)), CAST(2502.00 AS Decimal(18, 2)), N'../../PDFFiles/PODocs/23-12-2017 18_18_35 (1).pdf.pdf', CAST(5.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'Test', CAST(0x0000A857012D48C3 AS DateTime), NULL, NULL, 35, N'PO Approved', N'', CAST(0x0000A85701377A6D AS DateTime), N'Admin', NULL)
INSERT [dbo].[ssmtbl_PurchaseOrder] ([po_id], [InquiryNo], [customerName], [QuotationNo], [CustomerPONo], [POValidity], [QtymentionedinPO], [DieNumber], [HSNCode], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [Filepath], [CGST], [IGST], [SGST], [createdby], [createddate], [updatedby], [updateddate], [QuotationId], [POStatus], [Comment], [ApprovalDate], [ApprovedBy], [POQty_Open]) VALUES (8, 11, N'METS INDIA MACHINE EQUIPMENTS & TRANSMISSION SYSTE', N'SSM_1801_11', N'PO5', CAST(0x0000A87900000000 AS DateTime), N'45', NULL, N'HSN5', CAST(1500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(95.00 AS Decimal(18, 2)), CAST(2095.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)), N'', CAST(5.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'Test', CAST(0x0000A86300DA0CF9 AS DateTime), NULL, NULL, 9, N'PO Approved', N'', CAST(0x0000A86300DA5899 AS DateTime), N'Admin', NULL)
INSERT [dbo].[ssmtbl_PurchaseOrder] ([po_id], [InquiryNo], [customerName], [QuotationNo], [CustomerPONo], [POValidity], [QtymentionedinPO], [DieNumber], [HSNCode], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [Filepath], [CGST], [IGST], [SGST], [createdby], [createddate], [updatedby], [updateddate], [QuotationId], [POStatus], [Comment], [ApprovalDate], [ApprovedBy], [POQty_Open]) VALUES (9, 15, N'OBCONIC TOOL CRAFTS', N'SSM_1801_15', N'PO6', CAST(0x0000A88300000000 AS DateTime), N'125', N'125636', N'HSN6', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', CAST(5.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'Test', CAST(0x0000A86300EF6E9C AS DateTime), NULL, NULL, 10, N'PO Approved', N'', CAST(0x0000A86300EFCC4F AS DateTime), N'Admin', NULL)
INSERT [dbo].[ssmtbl_PurchaseOrder] ([po_id], [InquiryNo], [customerName], [QuotationNo], [CustomerPONo], [POValidity], [QtymentionedinPO], [DieNumber], [HSNCode], [SteelCost], [Transportation], [Total], [TotalRowMaterialCost], [CuttingSquare1], [CuttingSquare2], [Forging1], [Forging2], [HeatTreatment1], [HeatTreatment2], [ShotBlasting1], [ShotBlasting2], [MPI1], [MPI2], [Grinding1], [Grinding2], [ColdCoining1], [ColdCoining2], [Machining1], [Machining2], [DieMaintenance1], [DieMaintenance2], [TotalConverstionCost], [TotalComponentCost], [InitialDieCost], [Filepath], [CGST], [IGST], [SGST], [createdby], [createddate], [updatedby], [updateddate], [QuotationId], [POStatus], [Comment], [ApprovalDate], [ApprovedBy], [POQty_Open]) VALUES (10, 17, N'TRINITY INDIA FORGE TECH PVT.LTD', N'SSM_1801_17', N'PO7', CAST(0x0000A86B00000000 AS DateTime), N'', NULL, N'HSN45', CAST(0.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'', CAST(5.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), N'Test', CAST(0x0000A86C00F3C447 AS DateTime), NULL, NULL, 11, N'PO Approval Pending', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ssmtbl_PurchaseOrder] OFF
/****** Object:  Table [dbo].[ssmtbl_Notification]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_Notification](
	[NotificationMsgtype] [varchar](150) NULL,
	[NotificationMsg] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[Flag] [bit] NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ssmtbl_Notification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_Notification] ON
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 1 created by admin', CAST(0x0000A7A300C5C168 AS DateTime), 1, 1)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 1 updated by admin', CAST(0x0000A7A300C5F6F7 AS DateTime), 1, 2)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 1 updated by admin', CAST(0x0000A7A300C6384B AS DateTime), 1, 3)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 1 updated by admin', CAST(0x0000A7A300C6CCE4 AS DateTime), 1, 4)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 1 created by admin', CAST(0x0000A7A300F022AC AS DateTime), 1, 5)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', NULL, CAST(0x0000A7A300F0BD99 AS DateTime), 1, 6)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 1 updated by admin', CAST(0x0000A7A300F17772 AS DateTime), 1, 7)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 1 updated by admin', CAST(0x0000A7A300F37056 AS DateTime), 1, 8)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 1 updated by admin', CAST(0x0000A7A300F47BFF AS DateTime), 1, 9)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 2 created by admin', CAST(0x0000A7A300F5F0FF AS DateTime), 1, 10)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 2 updated by admin', CAST(0x0000A7A300F68CAE AS DateTime), 1, 11)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 2 updated by admin', CAST(0x0000A7A300F6D531 AS DateTime), 1, 12)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 2 updated by admin', CAST(0x0000A7A300F7EEF7 AS DateTime), 1, 13)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 2 updated by admin', CAST(0x0000A7A300F84541 AS DateTime), 1, 14)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FA6F2C AS DateTime), 1, 15)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC26CA AS DateTime), 1, 16)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC26CB AS DateTime), 1, 17)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC26CC AS DateTime), 1, 18)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC26CC AS DateTime), 1, 19)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC26CD AS DateTime), 1, 20)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC26CE AS DateTime), 1, 21)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC26CF AS DateTime), 1, 22)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC26CF AS DateTime), 1, 23)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC26D0 AS DateTime), 1, 24)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC26D1 AS DateTime), 1, 25)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC26D2 AS DateTime), 1, 26)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC45C5 AS DateTime), 1, 27)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC45C6 AS DateTime), 1, 28)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC45C6 AS DateTime), 1, 29)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC45C6 AS DateTime), 1, 30)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC45C7 AS DateTime), 1, 31)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC45C8 AS DateTime), 1, 32)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC45C8 AS DateTime), 1, 33)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC45C9 AS DateTime), 1, 34)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC45C9 AS DateTime), 1, 35)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC45CA AS DateTime), 1, 36)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00001 is created by admin', CAST(0x0000A7A300FC45CA AS DateTime), 1, 37)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 1 updated by admin', CAST(0x0000A7A30111C367 AS DateTime), 1, 38)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 2 created by admin', CAST(0x0000A7A301161B37 AS DateTime), 1, 39)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 2 updated by admin', CAST(0x0000A7A30124C36D AS DateTime), 1, 40)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 2 updated by admin', CAST(0x0000A7A30126FBAD AS DateTime), 1, 41)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 3 created by mu00003', CAST(0x0000A7A400F02ED5 AS DateTime), 1, 42)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 3 updated by mu00003', CAST(0x0000A7A400F3FED7 AS DateTime), 1, 43)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 3 updated by mu00003', CAST(0x0000A7A400F53539 AS DateTime), 1, 44)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 3 updated by mu00003', CAST(0x0000A7A400F803F1 AS DateTime), 1, 45)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 4 created by mu00003', CAST(0x0000A7A400FB6CC5 AS DateTime), 1, 46)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 4 updated by mu00003', CAST(0x0000A7A400FCF5E3 AS DateTime), 1, 47)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 3 updated by mu00003', CAST(0x0000A7A400FE6167 AS DateTime), 1, 48)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 4 updated by mu00003', CAST(0x0000A7A400FFA4D8 AS DateTime), 1, 49)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 3 updated by admin', CAST(0x0000A7A400FFDC66 AS DateTime), 1, 50)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 5 created by admin', CAST(0x0000A7A601141DCC AS DateTime), 1, 51)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 5 updated by admin', CAST(0x0000A7A60114BA7E AS DateTime), 1, 52)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 5 updated by admin', CAST(0x0000A7A60115470E AS DateTime), 1, 53)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 5 updated by admin', CAST(0x0000A7A60116CF0F AS DateTime), 1, 54)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011A51E7 AS DateTime), 1, 55)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011AC26B AS DateTime), 1, 56)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011AC26D AS DateTime), 1, 57)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011AC26D AS DateTime), 1, 58)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011AC26E AS DateTime), 1, 59)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011AC26F AS DateTime), 1, 60)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011AC26F AS DateTime), 1, 61)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011AC270 AS DateTime), 1, 62)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011AC271 AS DateTime), 1, 63)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011AC272 AS DateTime), 1, 64)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011AC272 AS DateTime), 1, 65)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00002 is created by admin', CAST(0x0000A7A6011AC273 AS DateTime), 1, 66)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N'New Consumable No. WELDING ROD-M is created by RM00004', CAST(0x0000A7A700DC8243 AS DateTime), 1, 67)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable_Issue', N'New Consumable_Issue No. WELDING ROD-M is created by admin', CAST(0x0000A7A900C02FA5 AS DateTime), 1, 68)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'AutoGenaratedPO', NULL, CAST(0x0000A7A900C02FA9 AS DateTime), 1, 69)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00001 is created by RM00004', CAST(0x0000A7A900E76665 AS DateTime), 1, 70)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00001 is created by RM00004', CAST(0x0000A7A900E7672C AS DateTime), 1, 71)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N' venderpo  No. VPO-00001 is updated by RM00004', CAST(0x0000A7A900E7673A AS DateTime), 1, 72)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo details', N' venderpo  No. VPO-00001 is updated by RM00004', CAST(0x0000A7A900E76754 AS DateTime), 1, 73)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00001 is created by RM00004', CAST(0x0000A7A900F4F2A5 AS DateTime), 1, 74)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInwardsItemdetails', NULL, CAST(0x0000A7A900F4F376 AS DateTime), 1, 75)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable_Issue', N'New Consumable_Issue No. WELDING ROD-M is created by RM00004', CAST(0x0000A7A900F5B821 AS DateTime), 1, 76)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'AutoGenaratedPO', N'Autogenerated Vendor PO NO VPO-003', CAST(0x0000A7A900F5B821 AS DateTime), 1, 77)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00004 is created by admin', CAST(0x0000A7A90108E5E7 AS DateTime), 1, 78)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00004 is created by admin', CAST(0x0000A7A90108E608 AS DateTime), 1, 79)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00005 is created by admin', CAST(0x0000A7A9010A69A3 AS DateTime), 1, 80)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00005 is created by admin', CAST(0x0000A7A9010A69C2 AS DateTime), 1, 81)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00002 is created by admin', CAST(0x0000A7A9010ED2F4 AS DateTime), 1, 82)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInwardsItemdetails', NULL, CAST(0x0000A7A9010ED31B AS DateTime), 1, 83)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00006 is created by admin', CAST(0x0000A7AA00F00BBC AS DateTime), 1, 84)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00006 is created by admin', CAST(0x0000A7AA00F00CE5 AS DateTime), 1, 85)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00006 is created by admin', CAST(0x0000A7AA00F00CE6 AS DateTime), 1, 86)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 6 created by mu00003', CAST(0x0000A7AD00ABD01E AS DateTime), 1, 87)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 6 updated by mu00003', CAST(0x0000A7AD00AE58EC AS DateTime), 1, 88)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N' Inquiry no. 6 updated by admin', CAST(0x0000A7AD00F1AB76 AS DateTime), 1, 89)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 6 updated by admin', CAST(0x0000A7AD00F1BBD6 AS DateTime), 1, 90)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 6 updated by admin', CAST(0x0000A7AD00F1D521 AS DateTime), 1, 91)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 6 updated by admin', CAST(0x0000A7AD00F29BBF AS DateTime), 1, 92)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00001 is created by admin', CAST(0x0000A7AD00F46B4C AS DateTime), 1, 93)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00001 is created by admin', CAST(0x0000A7AD00FD10B3 AS DateTime), 1, 94)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00001 is created by admin', CAST(0x0000A7AD00FD10D4 AS DateTime), 1, 95)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N' venderpo  No. VPO-00001 is updated by admin', CAST(0x0000A7AD00FD36A6 AS DateTime), 1, 96)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo details', N' venderpo  No. VPO-00001 is updated by admin', CAST(0x0000A7AD00FD36C5 AS DateTime), 1, 97)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo details', N' venderpo  No. VPO-00001 is updated by admin', CAST(0x0000A7AD00FD36C6 AS DateTime), 1, 98)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N' venderpo  No. VPO-00001 is updated by admin', CAST(0x0000A7AD00FD78B6 AS DateTime), 1, 99)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo details', N' venderpo  No. VPO-00001 is updated by admin', CAST(0x0000A7AD00FD78D2 AS DateTime), 1, 100)
GO
print 'Processed 100 total records'
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N' venderpo  No. VPO-00001 is updated by admin', CAST(0x0000A7AD00FDAA99 AS DateTime), 1, 101)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo details', N' venderpo  No. VPO-00001 is updated by admin', CAST(0x0000A7AD00FDAAB3 AS DateTime), 1, 102)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo details', N' venderpo  No. VPO-00001 is updated by admin', CAST(0x0000A7AD00FDAAB3 AS DateTime), 1, 103)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N'New Consumable No. C-BOLT-1 is created by RM00004', CAST(0x0000A7AE00C490F2 AS DateTime), 1, 104)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N' Consumable  No. BOLT-N02 is updated by RM00004', CAST(0x0000A7AE00C87E37 AS DateTime), 1, 105)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N' Consumable  No. BOLT-N02 is updated by RM00004', CAST(0x0000A7AE00C8B0CF AS DateTime), 1, 106)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N' Consumable  No. BOLT-N02 is updated by RM00004', CAST(0x0000A7AE00C8B718 AS DateTime), 1, 107)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N' Consumable  No. BOLT-N02 is updated by RM00004', CAST(0x0000A7AE00C91E7D AS DateTime), 1, 108)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N' Consumable  No. BOLT-N02 is updated by RM00004', CAST(0x0000A7AE00C91E83 AS DateTime), 1, 109)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N' Consumable  No. BOLT-N02 is updated by RM00004', CAST(0x0000A7AE00C9224E AS DateTime), 1, 110)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N' Consumable  No. BOLT-N02 is updated by RM00004', CAST(0x0000A7AE00C9226A AS DateTime), 1, 111)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N' Consumable  No. BOLT-N02 is updated by RM00004', CAST(0x0000A7AE00C925D0 AS DateTime), 1, 112)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N'New Consumable No. BOLT -NO2 is created by RM00004', CAST(0x0000A7AE00C9729C AS DateTime), 1, 113)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N'New Consumable No. BOLT-N03 is created by RM00004', CAST(0x0000A7AE00CAD844 AS DateTime), 1, 114)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N' Consumable  No. C-BOLT-1 is updated by RM00004', CAST(0x0000A7AE00CB90CD AS DateTime), 1, 115)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N'New Consumable No. BOLT-N04 is created by RM00004', CAST(0x0000A7AE00CBB9C1 AS DateTime), 1, 116)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N'New Consumable No. BOLT-NO8 is created by admin', CAST(0x0000A7AE00D0A27D AS DateTime), 1, 117)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N'New Consumable No. BOLT N05 is created by admin', CAST(0x0000A7AE00DD47A7 AS DateTime), 1, 118)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N' Consumable  No. BOLT -NO2 is updated by admin', CAST(0x0000A7AE00DDD5DB AS DateTime), 1, 119)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N'New Consumable No. BOLTN06 is created by RM00004', CAST(0x0000A7AE00DEF805 AS DateTime), 1, 120)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N'New Consumable No. BOLT NO7 is created by RM00004', CAST(0x0000A7AE00DF652B AS DateTime), 1, 121)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N' Consumable  No. WELDING ROD-M is updated by RM00004', CAST(0x0000A7AE00E018B2 AS DateTime), 1, 122)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00002 is created by admin', CAST(0x0000A7AE00F435E2 AS DateTime), 1, 123)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', N' DeliveryChallan  No. DISP-00002 is updated by admin', CAST(0x0000A7AE00F44119 AS DateTime), 1, 124)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', N' DeliveryChallan  No. DISP-00002 is updated by RM00004', CAST(0x0000A7B000FC6F52 AS DateTime), 1, 125)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00002 is created by admin', CAST(0x0000A7B0010117DF AS DateTime), 1, 126)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00002 is created by admin', CAST(0x0000A7B0010117FB AS DateTime), 1, 127)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00002 is created by admin', CAST(0x0000A7B00101C314 AS DateTime), 1, 128)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00002 is created by admin', CAST(0x0000A7B00101C32E AS DateTime), 1, 129)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00002 is created by admin', CAST(0x0000A7B0010214DF AS DateTime), 1, 130)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00002 is created by admin', CAST(0x0000A7B001021528 AS DateTime), 1, 131)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00003 is created by admin', CAST(0x0000A7B0010359A1 AS DateTime), 1, 132)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00003 is created by admin', CAST(0x0000A7B0010359BB AS DateTime), 1, 133)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00003 is created by admin', CAST(0x0000A7B001039E9D AS DateTime), 1, 134)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00003 is created by admin', CAST(0x0000A7B001039EB7 AS DateTime), 1, 135)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00003 is created by admin', CAST(0x0000A7B0010447CE AS DateTime), 1, 136)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00003 is created by admin', CAST(0x0000A7B0010447E7 AS DateTime), 1, 137)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00004 is created by RM00004', CAST(0x0000A7B001145D52 AS DateTime), 1, 138)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00004 is created by RM00004', CAST(0x0000A7B001145D6B AS DateTime), 1, 139)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00005 is created by admin', CAST(0x0000A7B201227D8F AS DateTime), 1, 140)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00005 is created by admin', CAST(0x0000A7B201227DE9 AS DateTime), 1, 141)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00006 is created by admin', CAST(0x0000A7B201230855 AS DateTime), 1, 142)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00006 is created by admin', CAST(0x0000A7B2012308AF AS DateTime), 1, 143)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00003 is created by admin', CAST(0x0000A7B20124AFE7 AS DateTime), 1, 144)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInwardsItemdetails', NULL, CAST(0x0000A7B20124B090 AS DateTime), 1, 145)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00006 is created by admin', CAST(0x0000A7B20164AFF9 AS DateTime), 1, 146)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00006 is created by admin', CAST(0x0000A7B20164B012 AS DateTime), 1, 147)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00006 is created by admin', CAST(0x0000A7B20165E70C AS DateTime), 1, 148)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00006 is created by admin', CAST(0x0000A7B20165E71B AS DateTime), 1, 149)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N'New Consumable No. WR1MM is created by admin', CAST(0x0000A7B301032186 AS DateTime), 1, 150)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00007 is created by admin', CAST(0x0000A7B301040CDA AS DateTime), 1, 151)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00007 is created by admin', CAST(0x0000A7B301040CF8 AS DateTime), 1, 152)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00004 is created by admin', CAST(0x0000A7B30104757D AS DateTime), 1, 153)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInwardsItemdetails', NULL, CAST(0x0000A7B30104759F AS DateTime), 1, 154)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable_Issue', N'New Consumable_Issue No. WR1MM is created by admin', CAST(0x0000A7B30106A08F AS DateTime), 1, 155)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable_Issue', N'New Consumable_Issue No. WR1MM is created by admin', CAST(0x0000A7B3011D0BFB AS DateTime), 1, 156)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Consumable', N'New Consumable No. MPI-A01 is created by RM00004', CAST(0x0000A7B301266CC0 AS DateTime), 1, 157)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00008 is created by RM00004', CAST(0x0000A7B30127A42D AS DateTime), 1, 158)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpodetails', N'New vender po No. VPO-00008 is created by RM00004', CAST(0x0000A7B30127A445 AS DateTime), 1, 159)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 7 created by mu00003', CAST(0x0000A7B800C66D7C AS DateTime), 1, 160)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 7 updated by mu00003', CAST(0x0000A7B800D804C5 AS DateTime), 1, 161)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 7 updated by admin', CAST(0x0000A7B800DFE09C AS DateTime), 1, 162)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 8 created by mu00003', CAST(0x0000A7B900C9B35F AS DateTime), 1, 163)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 8 updated by admin', CAST(0x0000A83100BF59D3 AS DateTime), 1, 164)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 9 created by admin', CAST(0x0000A8330180AA49 AS DateTime), 1, 165)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 9 updated by admin', CAST(0x0000A84E00C5782D AS DateTime), 1, 166)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 1 updated by admin', CAST(0x0000A84E00C6200F AS DateTime), 1, 167)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 8 updated by admin', CAST(0x0000A84E00E1F10D AS DateTime), 1, 168)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 9 updated by admin', CAST(0x0000A84E00EB15BE AS DateTime), 1, 169)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 9 updated by admin', CAST(0x0000A84E00EB78DB AS DateTime), 1, 170)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 3 updated by admin', CAST(0x0000A84E0103CAE3 AS DateTime), 1, 171)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 4 updated by admin', CAST(0x0000A84E010421F3 AS DateTime), 1, 172)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 6 updated by admin', CAST(0x0000A84E010EA4F3 AS DateTime), 1, 173)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 7 updated by admin', CAST(0x0000A84E010F1B87 AS DateTime), 1, 174)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 8 updated by admin', CAST(0x0000A84E010F94E2 AS DateTime), 1, 175)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 9 updated by admin', CAST(0x0000A84E0113B89E AS DateTime), 1, 176)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 8 updated by admin', CAST(0x0000A84E01241661 AS DateTime), 1, 177)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 8 updated by admin', CAST(0x0000A84F00A2F480 AS DateTime), 1, 178)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 8 updated by admin', CAST(0x0000A84F00A2FCDF AS DateTime), 1, 179)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 7 updated by admin', CAST(0x0000A84F00AFD7EB AS DateTime), 1, 180)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 8 updated by admin', CAST(0x0000A84F00B01E39 AS DateTime), 1, 181)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 10 created by admin', CAST(0x0000A84F00C5B5BB AS DateTime), 1, 182)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 10 updated by admin', CAST(0x0000A84F00C62EA2 AS DateTime), 1, 183)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 10 updated by admin', CAST(0x0000A84F00C64339 AS DateTime), 1, 184)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 10 updated by admin', CAST(0x0000A84F00C7188D AS DateTime), 1, 185)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00003 is created by admin', CAST(0x0000A84F00FCA636 AS DateTime), 1, 186)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00003 is created by admin', CAST(0x0000A84F00FE86A6 AS DateTime), 1, 187)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00003 is created by admin', CAST(0x0000A84F00FF0763 AS DateTime), 1, 188)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00003 is created by admin', CAST(0x0000A84F01000BDE AS DateTime), 1, 189)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00003 is created by admin', CAST(0x0000A84F0100B314 AS DateTime), 1, 190)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00003 is created by admin', CAST(0x0000A84F01019EF0 AS DateTime), 1, 191)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00003 is created by admin', CAST(0x0000A84F0104385E AS DateTime), 1, 192)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00003 is created by admin', CAST(0x0000A84F01071765 AS DateTime), 1, 193)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00003 is created by admin', CAST(0x0000A84F010749DD AS DateTime), 1, 194)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00003 is created by admin', CAST(0x0000A84F01075EB8 AS DateTime), 1, 195)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00003 is created by admin', CAST(0x0000A84F010E526E AS DateTime), 1, 196)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00004 is created by admin', CAST(0x0000A84F010EFBC8 AS DateTime), 1, 197)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00005 is created by admin', CAST(0x0000A84F01199609 AS DateTime), 1, 198)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00006 is created by admin', CAST(0x0000A84F012133D1 AS DateTime), 1, 199)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00007 is created by admin', CAST(0x0000A84F0124050C AS DateTime), 1, 200)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00008 is created by admin', CAST(0x0000A84F01254B4C AS DateTime), 1, 201)
GO
print 'Processed 200 total records'
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00009 is created by admin', CAST(0x0000A84F012C1009 AS DateTime), 1, 202)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 10 updated by admin', CAST(0x0000A85000B54A01 AS DateTime), 1, 203)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00008 is created by admin', CAST(0x0000A85000BD46FC AS DateTime), 1, 204)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00005 is created by admin', CAST(0x0000A85000CA50D3 AS DateTime), 1, 205)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00006 is created by admin', CAST(0x0000A8500115EB66 AS DateTime), 1, 206)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00007 is created by admin', CAST(0x0000A850011BC651 AS DateTime), 1, 207)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00008 is created by admin', CAST(0x0000A850011CD02F AS DateTime), 1, 208)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N' GoodsInward  No. GIW-00008 is updated by admin', CAST(0x0000A850011CF263 AS DateTime), 1, 209)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00009 is created by admin', CAST(0x0000A85200B47206 AS DateTime), 1, 210)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00010 is created by admin', CAST(0x0000A85200BD72D5 AS DateTime), 1, 211)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00011 is created by admin', CAST(0x0000A85200BE995C AS DateTime), 1, 212)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00012 is created by admin', CAST(0x0000A85200C7F726 AS DateTime), 1, 213)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00013 is created by admin', CAST(0x0000A85200E0B4E1 AS DateTime), 1, 214)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00014 is created by admin', CAST(0x0000A85200E52BB9 AS DateTime), 1, 215)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N' venderpo  No. VPO-00013 is updated by admin', CAST(0x0000A85200EF6DBD AS DateTime), 1, 216)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00015 is created by admin', CAST(0x0000A85200F1A366 AS DateTime), 1, 217)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 10 updated by admin', CAST(0x0000A85201064052 AS DateTime), 1, 218)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00010 is created by admin', CAST(0x0000A8520107277A AS DateTime), 1, 219)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00011 is created by admin', CAST(0x0000A8520107780F AS DateTime), 1, 220)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85201204396 AS DateTime), 1, 221)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A852012043BA AS DateTime), 1, 222)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A852012043CA AS DateTime), 1, 223)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A852012043D2 AS DateTime), 1, 224)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A852012043DB AS DateTime), 1, 225)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A852012043E7 AS DateTime), 1, 226)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A852012043EF AS DateTime), 1, 227)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A852012043FC AS DateTime), 1, 228)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A8520120440C AS DateTime), 1, 229)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85201204414 AS DateTime), 1, 230)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A8520120441D AS DateTime), 1, 231)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00009 is created by admin', CAST(0x0000A8520128B619 AS DateTime), 1, 232)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00010 is created by admin', CAST(0x0000A85400A72273 AS DateTime), 1, 233)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00010 is created by admin', CAST(0x0000A85400C6979A AS DateTime), 1, 234)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00010 is created by admin', CAST(0x0000A85400C697A2 AS DateTime), 1, 235)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00010 is created by admin', CAST(0x0000A85400C697AA AS DateTime), 1, 236)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00010 is created by admin', CAST(0x0000A85400C697B1 AS DateTime), 1, 237)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00010 is created by admin', CAST(0x0000A85400C697B8 AS DateTime), 1, 238)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00010 is created by admin', CAST(0x0000A85400C697BF AS DateTime), 1, 239)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00010 is created by admin', CAST(0x0000A85400C697C7 AS DateTime), 1, 240)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00010 is created by admin', CAST(0x0000A85400C697CE AS DateTime), 1, 241)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00010 is created by admin', CAST(0x0000A85400C697D5 AS DateTime), 1, 242)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00010 is created by admin', CAST(0x0000A85400C697DD AS DateTime), 1, 243)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00010 is created by admin', CAST(0x0000A85400C697E5 AS DateTime), 1, 244)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA08D6 AS DateTime), 1, 245)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA08DD AS DateTime), 1, 246)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA08E5 AS DateTime), 1, 247)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA08ED AS DateTime), 1, 248)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA08F5 AS DateTime), 1, 249)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA08FD AS DateTime), 1, 250)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA0904 AS DateTime), 1, 251)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA090C AS DateTime), 1, 252)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA0913 AS DateTime), 1, 253)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA091B AS DateTime), 1, 254)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA0923 AS DateTime), 1, 255)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA2C8A AS DateTime), 1, 256)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA3259 AS DateTime), 1, 257)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA404D AS DateTime), 1, 258)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA420F AS DateTime), 1, 259)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA42EF AS DateTime), 1, 260)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA43AB AS DateTime), 1, 261)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA4444 AS DateTime), 1, 262)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA44F0 AS DateTime), 1, 263)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA4584 AS DateTime), 1, 264)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA4629 AS DateTime), 1, 265)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00011 is created by admin', CAST(0x0000A85400CA46DD AS DateTime), 1, 266)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A85400D64322 AS DateTime), 1, 267)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A85400D64329 AS DateTime), 1, 268)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A85400D64330 AS DateTime), 1, 269)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A85400D64337 AS DateTime), 1, 270)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A85400D64340 AS DateTime), 1, 271)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A85400D64348 AS DateTime), 1, 272)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A85400D6434F AS DateTime), 1, 273)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A85400D64356 AS DateTime), 1, 274)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A85400D6435F AS DateTime), 1, 275)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A85400D64367 AS DateTime), 1, 276)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A85400D6436E AS DateTime), 1, 277)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00005 is created by admin', CAST(0x0000A85500B4E667 AS DateTime), 1, 278)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00005 is created by admin', CAST(0x0000A85500B4E67B AS DateTime), 1, 279)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00005 is created by admin', CAST(0x0000A85500B4E683 AS DateTime), 1, 280)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00005 is created by admin', CAST(0x0000A85500B4E68C AS DateTime), 1, 281)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00005 is created by admin', CAST(0x0000A85500B4E694 AS DateTime), 1, 282)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00005 is created by admin', CAST(0x0000A85500B4E6A6 AS DateTime), 1, 283)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00005 is created by admin', CAST(0x0000A85500B4E6AF AS DateTime), 1, 284)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00005 is created by admin', CAST(0x0000A85500B4E6B7 AS DateTime), 1, 285)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00005 is created by admin', CAST(0x0000A85500B4E6C8 AS DateTime), 1, 286)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00005 is created by admin', CAST(0x0000A85500B4E6D1 AS DateTime), 1, 287)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00005 is created by admin', CAST(0x0000A85500B4E6D9 AS DateTime), 1, 288)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00004 is created by admin', CAST(0x0000A85500B5DF77 AS DateTime), 1, 289)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00004 is created by admin', CAST(0x0000A85500B5DF7E AS DateTime), 1, 290)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00004 is created by admin', CAST(0x0000A85500B5DF8B AS DateTime), 1, 291)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00004 is created by admin', CAST(0x0000A85500B5DF98 AS DateTime), 1, 292)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00004 is created by admin', CAST(0x0000A85500B5DFA6 AS DateTime), 1, 293)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00004 is created by admin', CAST(0x0000A85500B5DFAF AS DateTime), 1, 294)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00004 is created by admin', CAST(0x0000A85500B5DFC0 AS DateTime), 1, 295)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00004 is created by admin', CAST(0x0000A85500B5DFC8 AS DateTime), 1, 296)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00004 is created by admin', CAST(0x0000A85500B5DFCF AS DateTime), 1, 297)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00004 is created by admin', CAST(0x0000A85500B5DFD9 AS DateTime), 1, 298)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00004 is created by admin', CAST(0x0000A85500B5DFE0 AS DateTime), 1, 299)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00003 is created by admin', CAST(0x0000A85500B6ABA5 AS DateTime), 1, 300)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00003 is created by admin', CAST(0x0000A85500B6ABAC AS DateTime), 1, 301)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00003 is created by admin', CAST(0x0000A85500B6ABB3 AS DateTime), 1, 302)
GO
print 'Processed 300 total records'
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00003 is created by admin', CAST(0x0000A85500B6ABBB AS DateTime), 1, 303)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00003 is created by admin', CAST(0x0000A85500B6ABC4 AS DateTime), 1, 304)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00003 is created by admin', CAST(0x0000A85500B6ABCC AS DateTime), 1, 305)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00003 is created by admin', CAST(0x0000A85500B6ABD4 AS DateTime), 1, 306)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00003 is created by admin', CAST(0x0000A85500B6ABDC AS DateTime), 1, 307)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00003 is created by admin', CAST(0x0000A85500B6ABE4 AS DateTime), 1, 308)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00003 is created by admin', CAST(0x0000A85500B6ABEB AS DateTime), 1, 309)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00003 is created by admin', CAST(0x0000A85500B6ABF2 AS DateTime), 1, 310)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00008 is created by admin', CAST(0x0000A85500FFB7EA AS DateTime), 1, 311)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00008 is created by admin', CAST(0x0000A85500FFB802 AS DateTime), 1, 312)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00008 is created by admin', CAST(0x0000A85500FFB80D AS DateTime), 1, 313)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00008 is created by admin', CAST(0x0000A85500FFB815 AS DateTime), 1, 314)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00008 is created by admin', CAST(0x0000A85500FFB81D AS DateTime), 1, 315)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00008 is created by admin', CAST(0x0000A85500FFB82C AS DateTime), 1, 316)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00008 is created by admin', CAST(0x0000A85500FFB836 AS DateTime), 1, 317)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00008 is created by admin', CAST(0x0000A85500FFB83E AS DateTime), 1, 318)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00008 is created by admin', CAST(0x0000A85500FFB848 AS DateTime), 1, 319)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00008 is created by admin', CAST(0x0000A85500FFB850 AS DateTime), 1, 320)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00008 is created by admin', CAST(0x0000A85500FFB858 AS DateTime), 1, 321)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A85501022075 AS DateTime), 1, 322)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A85501022081 AS DateTime), 1, 323)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A8550102208B AS DateTime), 1, 324)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A85501022093 AS DateTime), 1, 325)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A8550102209E AS DateTime), 1, 326)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010220BC AS DateTime), 1, 327)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010220CB AS DateTime), 1, 328)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010220D3 AS DateTime), 1, 329)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010220DC AS DateTime), 1, 330)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010220E8 AS DateTime), 1, 331)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010220F7 AS DateTime), 1, 332)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A85501023394 AS DateTime), 1, 333)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010233C8 AS DateTime), 1, 334)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010233CF AS DateTime), 1, 335)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010233D6 AS DateTime), 1, 336)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010233DE AS DateTime), 1, 337)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010233E8 AS DateTime), 1, 338)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010233F4 AS DateTime), 1, 339)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A85501023419 AS DateTime), 1, 340)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A85501023458 AS DateTime), 1, 341)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A8550102345F AS DateTime), 1, 342)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A85501023468 AS DateTime), 1, 343)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A8550102603C AS DateTime), 1, 344)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A8550102605D AS DateTime), 1, 345)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A8550102606A AS DateTime), 1, 346)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A85501026076 AS DateTime), 1, 347)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A8550102607E AS DateTime), 1, 348)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A85501026085 AS DateTime), 1, 349)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A85501026091 AS DateTime), 1, 350)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A8550102609C AS DateTime), 1, 351)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010260A4 AS DateTime), 1, 352)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010260B5 AS DateTime), 1, 353)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00006 is created by admin', CAST(0x0000A855010260C4 AS DateTime), 1, 354)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A8550102B54D AS DateTime), 1, 355)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A8550102B555 AS DateTime), 1, 356)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A8550102B55E AS DateTime), 1, 357)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A8550102B568 AS DateTime), 1, 358)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A8550102B571 AS DateTime), 1, 359)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A8550102B57A AS DateTime), 1, 360)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A8550102B583 AS DateTime), 1, 361)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A8550102B58C AS DateTime), 1, 362)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A8550102B595 AS DateTime), 1, 363)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A8550102B59F AS DateTime), 1, 364)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00009 is created by admin', CAST(0x0000A8550102B5A8 AS DateTime), 1, 365)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. JDISP-00001 is created by admin', CAST(0x0000A85600A4B68E AS DateTime), 1, 366)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. JDISP-00002 is created by admin', CAST(0x0000A85600A5ABB8 AS DateTime), 1, 367)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00003 is created by admin', CAST(0x0000A8560109FB0F AS DateTime), 1, 368)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 11 created by admin', CAST(0x0000A857010CD806 AS DateTime), 1, 369)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 11 updated by admin', CAST(0x0000A857010D3FD1 AS DateTime), 1, 370)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 10 updated by admin', CAST(0x0000A8570114A911 AS DateTime), 1, 371)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 10 updated by admin', CAST(0x0000A8570114B6B6 AS DateTime), 1, 372)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 11 updated by admin', CAST(0x0000A85701281823 AS DateTime), 1, 373)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 11 updated by admin', CAST(0x0000A8570129A48B AS DateTime), 1, 374)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 12 created by admin', CAST(0x0000A857012AFF22 AS DateTime), 1, 375)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 12 updated by admin', CAST(0x0000A857012B4596 AS DateTime), 1, 376)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 12 updated by admin', CAST(0x0000A857012D87E1 AS DateTime), 1, 377)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 12 updated by admin', CAST(0x0000A857012EDB73 AS DateTime), 1, 378)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 12 updated by admin', CAST(0x0000A85701302B03 AS DateTime), 1, 379)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 12 updated by admin', CAST(0x0000A8570130B291 AS DateTime), 1, 380)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 12 updated by admin', CAST(0x0000A8570130F38B AS DateTime), 1, 381)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 12 updated by admin', CAST(0x0000A85701358EEC AS DateTime), 1, 382)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 12 updated by admin', CAST(0x0000A85701365636 AS DateTime), 1, 383)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 12 updated by admin', CAST(0x0000A857013EEAFC AS DateTime), 1, 384)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 12 updated by admin', CAST(0x0000A85701403AA2 AS DateTime), 1, 385)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 12 updated by admin', CAST(0x0000A85701426D99 AS DateTime), 1, 386)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 13 created by admin', CAST(0x0000A8570143D918 AS DateTime), 1, 387)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 13 updated by admin', CAST(0x0000A8570144055E AS DateTime), 1, 388)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 13 updated by admin', CAST(0x0000A8570146A1B3 AS DateTime), 1, 389)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 13 updated by admin', CAST(0x0000A85800A5A9CD AS DateTime), 1, 390)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 13 updated by admin', CAST(0x0000A85800AEC7E7 AS DateTime), 1, 391)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 13 updated by admin', CAST(0x0000A85800AF8EF2 AS DateTime), 1, 392)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 12 updated by admin', CAST(0x0000A85800B200E3 AS DateTime), 1, 393)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 12 updated by admin', CAST(0x0000A85800B2A535 AS DateTime), 1, 394)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 12 updated by admin', CAST(0x0000A85800BF1D2C AS DateTime), 1, 395)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 14 created by admin', CAST(0x0000A85800C9EC03 AS DateTime), 1, 396)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 14 updated by admin', CAST(0x0000A85800CA2F9C AS DateTime), 1, 397)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 14 updated by admin', CAST(0x0000A85800CB936A AS DateTime), 1, 398)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 15 created by admin', CAST(0x0000A85800CCFE6B AS DateTime), 1, 399)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 15 updated by admin', CAST(0x0000A85800CECF4C AS DateTime), 1, 400)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 15 updated by admin', CAST(0x0000A85800CEF96A AS DateTime), 1, 401)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 16 created by admin', CAST(0x0000A85800D3892C AS DateTime), 1, 402)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 16 updated by admin', CAST(0x0000A85800D3D292 AS DateTime), 1, 403)
GO
print 'Processed 400 total records'
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 16 updated by admin', CAST(0x0000A85800E274B9 AS DateTime), 1, 404)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 17 created by admin', CAST(0x0000A85800E7D31B AS DateTime), 1, 405)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 17 updated by admin', CAST(0x0000A85800E80954 AS DateTime), 1, 406)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 17 updated by admin', CAST(0x0000A85800E8358B AS DateTime), 1, 407)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 18 created by admin', CAST(0x0000A85800E8BAEF AS DateTime), 1, 408)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 18 updated by admin', CAST(0x0000A85800E9191C AS DateTime), 1, 409)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 18 updated by admin', CAST(0x0000A85800E93403 AS DateTime), 1, 410)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 11 updated by admin', CAST(0x0000A85800EB6513 AS DateTime), 1, 411)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 19 created by admin', CAST(0x0000A85800EBF6FE AS DateTime), 1, 412)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 19 updated by admin', CAST(0x0000A85800EC3823 AS DateTime), 1, 413)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 19 updated by admin', CAST(0x0000A85800ED03D6 AS DateTime), 1, 414)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 19 updated by admin', CAST(0x0000A85800ED30D8 AS DateTime), 1, 415)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 20 created by admin', CAST(0x0000A85800EDECAE AS DateTime), 1, 416)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 20 updated by admin', CAST(0x0000A85800EF2E33 AS DateTime), 1, 417)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 20 updated by admin', CAST(0x0000A85800EF6FB8 AS DateTime), 1, 418)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 21 created by admin', CAST(0x0000A85800F336A6 AS DateTime), 1, 419)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 21 updated by admin', CAST(0x0000A85800F37668 AS DateTime), 1, 420)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 21 updated by admin', CAST(0x0000A85800F38EB4 AS DateTime), 1, 421)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 22 created by admin', CAST(0x0000A85800F68CB5 AS DateTime), 1, 422)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 22 updated by admin', CAST(0x0000A85800F70EC8 AS DateTime), 1, 423)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 22 updated by admin', CAST(0x0000A85800F71F20 AS DateTime), 1, 424)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 23 created by admin', CAST(0x0000A8580102BF11 AS DateTime), 1, 425)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 23 updated by admin', CAST(0x0000A8580102F6F1 AS DateTime), 1, 426)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 24 created by admin', CAST(0x0000A858010A48CF AS DateTime), 1, 427)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 24 updated by admin', CAST(0x0000A858010A991F AS DateTime), 1, 428)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 25 created by admin', CAST(0x0000A858010B3051 AS DateTime), 1, 429)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 25 updated by admin', CAST(0x0000A858010B59B3 AS DateTime), 1, 430)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 25 updated by admin', CAST(0x0000A858010B72AB AS DateTime), 1, 431)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 26 created by admin', CAST(0x0000A8580111BD35 AS DateTime), 1, 432)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 26 updated by admin', CAST(0x0000A8580111ED7F AS DateTime), 1, 433)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 26 updated by admin', CAST(0x0000A858011207B1 AS DateTime), 1, 434)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 27 created by admin', CAST(0x0000A85801126338 AS DateTime), 1, 435)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 27 updated by admin', CAST(0x0000A85801129034 AS DateTime), 1, 436)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 28 created by admin', CAST(0x0000A85801145C72 AS DateTime), 1, 437)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 28 updated by admin', CAST(0x0000A8580114A2BC AS DateTime), 1, 438)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 29 created by admin', CAST(0x0000A858011CAAC2 AS DateTime), 1, 439)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 29 updated by admin', CAST(0x0000A858011CD9B8 AS DateTime), 1, 440)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 30 created by admin', CAST(0x0000A8580122E8C9 AS DateTime), 1, 441)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 30 updated by admin', CAST(0x0000A85801230F88 AS DateTime), 1, 442)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 31 created by admin', CAST(0x0000A85801273E01 AS DateTime), 1, 443)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 31 updated by admin', CAST(0x0000A85801276AAD AS DateTime), 1, 444)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 32 created by admin', CAST(0x0000A858012B69E3 AS DateTime), 1, 445)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 32 updated by admin', CAST(0x0000A858012BA7F8 AS DateTime), 1, 446)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 32 updated by admin', CAST(0x0000A858012D56E4 AS DateTime), 1, 447)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 33 created by admin', CAST(0x0000A85801301005 AS DateTime), 1, 448)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 33 updated by admin', CAST(0x0000A85801309041 AS DateTime), 1, 449)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 33 updated by admin', CAST(0x0000A8580130FE74 AS DateTime), 1, 450)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'PO', N'PO of Inquiry no. 25 updated by admin', CAST(0x0000A85900D2DCCF AS DateTime), 1, 451)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Work Order No. WO-00012 is created by admin', CAST(0x0000A85900D37D36 AS DateTime), 1, 452)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00016 is created by admin', CAST(0x0000A85900DBB1F9 AS DateTime), 1, 453)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00011 is created by admin', CAST(0x0000A85900DC0355 AS DateTime), 1, 454)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInwardsItemdetails', NULL, CAST(0x0000A85900DC040B AS DateTime), 1, 455)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00012 is created by admin', CAST(0x0000A8590102694A AS DateTime), 1, 456)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00012 is created by admin', CAST(0x0000A85901026950 AS DateTime), 1, 457)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00012 is created by admin', CAST(0x0000A85901026954 AS DateTime), 1, 458)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00012 is created by admin', CAST(0x0000A85901026957 AS DateTime), 1, 459)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00012 is created by admin', CAST(0x0000A85901026959 AS DateTime), 1, 460)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00012 is created by admin', CAST(0x0000A8590102695C AS DateTime), 1, 461)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00012 is created by admin', CAST(0x0000A8590102695E AS DateTime), 1, 462)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00012 is created by admin', CAST(0x0000A85901026960 AS DateTime), 1, 463)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00012 is created by admin', CAST(0x0000A85901026963 AS DateTime), 1, 464)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00012 is created by admin', CAST(0x0000A85901026965 AS DateTime), 1, 465)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrderDetails', N'New Work Order details for Work Order No. WO-00012 is created by admin', CAST(0x0000A85901026968 AS DateTime), 1, 466)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'venderpo', N'New vender po No. VPO-00017 is created by admin', CAST(0x0000A8590103FB53 AS DateTime), 1, 467)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00003 is created by admin', CAST(0x0000A859010BB843 AS DateTime), 1, 468)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00004 is created by admin', CAST(0x0000A859011CB74B AS DateTime), 1, 469)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A859011CCE06 AS DateTime), 1, 470)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A859011CE038 AS DateTime), 1, 471)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00005 is created by admin', CAST(0x0000A859011D5603 AS DateTime), 1, 472)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A859011D8880 AS DateTime), 1, 473)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00006 is created by admin', CAST(0x0000A859011DE09A AS DateTime), 1, 474)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A859011E3A53 AS DateTime), 1, 475)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00007 is created by admin', CAST(0x0000A859011FD673 AS DateTime), 1, 476)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00008 is created by admin', CAST(0x0000A85901207FAF AS DateTime), 1, 477)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A85901209160 AS DateTime), 1, 478)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00009 is created by admin', CAST(0x0000A8590120FD64 AS DateTime), 1, 479)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-000010 is created by admin', CAST(0x0000A8590121939E AS DateTime), 1, 480)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A8590121A378 AS DateTime), 1, 481)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-000011 is created by admin', CAST(0x0000A8590121BDDC AS DateTime), 1, 482)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A85901220D2D AS DateTime), 1, 483)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A85901220E4F AS DateTime), 1, 484)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-000012 is created by admin', CAST(0x0000A85901222E7E AS DateTime), 1, 485)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A85901223BC9 AS DateTime), 1, 486)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-000013 is created by admin', CAST(0x0000A8590122536D AS DateTime), 1, 487)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A85901225C9C AS DateTime), 1, 488)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A8590122AE98 AS DateTime), 1, 489)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-000014 is created by admin', CAST(0x0000A8590122BE52 AS DateTime), 1, 490)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A8590122CA34 AS DateTime), 1, 491)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-000015 is created by admin', CAST(0x0000A8590122D929 AS DateTime), 1, 492)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A8590123037F AS DateTime), 1, 493)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-000016 is created by admin', CAST(0x0000A859012315DD AS DateTime), 1, 494)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-000017 is created by admin', CAST(0x0000A85901232C8B AS DateTime), 1, 495)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A85901235E2C AS DateTime), 1, 496)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A85901236090 AS DateTime), 1, 497)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-000018 is created by admin', CAST(0x0000A8590123A626 AS DateTime), 1, 498)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A8590123F0FD AS DateTime), 1, 499)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-000019 is created by admin', CAST(0x0000A85901240004 AS DateTime), 1, 500)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A85901240B42 AS DateTime), 1, 501)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-000020 is created by admin', CAST(0x0000A85901241A36 AS DateTime), 1, 502)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00021 is created by admin', CAST(0x0000A859012532A7 AS DateTime), 1, 503)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00022 is created by admin', CAST(0x0000A8590126CFAF AS DateTime), 1, 504)
GO
print 'Processed 500 total records'
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00012 is created by admin', CAST(0x0000A859012AE672 AS DateTime), 1, 505)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInwardsItemdetails', NULL, CAST(0x0000A859012AE764 AS DateTime), 1, 506)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00013 is created by admin', CAST(0x0000A8590130A25C AS DateTime), 1, 507)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInwardsItemdetails', NULL, CAST(0x0000A8590130A68B AS DateTime), 1, 508)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00023 is created by admin', CAST(0x0000A859013D3E24 AS DateTime), 1, 509)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00024 is created by admin', CAST(0x0000A859013DCA48 AS DateTime), 1, 510)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A859013E76CB AS DateTime), 1, 511)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', NULL, CAST(0x0000A859013EBB35 AS DateTime), 1, 512)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. DISP-00025 is created by admin', CAST(0x0000A859013F2729 AS DateTime), 1, 513)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInward', N'New  GoodsInward No. GIW-00014 is created by admin', CAST(0x0000A859013F9499 AS DateTime), 1, 514)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'GoodsInwardsItemdetails', NULL, CAST(0x0000A859013F9565 AS DateTime), 1, 515)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Cutting Instruction Issue No. 0 is created by admin', CAST(0x0000A85C00C8E454 AS DateTime), 1, 516)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Cutting Instruction Issue No. 0 is created by admin', CAST(0x0000A85C00C91F1F AS DateTime), 1, 517)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Cutting Instruction Issue No. 0 is created by admin', CAST(0x0000A85C00C97975 AS DateTime), 1, 518)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New Cutting Instruction Issue No. 0 is created by admin', CAST(0x0000A85C00CA136A AS DateTime), 1, 519)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Inquiry', N'New Inquiry no. 34 created by admin', CAST(0x0000A86300FABDA2 AS DateTime), 1, 520)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Feasibility', N'Feasibility of Inquiry no. 31 updated by admin', CAST(0x0000A86300FDEA54 AS DateTime), 1, 521)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'Quotation', N'Quotation of Inquiry no. 31 updated by admin', CAST(0x0000A86301022FBB AS DateTime), 1, 522)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. JDISP-00003 is created by admin', CAST(0x0000A88E00B107A5 AS DateTime), 1, 523)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DeliveryChallan', N' DeliveryChallan  No. JDISP-00003 is updated by admin', CAST(0x0000A88E00B2F541 AS DateTime), 1, 524)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. JDISP-00004 is created by admin', CAST(0x0000A88E00B7B25C AS DateTime), 1, 525)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'WorkOrder', N'New DeliveryChallan No. JDISP-00005 is created by admin', CAST(0x0000A88E00BE1117 AS DateTime), 1, 526)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A23E0 AS DateTime), 1, 527)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A241C AS DateTime), 1, 528)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2427 AS DateTime), 1, 529)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2432 AS DateTime), 1, 530)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A243D AS DateTime), 1, 531)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2447 AS DateTime), 1, 532)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2465 AS DateTime), 1, 533)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2472 AS DateTime), 1, 534)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2481 AS DateTime), 1, 535)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A248C AS DateTime), 1, 536)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2497 AS DateTime), 1, 537)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A24A0 AS DateTime), 1, 538)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A24AA AS DateTime), 1, 539)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A24B5 AS DateTime), 1, 540)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A24C0 AS DateTime), 1, 541)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A24CA AS DateTime), 1, 542)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A24D6 AS DateTime), 1, 543)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A24E0 AS DateTime), 1, 544)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A24F0 AS DateTime), 1, 545)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A24FD AS DateTime), 1, 546)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2509 AS DateTime), 1, 547)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2514 AS DateTime), 1, 548)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2521 AS DateTime), 1, 549)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A252F AS DateTime), 1, 550)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A253C AS DateTime), 1, 551)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2548 AS DateTime), 1, 552)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2553 AS DateTime), 1, 553)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2560 AS DateTime), 1, 554)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2571 AS DateTime), 1, 555)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2590 AS DateTime), 1, 556)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A259A AS DateTime), 1, 557)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A25A6 AS DateTime), 1, 558)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A25B1 AS DateTime), 1, 559)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A25BB AS DateTime), 1, 560)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A25C6 AS DateTime), 1, 561)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A25D2 AS DateTime), 1, 562)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A25DE AS DateTime), 1, 563)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A25E9 AS DateTime), 1, 564)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A25F3 AS DateTime), 1, 565)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2600 AS DateTime), 1, 566)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A260C AS DateTime), 1, 567)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2618 AS DateTime), 1, 568)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2626 AS DateTime), 1, 569)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2630 AS DateTime), 1, 570)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A263B AS DateTime), 1, 571)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2649 AS DateTime), 1, 572)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A265C AS DateTime), 1, 573)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2668 AS DateTime), 1, 574)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2676 AS DateTime), 1, 575)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2681 AS DateTime), 1, 576)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A268D AS DateTime), 1, 577)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2699 AS DateTime), 1, 578)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A26A5 AS DateTime), 1, 579)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A26B7 AS DateTime), 1, 580)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A26C3 AS DateTime), 1, 581)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A26CF AS DateTime), 1, 582)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A26DB AS DateTime), 1, 583)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A26E6 AS DateTime), 1, 584)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A26F2 AS DateTime), 1, 585)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A26FE AS DateTime), 1, 586)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A270B AS DateTime), 1, 587)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2717 AS DateTime), 1, 588)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2722 AS DateTime), 1, 589)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A272D AS DateTime), 1, 590)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A273A AS DateTime), 1, 591)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2745 AS DateTime), 1, 592)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2752 AS DateTime), 1, 593)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2762 AS DateTime), 1, 594)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A276D AS DateTime), 1, 595)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2778 AS DateTime), 1, 596)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2786 AS DateTime), 1, 597)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2793 AS DateTime), 1, 598)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A279F AS DateTime), 1, 599)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A27A9 AS DateTime), 1, 600)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A27B4 AS DateTime), 1, 601)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A27BF AS DateTime), 1, 602)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A27CA AS DateTime), 1, 603)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A27D5 AS DateTime), 1, 604)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A27DF AS DateTime), 1, 605)
GO
print 'Processed 600 total records'
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2804 AS DateTime), 1, 606)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2813 AS DateTime), 1, 607)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A281F AS DateTime), 1, 608)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2830 AS DateTime), 1, 609)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A283B AS DateTime), 1, 610)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2848 AS DateTime), 1, 611)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2853 AS DateTime), 1, 612)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A285E AS DateTime), 1, 613)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2869 AS DateTime), 1, 614)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2876 AS DateTime), 1, 615)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2881 AS DateTime), 1, 616)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A288C AS DateTime), 1, 617)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A2898 AS DateTime), 1, 618)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1010A28A5 AS DateTime), 1, 619)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10122F85C AS DateTime), 1, 620)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101239985 AS DateTime), 1, 621)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123DFD5 AS DateTime), 1, 622)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123DFDE AS DateTime), 1, 623)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E02D AS DateTime), 1, 624)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E03A AS DateTime), 1, 625)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E04E AS DateTime), 1, 626)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E058 AS DateTime), 1, 627)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E06D AS DateTime), 1, 628)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E076 AS DateTime), 1, 629)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E07E AS DateTime), 1, 630)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E086 AS DateTime), 1, 631)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E094 AS DateTime), 1, 632)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E09C AS DateTime), 1, 633)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E0B9 AS DateTime), 1, 634)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E0E7 AS DateTime), 1, 635)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E0FD AS DateTime), 1, 636)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E106 AS DateTime), 1, 637)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E10F AS DateTime), 1, 638)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E118 AS DateTime), 1, 639)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E124 AS DateTime), 1, 640)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E131 AS DateTime), 1, 641)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E13A AS DateTime), 1, 642)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E14C AS DateTime), 1, 643)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E15F AS DateTime), 1, 644)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E168 AS DateTime), 1, 645)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E174 AS DateTime), 1, 646)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E181 AS DateTime), 1, 647)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E18A AS DateTime), 1, 648)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E192 AS DateTime), 1, 649)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E19B AS DateTime), 1, 650)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E1A4 AS DateTime), 1, 651)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E1AD AS DateTime), 1, 652)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E1B6 AS DateTime), 1, 653)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E1BF AS DateTime), 1, 654)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E1CB AS DateTime), 1, 655)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E1D5 AS DateTime), 1, 656)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E1E3 AS DateTime), 1, 657)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E1EB AS DateTime), 1, 658)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E211 AS DateTime), 1, 659)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E21D AS DateTime), 1, 660)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E22B AS DateTime), 1, 661)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E235 AS DateTime), 1, 662)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E23C AS DateTime), 1, 663)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E24A AS DateTime), 1, 664)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E253 AS DateTime), 1, 665)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E25C AS DateTime), 1, 666)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E268 AS DateTime), 1, 667)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E271 AS DateTime), 1, 668)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E27E AS DateTime), 1, 669)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E289 AS DateTime), 1, 670)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E299 AS DateTime), 1, 671)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E2A3 AS DateTime), 1, 672)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E2AC AS DateTime), 1, 673)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E2BE AS DateTime), 1, 674)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E2C6 AS DateTime), 1, 675)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E2CF AS DateTime), 1, 676)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E2D9 AS DateTime), 1, 677)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E2E1 AS DateTime), 1, 678)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E2EB AS DateTime), 1, 679)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E2F4 AS DateTime), 1, 680)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E2FC AS DateTime), 1, 681)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E309 AS DateTime), 1, 682)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E312 AS DateTime), 1, 683)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E31C AS DateTime), 1, 684)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E324 AS DateTime), 1, 685)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E335 AS DateTime), 1, 686)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E343 AS DateTime), 1, 687)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E34D AS DateTime), 1, 688)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E35A AS DateTime), 1, 689)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E363 AS DateTime), 1, 690)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E36C AS DateTime), 1, 691)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E375 AS DateTime), 1, 692)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E384 AS DateTime), 1, 693)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E38E AS DateTime), 1, 694)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E398 AS DateTime), 1, 695)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E3A7 AS DateTime), 1, 696)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E3B2 AS DateTime), 1, 697)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E3BF AS DateTime), 1, 698)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E3CB AS DateTime), 1, 699)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E3D6 AS DateTime), 1, 700)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E3EF AS DateTime), 1, 701)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E409 AS DateTime), 1, 702)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E415 AS DateTime), 1, 703)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E420 AS DateTime), 1, 704)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E429 AS DateTime), 1, 705)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E439 AS DateTime), 1, 706)
GO
print 'Processed 700 total records'
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E44B AS DateTime), 1, 707)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E453 AS DateTime), 1, 708)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E460 AS DateTime), 1, 709)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E469 AS DateTime), 1, 710)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E473 AS DateTime), 1, 711)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E47C AS DateTime), 1, 712)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E487 AS DateTime), 1, 713)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10123E492 AS DateTime), 1, 714)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124437F AS DateTime), 1, 715)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244389 AS DateTime), 1, 716)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244391 AS DateTime), 1, 717)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124439A AS DateTime), 1, 718)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012443A2 AS DateTime), 1, 719)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012443AA AS DateTime), 1, 720)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012443B3 AS DateTime), 1, 721)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012443BB AS DateTime), 1, 722)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012443C3 AS DateTime), 1, 723)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012443CC AS DateTime), 1, 724)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012443D3 AS DateTime), 1, 725)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012443DC AS DateTime), 1, 726)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012443E4 AS DateTime), 1, 727)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012443ED AS DateTime), 1, 728)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012443F9 AS DateTime), 1, 729)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244402 AS DateTime), 1, 730)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124440E AS DateTime), 1, 731)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124441D AS DateTime), 1, 732)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124442E AS DateTime), 1, 733)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244436 AS DateTime), 1, 734)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244449 AS DateTime), 1, 735)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244454 AS DateTime), 1, 736)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124445C AS DateTime), 1, 737)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244469 AS DateTime), 1, 738)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244471 AS DateTime), 1, 739)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244478 AS DateTime), 1, 740)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244489 AS DateTime), 1, 741)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244494 AS DateTime), 1, 742)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124449F AS DateTime), 1, 743)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012444A9 AS DateTime), 1, 744)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012444B3 AS DateTime), 1, 745)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012444C0 AS DateTime), 1, 746)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012444CF AS DateTime), 1, 747)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012444DB AS DateTime), 1, 748)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012444E8 AS DateTime), 1, 749)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012444F1 AS DateTime), 1, 750)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012444F9 AS DateTime), 1, 751)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244501 AS DateTime), 1, 752)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124450B AS DateTime), 1, 753)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244514 AS DateTime), 1, 754)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124451E AS DateTime), 1, 755)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244527 AS DateTime), 1, 756)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244536 AS DateTime), 1, 757)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244542 AS DateTime), 1, 758)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124454D AS DateTime), 1, 759)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124455A AS DateTime), 1, 760)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244567 AS DateTime), 1, 761)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244574 AS DateTime), 1, 762)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244581 AS DateTime), 1, 763)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124458D AS DateTime), 1, 764)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244598 AS DateTime), 1, 765)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012445A3 AS DateTime), 1, 766)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012445AD AS DateTime), 1, 767)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012445B6 AS DateTime), 1, 768)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012445BF AS DateTime), 1, 769)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012445C9 AS DateTime), 1, 770)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012445D1 AS DateTime), 1, 771)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012445DA AS DateTime), 1, 772)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012445E3 AS DateTime), 1, 773)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012445ED AS DateTime), 1, 774)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012445F6 AS DateTime), 1, 775)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012445FF AS DateTime), 1, 776)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124460B AS DateTime), 1, 777)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244616 AS DateTime), 1, 778)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124461F AS DateTime), 1, 779)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244628 AS DateTime), 1, 780)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244633 AS DateTime), 1, 781)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124463D AS DateTime), 1, 782)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244646 AS DateTime), 1, 783)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244650 AS DateTime), 1, 784)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244659 AS DateTime), 1, 785)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244661 AS DateTime), 1, 786)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124466A AS DateTime), 1, 787)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244673 AS DateTime), 1, 788)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124467B AS DateTime), 1, 789)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244689 AS DateTime), 1, 790)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124469B AS DateTime), 1, 791)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012446A3 AS DateTime), 1, 792)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012446AC AS DateTime), 1, 793)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012446BE AS DateTime), 1, 794)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012446C6 AS DateTime), 1, 795)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012446CF AS DateTime), 1, 796)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012446DD AS DateTime), 1, 797)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012446E8 AS DateTime), 1, 798)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012446F5 AS DateTime), 1, 799)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244708 AS DateTime), 1, 800)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244715 AS DateTime), 1, 801)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124471F AS DateTime), 1, 802)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244727 AS DateTime), 1, 803)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244730 AS DateTime), 1, 804)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244739 AS DateTime), 1, 805)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244741 AS DateTime), 1, 806)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101244749 AS DateTime), 1, 807)
GO
print 'Processed 800 total records'
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7A2 AS DateTime), 1, 808)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7AB AS DateTime), 1, 809)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7B4 AS DateTime), 1, 810)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7BC AS DateTime), 1, 811)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7C5 AS DateTime), 1, 812)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7CC AS DateTime), 1, 813)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7D5 AS DateTime), 1, 814)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7DF AS DateTime), 1, 815)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7E8 AS DateTime), 1, 816)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7EF AS DateTime), 1, 817)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7F8 AS DateTime), 1, 818)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E7FF AS DateTime), 1, 819)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E808 AS DateTime), 1, 820)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E810 AS DateTime), 1, 821)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E819 AS DateTime), 1, 822)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E821 AS DateTime), 1, 823)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E829 AS DateTime), 1, 824)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E832 AS DateTime), 1, 825)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E83B AS DateTime), 1, 826)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E846 AS DateTime), 1, 827)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E855 AS DateTime), 1, 828)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E869 AS DateTime), 1, 829)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E875 AS DateTime), 1, 830)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E884 AS DateTime), 1, 831)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E88D AS DateTime), 1, 832)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E894 AS DateTime), 1, 833)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E89C AS DateTime), 1, 834)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E8A5 AS DateTime), 1, 835)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E8AC AS DateTime), 1, 836)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E8BD AS DateTime), 1, 837)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E8CC AS DateTime), 1, 838)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E8D6 AS DateTime), 1, 839)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E8E4 AS DateTime), 1, 840)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E8EE AS DateTime), 1, 841)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E8F7 AS DateTime), 1, 842)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E901 AS DateTime), 1, 843)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E909 AS DateTime), 1, 844)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E911 AS DateTime), 1, 845)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E91A AS DateTime), 1, 846)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E924 AS DateTime), 1, 847)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E969 AS DateTime), 1, 848)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E986 AS DateTime), 1, 849)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E995 AS DateTime), 1, 850)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E9A0 AS DateTime), 1, 851)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E9AA AS DateTime), 1, 852)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E9B3 AS DateTime), 1, 853)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E9BE AS DateTime), 1, 854)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E9C6 AS DateTime), 1, 855)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E9CE AS DateTime), 1, 856)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E9D8 AS DateTime), 1, 857)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E9E0 AS DateTime), 1, 858)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E9EA AS DateTime), 1, 859)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124E9F8 AS DateTime), 1, 860)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA00 AS DateTime), 1, 861)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA08 AS DateTime), 1, 862)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA11 AS DateTime), 1, 863)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA1A AS DateTime), 1, 864)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA25 AS DateTime), 1, 865)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA31 AS DateTime), 1, 866)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA3B AS DateTime), 1, 867)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA45 AS DateTime), 1, 868)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA50 AS DateTime), 1, 869)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA5A AS DateTime), 1, 870)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA63 AS DateTime), 1, 871)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA73 AS DateTime), 1, 872)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA7E AS DateTime), 1, 873)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA88 AS DateTime), 1, 874)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA91 AS DateTime), 1, 875)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EA9B AS DateTime), 1, 876)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EAA5 AS DateTime), 1, 877)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EAB2 AS DateTime), 1, 878)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EABD AS DateTime), 1, 879)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EAC9 AS DateTime), 1, 880)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EAD4 AS DateTime), 1, 881)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB00 AS DateTime), 1, 882)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB0D AS DateTime), 1, 883)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB17 AS DateTime), 1, 884)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB21 AS DateTime), 1, 885)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB39 AS DateTime), 1, 886)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB44 AS DateTime), 1, 887)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB4C AS DateTime), 1, 888)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB54 AS DateTime), 1, 889)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB5D AS DateTime), 1, 890)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB65 AS DateTime), 1, 891)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB6E AS DateTime), 1, 892)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB76 AS DateTime), 1, 893)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB80 AS DateTime), 1, 894)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB88 AS DateTime), 1, 895)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EB99 AS DateTime), 1, 896)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EBA2 AS DateTime), 1, 897)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EBAA AS DateTime), 1, 898)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EBB3 AS DateTime), 1, 899)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10124EBBB AS DateTime), 1, 900)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126136B AS DateTime), 1, 901)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126137F AS DateTime), 1, 902)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261388 AS DateTime), 1, 903)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126138F AS DateTime), 1, 904)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261398 AS DateTime), 1, 905)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012613A1 AS DateTime), 1, 906)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012613AA AS DateTime), 1, 907)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012613B8 AS DateTime), 1, 908)
GO
print 'Processed 900 total records'
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012613C2 AS DateTime), 1, 909)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012613CA AS DateTime), 1, 910)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012613D1 AS DateTime), 1, 911)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012613DA AS DateTime), 1, 912)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012613E2 AS DateTime), 1, 913)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012613EA AS DateTime), 1, 914)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012613F1 AS DateTime), 1, 915)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012613F9 AS DateTime), 1, 916)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261401 AS DateTime), 1, 917)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126140A AS DateTime), 1, 918)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261412 AS DateTime), 1, 919)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261419 AS DateTime), 1, 920)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261421 AS DateTime), 1, 921)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261429 AS DateTime), 1, 922)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261431 AS DateTime), 1, 923)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126143A AS DateTime), 1, 924)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261441 AS DateTime), 1, 925)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261449 AS DateTime), 1, 926)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261452 AS DateTime), 1, 927)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261459 AS DateTime), 1, 928)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261461 AS DateTime), 1, 929)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126146A AS DateTime), 1, 930)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261471 AS DateTime), 1, 931)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261479 AS DateTime), 1, 932)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261481 AS DateTime), 1, 933)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261496 AS DateTime), 1, 934)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012614A7 AS DateTime), 1, 935)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012614B2 AS DateTime), 1, 936)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012614BE AS DateTime), 1, 937)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012614C8 AS DateTime), 1, 938)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012614D2 AS DateTime), 1, 939)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012614DC AS DateTime), 1, 940)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012614EF AS DateTime), 1, 941)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012614F7 AS DateTime), 1, 942)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012614FF AS DateTime), 1, 943)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261507 AS DateTime), 1, 944)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126150F AS DateTime), 1, 945)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261516 AS DateTime), 1, 946)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126151E AS DateTime), 1, 947)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261527 AS DateTime), 1, 948)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261530 AS DateTime), 1, 949)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261539 AS DateTime), 1, 950)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261542 AS DateTime), 1, 951)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126154D AS DateTime), 1, 952)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126155C AS DateTime), 1, 953)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126156B AS DateTime), 1, 954)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126157A AS DateTime), 1, 955)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126158B AS DateTime), 1, 956)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261596 AS DateTime), 1, 957)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012615A0 AS DateTime), 1, 958)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012615A8 AS DateTime), 1, 959)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012615AF AS DateTime), 1, 960)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012615B8 AS DateTime), 1, 961)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012615C0 AS DateTime), 1, 962)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012615D4 AS DateTime), 1, 963)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012615E1 AS DateTime), 1, 964)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012615EF AS DateTime), 1, 965)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012615FD AS DateTime), 1, 966)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261606 AS DateTime), 1, 967)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126160E AS DateTime), 1, 968)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126161C AS DateTime), 1, 969)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261625 AS DateTime), 1, 970)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126162D AS DateTime), 1, 971)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261636 AS DateTime), 1, 972)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126163E AS DateTime), 1, 973)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261647 AS DateTime), 1, 974)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126164F AS DateTime), 1, 975)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261657 AS DateTime), 1, 976)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261664 AS DateTime), 1, 977)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126166D AS DateTime), 1, 978)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261674 AS DateTime), 1, 979)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126167D AS DateTime), 1, 980)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261685 AS DateTime), 1, 981)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126168E AS DateTime), 1, 982)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101261696 AS DateTime), 1, 983)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10126169F AS DateTime), 1, 984)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012616A7 AS DateTime), 1, 985)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012616B0 AS DateTime), 1, 986)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012616B9 AS DateTime), 1, 987)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012616C1 AS DateTime), 1, 988)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012616C9 AS DateTime), 1, 989)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012616D1 AS DateTime), 1, 990)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012616DA AS DateTime), 1, 991)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012616E2 AS DateTime), 1, 992)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012616EA AS DateTime), 1, 993)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129252C AS DateTime), 1, 994)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292538 AS DateTime), 1, 995)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292542 AS DateTime), 1, 996)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292549 AS DateTime), 1, 997)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292550 AS DateTime), 1, 998)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292558 AS DateTime), 1, 999)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292560 AS DateTime), 1, 1000)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292568 AS DateTime), 1, 1001)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129256F AS DateTime), 1, 1002)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292577 AS DateTime), 1, 1003)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292580 AS DateTime), 1, 1004)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292587 AS DateTime), 1, 1005)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129258F AS DateTime), 1, 1006)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292596 AS DateTime), 1, 1007)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129259F AS DateTime), 1, 1008)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925A7 AS DateTime), 1, 1009)
GO
print 'Processed 1000 total records'
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925AE AS DateTime), 1, 1010)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925B6 AS DateTime), 1, 1011)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925BD AS DateTime), 1, 1012)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925C5 AS DateTime), 1, 1013)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925CD AS DateTime), 1, 1014)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925D4 AS DateTime), 1, 1015)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925DC AS DateTime), 1, 1016)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925E4 AS DateTime), 1, 1017)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925EC AS DateTime), 1, 1018)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925F5 AS DateTime), 1, 1019)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012925FE AS DateTime), 1, 1020)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292605 AS DateTime), 1, 1021)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129260D AS DateTime), 1, 1022)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292614 AS DateTime), 1, 1023)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129261D AS DateTime), 1, 1024)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292625 AS DateTime), 1, 1025)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129262C AS DateTime), 1, 1026)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292636 AS DateTime), 1, 1027)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129263F AS DateTime), 1, 1028)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292655 AS DateTime), 1, 1029)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292665 AS DateTime), 1, 1030)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292674 AS DateTime), 1, 1031)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292683 AS DateTime), 1, 1032)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129268D AS DateTime), 1, 1033)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292697 AS DateTime), 1, 1034)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129269E AS DateTime), 1, 1035)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012926A8 AS DateTime), 1, 1036)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012926B0 AS DateTime), 1, 1037)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012926B7 AS DateTime), 1, 1038)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012926C0 AS DateTime), 1, 1039)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012926C7 AS DateTime), 1, 1040)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012926CF AS DateTime), 1, 1041)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012926D6 AS DateTime), 1, 1042)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012926DF AS DateTime), 1, 1043)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012926E7 AS DateTime), 1, 1044)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012926F1 AS DateTime), 1, 1045)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012926FA AS DateTime), 1, 1046)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292703 AS DateTime), 1, 1047)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129270C AS DateTime), 1, 1048)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292714 AS DateTime), 1, 1049)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129271C AS DateTime), 1, 1050)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129272B AS DateTime), 1, 1051)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292739 AS DateTime), 1, 1052)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292748 AS DateTime), 1, 1053)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292753 AS DateTime), 1, 1054)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129275F AS DateTime), 1, 1055)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292768 AS DateTime), 1, 1056)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292771 AS DateTime), 1, 1057)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292779 AS DateTime), 1, 1058)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292782 AS DateTime), 1, 1059)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129278D AS DateTime), 1, 1060)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012927BA AS DateTime), 1, 1061)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012927C6 AS DateTime), 1, 1062)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012927D0 AS DateTime), 1, 1063)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012927DA AS DateTime), 1, 1064)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012927E2 AS DateTime), 1, 1065)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012927EA AS DateTime), 1, 1066)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012927F1 AS DateTime), 1, 1067)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012927FA AS DateTime), 1, 1068)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292802 AS DateTime), 1, 1069)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292809 AS DateTime), 1, 1070)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292815 AS DateTime), 1, 1071)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292821 AS DateTime), 1, 1072)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292832 AS DateTime), 1, 1073)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292847 AS DateTime), 1, 1074)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292853 AS DateTime), 1, 1075)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292862 AS DateTime), 1, 1076)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129286D AS DateTime), 1, 1077)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292880 AS DateTime), 1, 1078)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292890 AS DateTime), 1, 1079)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012928CA AS DateTime), 1, 1080)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292911 AS DateTime), 1, 1081)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292931 AS DateTime), 1, 1082)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292941 AS DateTime), 1, 1083)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101292958 AS DateTime), 1, 1084)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129296F AS DateTime), 1, 1085)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129297F AS DateTime), 1, 1086)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297DD8 AS DateTime), 1, 1087)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297DE2 AS DateTime), 1, 1088)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297DEB AS DateTime), 1, 1089)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297DF5 AS DateTime), 1, 1090)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297DFF AS DateTime), 1, 1091)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E08 AS DateTime), 1, 1092)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E10 AS DateTime), 1, 1093)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E18 AS DateTime), 1, 1094)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E21 AS DateTime), 1, 1095)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E2B AS DateTime), 1, 1096)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E33 AS DateTime), 1, 1097)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E3C AS DateTime), 1, 1098)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E44 AS DateTime), 1, 1099)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E4B AS DateTime), 1, 1100)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E54 AS DateTime), 1, 1101)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E5D AS DateTime), 1, 1102)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E64 AS DateTime), 1, 1103)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E6D AS DateTime), 1, 1104)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E75 AS DateTime), 1, 1105)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E7C AS DateTime), 1, 1106)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E85 AS DateTime), 1, 1107)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E8D AS DateTime), 1, 1108)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E95 AS DateTime), 1, 1109)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297E9D AS DateTime), 1, 1110)
GO
print 'Processed 1100 total records'
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297EA4 AS DateTime), 1, 1111)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297EAE AS DateTime), 1, 1112)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297EB6 AS DateTime), 1, 1113)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297EBF AS DateTime), 1, 1114)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297EC7 AS DateTime), 1, 1115)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297ECF AS DateTime), 1, 1116)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297ED8 AS DateTime), 1, 1117)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297EE0 AS DateTime), 1, 1118)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297EE8 AS DateTime), 1, 1119)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297EF0 AS DateTime), 1, 1120)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F02 AS DateTime), 1, 1121)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F12 AS DateTime), 1, 1122)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F1D AS DateTime), 1, 1123)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F2B AS DateTime), 1, 1124)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F37 AS DateTime), 1, 1125)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F41 AS DateTime), 1, 1126)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F4A AS DateTime), 1, 1127)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F52 AS DateTime), 1, 1128)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F5A AS DateTime), 1, 1129)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F62 AS DateTime), 1, 1130)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F6A AS DateTime), 1, 1131)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F73 AS DateTime), 1, 1132)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F7B AS DateTime), 1, 1133)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F83 AS DateTime), 1, 1134)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F8B AS DateTime), 1, 1135)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297F9D AS DateTime), 1, 1136)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297FA9 AS DateTime), 1, 1137)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297FB0 AS DateTime), 1, 1138)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297FB8 AS DateTime), 1, 1139)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297FC0 AS DateTime), 1, 1140)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297FC8 AS DateTime), 1, 1141)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297FCF AS DateTime), 1, 1142)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297FD8 AS DateTime), 1, 1143)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297FDF AS DateTime), 1, 1144)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297FE8 AS DateTime), 1, 1145)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297FF0 AS DateTime), 1, 1146)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101297FF8 AS DateTime), 1, 1147)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298000 AS DateTime), 1, 1148)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298007 AS DateTime), 1, 1149)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298010 AS DateTime), 1, 1150)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298018 AS DateTime), 1, 1151)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298021 AS DateTime), 1, 1152)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298034 AS DateTime), 1, 1153)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298041 AS DateTime), 1, 1154)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129804A AS DateTime), 1, 1155)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298052 AS DateTime), 1, 1156)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298059 AS DateTime), 1, 1157)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298061 AS DateTime), 1, 1158)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129806A AS DateTime), 1, 1159)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298072 AS DateTime), 1, 1160)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129807A AS DateTime), 1, 1161)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298082 AS DateTime), 1, 1162)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129808B AS DateTime), 1, 1163)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298096 AS DateTime), 1, 1164)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012980A3 AS DateTime), 1, 1165)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012980AF AS DateTime), 1, 1166)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012980C3 AS DateTime), 1, 1167)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012980DC AS DateTime), 1, 1168)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012980EE AS DateTime), 1, 1169)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A1012980FB AS DateTime), 1, 1170)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298105 AS DateTime), 1, 1171)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298113 AS DateTime), 1, 1172)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298120 AS DateTime), 1, 1173)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129812A AS DateTime), 1, 1174)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298133 AS DateTime), 1, 1175)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129813D AS DateTime), 1, 1176)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298146 AS DateTime), 1, 1177)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A101298150 AS DateTime), 1, 1178)
INSERT [dbo].[ssmtbl_Notification] ([NotificationMsgtype], [NotificationMsg], [CreatedDate], [Flag], [Id]) VALUES (N'DailyConsumptions', NULL, CAST(0x0000A8A10129815C AS DateTime), 1, 1179)
SET IDENTITY_INSERT [dbo].[ssmtbl_Notification] OFF
/****** Object:  Table [dbo].[ssmtbl_Inquiry]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_Inquiry](
	[InquiryNo] [bigint] NOT NULL,
	[customerName] [varchar](max) NULL,
	[InquiryDate] [datetime] NULL,
	[PartName] [varchar](max) NULL,
	[PartNo] [varchar](max) NULL,
	[CustomerDrgNo] [varchar](max) NULL,
	[FrequencyRepearOrder] [bigint] NULL,
	[Qty] [int] NULL,
	[createdby] [varchar](max) NULL,
	[createddate] [datetime] NULL,
	[updatedby] [varchar](max) NULL,
	[updateddate] [datetime] NULL,
	[Status] [varchar](max) NULL,
	[CommentForClose] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[InquiryNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (1, N'Mahindra Gears & Transmissions Pvt Ltd', CAST(0x0000A84600000000 AS DateTime), N'Test', N'Test No ', N'Cust 1212', 4001, 50, N'Test', CAST(0x0000A84600FF36FC AS DateTime), N'Admin', CAST(0x0000A857013798EE AS DateTime), N'PO Approved', N'test da6ta')
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (2, N'AKAR TTOLS LTD UNIT II', CAST(0x0000A84000000000 AS DateTime), N'ew', N'we', N'we', 4004, 21, N'Test', CAST(0x0000A846010AFC22 AS DateTime), N'Admin', CAST(0x0000A85701377A6D AS DateTime), N'PO Approved', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (3, N'ALLIANCE ENGINEERING COMPANY', CAST(0x0000A84600000000 AS DateTime), N'ghghjgh', N'kjhkjhkjh', N'uiyuiyui', 4003, 23, N'Test', CAST(0x0000A846010B10E7 AS DateTime), N'Admin', CAST(0x0000A852014D479B AS DateTime), N'PO Approved', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (4, N'ALLIANCE ENGINEERING COMPANY', CAST(0x0000A84600000000 AS DateTime), N'ewe', N'rtt', N'rty', 4002, 43, N'Test', CAST(0x0000A846010B2748 AS DateTime), N'Admin', CAST(0x0000A852014C15D7 AS DateTime), N'Quotation Approved', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (5, N'AKAR TTOLS LTD UNIT II', CAST(0x0000A84600000000 AS DateTime), N'rh', N'rty', N'rty', 4001, 4, N'Test', CAST(0x0000A846010B9017 AS DateTime), N'Admin', CAST(0x0000A85800D204C4 AS DateTime), N'Quotation Approval Pending', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (6, N'Force Motors Limited', CAST(0x0000A84600000000 AS DateTime), N're', N're', N'ert', 4002, 34, N'Test', CAST(0x0000A846010BA0DD AS DateTime), NULL, NULL, N'Quotation Approval Pending', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (7, N'DYCON SYSTEMS PVT LTD', CAST(0x0000A84600000000 AS DateTime), N'ert', N'ert', N'ert', 4003, 34, N'Test', CAST(0x0000A846010BAE5B AS DateTime), N'Admin', CAST(0x0000A86C00F34328 AS DateTime), N'Quotation Approved', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (8, N'KOHINOOR INDUSTRIES', CAST(0x0000A84600000000 AS DateTime), N'rewt', N'wert', N'fgh', 4003, 34, N'Test', CAST(0x0000A846010BBC85 AS DateTime), NULL, NULL, N'Quotation Approval Pending', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (9, N'YAWALKAR INDUSTRIES', CAST(0x0000A84600000000 AS DateTime), N'ert', N'ert', N'rty', 4003, 34, N'Test', CAST(0x0000A846010BCB51 AS DateTime), NULL, NULL, N'Feasibility Done', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (10, N'S.R.AUTO PARTS.', CAST(0x0000A84600000000 AS DateTime), N'rtyg', N're', N'rty', 4003, 45, N'Test', CAST(0x0000A846010BD912 AS DateTime), N'Test', CAST(0x0000A88D010ACCEB AS DateTime), N'New', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (11, N'METS INDIA MACHINE EQUIPMENTS & TRANSMISSION SYSTEM', CAST(0x0000A84600000000 AS DateTime), N'rty', N'rty', N'rty', 4003, 45, N'Test', CAST(0x0000A846010BEA62 AS DateTime), N'Admin', CAST(0x0000A86300DA5899 AS DateTime), N'PO Approved', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (12, N'Alfa Laval India Ltd', CAST(0x0000A85E00000000 AS DateTime), N'Gear', N'12', N'25', 4002, 100, N'Test', CAST(0x0000A85E00CFA38D AS DateTime), N'Test', CAST(0x0000A86D01079D49 AS DateTime), N'Quotation Approval Pending', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (13, N'JAYPEE FORGE PVT.LTD', CAST(0x0000A85E00000000 AS DateTime), N'Screw', N'5', N'15', 4002, 250, N'Test', CAST(0x0000A85E00D8B391 AS DateTime), NULL, NULL, N'New', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (14, N'AKAR TOOLS LTD UNIT-II', CAST(0x0000A85F00000000 AS DateTime), N'Screw', N'4523', N'568', 4002, 500, N'Test', CAST(0x0000A85F00D2C0A1 AS DateTime), N'Test', CAST(0x0000A86300C7E9F4 AS DateTime), N'New', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (15, N'OBCONIC TOOL CRAFTS', CAST(0x0000A86300000000 AS DateTime), N'OBC456', N'456', N'OB52', 4002, 250, N'Test', CAST(0x0000A86300DBB757 AS DateTime), N'Admin', CAST(0x0000A86300EFCC4F AS DateTime), N'PO Approved', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (16, N'Crane Process Flow', CAST(0x0000A86300000000 AS DateTime), N'CRANE', N'58', N'CRANE58', 4003, 50, N'Test', CAST(0x0000A86300F04FE4 AS DateTime), NULL, NULL, N'New', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (17, N'TRINITY INDIA FORGE TECH PVT.LTD', CAST(0x0000A86C00000000 AS DateTime), N'Art', N'1452', N'TRI52', 4003, 550, N'Test', CAST(0x0000A86C00F1F34A AS DateTime), N'Admin', CAST(0x0000A86C00F36ACA AS DateTime), N'PO Approval Pending', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (18, N'Crane Process Flow', CAST(0x0000A8B000000000 AS DateTime), N'CRANE', N'1452', N'15', 4003, 150, N'Test', CAST(0x0000A8B000C6025F AS DateTime), N'Admin', CAST(0x0000A8B000C7D996 AS DateTime), N'Quotation Approved', NULL)
INSERT [dbo].[ssmtbl_Inquiry] ([InquiryNo], [customerName], [InquiryDate], [PartName], [PartNo], [CustomerDrgNo], [FrequencyRepearOrder], [Qty], [createdby], [createddate], [updatedby], [updateddate], [Status], [CommentForClose]) VALUES (19, N'ALLIANCE ENGINEERING COMPANY', CAST(0x0000A8B000000000 AS DateTime), N'SB78', N'12', N'DJSDH090', 4003, 145, N'Test', CAST(0x0000A8B000C868AF AS DateTime), N'Admin', CAST(0x0000A8B000C91A8A AS DateTime), N'Quotation Approved', NULL)
/****** Object:  UserDefinedTableType [dbo].[ssmtbl_Feasibility_RawMaterialTest]    Script Date: 05/07/2018 16:08:28 ******/
CREATE TYPE [dbo].[ssmtbl_Feasibility_RawMaterialTest] AS TABLE(
	[Raw_Material_Test] [bigint] NULL
)
GO
/****** Object:  Table [dbo].[ssmtbl_Feasibility_RawMaterialTest]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ssmtbl_Feasibility_RawMaterialTest](
	[auto_id] [int] IDENTITY(1,1) NOT NULL,
	[FeasibilityId] [bigint] NOT NULL,
	[Raw_Material_Test] [bigint] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ON
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (59, 6, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (60, 6, 3)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (61, 7, 2)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (62, 7, 3)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (39, 4, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (40, 4, 2)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (41, 2, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (42, 2, 2)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (43, 2, 3)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (44, 2, 4)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (45, 2, 5)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (46, 2, 6)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (47, 2, 7)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (48, 2, 8)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (49, 2, 9)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (50, 2, 10)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (53, 1, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (54, 1, 2)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (57, 5, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (58, 5, 2)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (63, 8, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (64, 8, 2)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (33, 3, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (34, 3, 2)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (65, 9, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (66, 9, 3)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (67, 10, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (68, 10, 2)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (71, 11, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (72, 11, 2)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (73, 12, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (74, 12, 3)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (75, 13, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (76, 13, 3)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (77, 14, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (78, 14, 2)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (79, 15, 1)
INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] ([auto_id], [FeasibilityId], [Raw_Material_Test]) VALUES (80, 15, 2)
SET IDENTITY_INSERT [dbo].[ssmtbl_Feasibility_RawMaterialTest] OFF
/****** Object:  UserDefinedTableType [dbo].[ssmtbl_Feasibility_OperationsInvolved]    Script Date: 05/07/2018 16:08:28 ******/
CREATE TYPE [dbo].[ssmtbl_Feasibility_OperationsInvolved] AS TABLE(
	[Operations_Involved] [bigint] NULL
)
GO
/****** Object:  Table [dbo].[ssmtbl_Feasibility_OperationsInvolved]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ssmtbl_Feasibility_OperationsInvolved](
	[auto_id] [int] IDENTITY(1,1) NOT NULL,
	[FeasibilityId] [bigint] NOT NULL,
	[Operations_Involved] [bigint] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ON
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (104, 6, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (105, 6, 5)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (106, 6, 4)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (107, 7, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (108, 7, 5)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (109, 7, 14)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (72, 4, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (73, 4, 5)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (74, 4, 4)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (75, 4, 3)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (76, 4, 1)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (77, 4, 15)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (78, 4, 14)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (79, 4, 13)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (80, 2, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (81, 2, 5)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (82, 2, 4)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (83, 2, 3)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (84, 2, 1)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (85, 2, 15)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (86, 2, 14)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (87, 2, 13)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (93, 1, 5)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (94, 1, 4)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (95, 1, 3)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (96, 1, 1)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (97, 1, 15)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (101, 5, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (102, 5, 5)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (103, 5, 4)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (110, 8, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (111, 8, 5)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (48, 3, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (49, 3, 5)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (50, 3, 4)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (51, 3, 3)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (52, 3, 1)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (53, 3, 15)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (54, 3, 14)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (55, 3, 13)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (112, 9, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (113, 9, 15)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (114, 10, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (115, 10, 5)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (119, 11, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (120, 11, 5)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (121, 11, 1)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (122, 12, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (123, 12, 4)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (124, 13, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (125, 13, 4)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (126, 14, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (127, 14, 5)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (128, 15, 2)
INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] ([auto_id], [FeasibilityId], [Operations_Involved]) VALUES (129, 15, 5)
SET IDENTITY_INSERT [dbo].[ssmtbl_Feasibility_OperationsInvolved] OFF
/****** Object:  Table [dbo].[ssmtbl_Feasibility]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_Feasibility](
	[FeasibilityId] [bigint] IDENTITY(1,1) NOT NULL,
	[InquiryNo] [bigint] NOT NULL,
	[FeasibilityConditionSupply] [bigint] NULL,
	[FeasibilityNatureofWork] [bigint] NULL,
	[FeasibilityTypeofJob] [bigint] NULL,
	[FeasibilityHammerRequired] [bigint] NULL,
	[FeasibilityToolingRequirement] [varchar](max) NULL,
	[fisdiavalue] [float] NULL,
	[fisdialength] [float] NULL,
	[fisdiablocklength] [float] NULL,
	[fisdiablockwidth] [float] NULL,
	[fisdiablockheight] [float] NULL,
	[MillTC] [varchar](max) NULL,
	[DieDescription] [varchar](max) NULL,
	[grossweight] [float] NULL,
	[cutweight] [float] NULL,
	[netweight] [float] NULL,
	[materialweights] [varchar](max) NULL,
	[FeasibilityLubricantPreferred] [bigint] NULL,
	[FeasibilityMaterialGrade] [bigint] NULL,
	[FeasibilityHeattreatment] [bigint] NULL,
	[Feasibilitystandardapplicable] [bigint] NULL,
	[hardnessmin] [varchar](max) NULL,
	[hardnessmax] [varchar](max) NULL,
	[hardnessunits] [varchar](max) NULL,
	[micro] [varchar](max) NULL,
	[FeasibilityStatutoryandregulatoryrequirement] [varchar](max) NULL,
	[FeasibilityRemark] [varchar](max) NULL,
	[feasibilitycreatedby] [varchar](max) NULL,
	[feasibilitycreateddate] [datetime] NULL,
	[feasibilityupdatedby] [varchar](max) NULL,
	[feasibilityupdateddate] [datetime] NULL,
	[cutlength] [float] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_Feasibility] ON
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (1, 1, 101, 201, 301, 401, N'Insert', 4, 5, 0, 0, 0, N'202', N'Dia4 Len5', 0.85, 0.8, 0.65, N'0', 801, 17, 1004, 2001, N'23', N'45', N'12', NULL, NULL, NULL, N'Test', CAST(0x0000A85000DA0613 AS DateTime), N'Test', CAST(0x0000A8520140F1F5 AS DateTime), 0)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (2, 2, 101, 201, 301, 401, N'Insert', 54, 34, 0, 0, 0, N'201', N'Dia54 Len34', 345.21, 23, 345.21, N'56', 801, 18, 1001, 2001, N'100', N'500', N'120', NULL, NULL, NULL, N'Test', CAST(0x0000A85001429EE4 AS DateTime), N'Test', CAST(0x0000A85201292F28 AS DateTime), 34)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (3, 3, 102, 201, 301, 401, N'Insert', 12, 12, 0, 0, 0, N'201', N'Dia12 Len12', 121, 0, 121, N'0', 801, 9, 1002, 2001, N'1', N'122', N'12', NULL, NULL, NULL, N'Test', CAST(0x0000A851013EE4E6 AS DateTime), N'Test', CAST(0x0000A85200DD802C AS DateTime), 0)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (4, 4, 101, 201, 301, 401, N'Insert', 12, 12, 0, 0, 0, N'201', N'Dia12 Len12', 123, 12, 140, N'150', 801, 2, 1001, 2001, N'10', N'10', N'10', NULL, NULL, NULL, N'Test', CAST(0x0000A8520117A721 AS DateTime), NULL, NULL, 12)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (6, 6, 101, 202, 301, 401, N'Insert', 13, 13, 0, 0, 0, N'NA', N'Dia13 Len13', 20, 53, 20, N'62', 801, 1, 1001, 2001, N'1', N'100', N'10', N'NA', N'NA', N'NA', N'Test', CAST(0x0000A85800CA1D00 AS DateTime), NULL, NULL, 53)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (7, 7, 102, 202, 301, 401, N'Insert', 12, 12, 0, 0, 0, N'NA', N'Dia12 Len12', 25, 25, 25, N'25', 801, 17, 1001, 2001, N'10', N'100', N'100', N'NA', N'NA', N'NA', N'Test', CAST(0x0000A858014FEC5A AS DateTime), NULL, NULL, 25)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (5, 5, 101, 202, 301, 401, N'Die Block', 0, 0, 12, 12, 12, N'Na', N'Len12 Wid12 Ht12', 10, 25, 10, N'25', 801, 1, 1001, 2001, N'1', N'100', N'10', N'Na', N'Na', N'NA', N'Test', CAST(0x0000A85500F8FB98 AS DateTime), N'Test', CAST(0x0000A85500F92ADF AS DateTime), 25)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (8, 8, 101, 202, 301, 402, N'Die Block', 0, 0, 12, 12, 2, N'NA', N'Len12 Wid12 Ht2', 32, 32, 42, N'45', 801, 17, 1006, 2002, N'4', N'434', N'34', N'NA', N'NA', N'NA', N'Test', CAST(0x0000A85900E5DA36 AS DateTime), NULL, NULL, 3)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (9, 11, 102, 201, 301, 402, N'Die Block', 0, 0, 5, 5, 0, N'NA', N'Len5 Wid5 Ht0', 50, 40, 45, N'0', 802, 16, 1003, 2001, N'5', N'5', N'0', N'NA', N'NA', N'NA', N'Test', CAST(0x0000A86300D5FBA0 AS DateTime), NULL, NULL, 40)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (10, 15, 102, 201, 301, 401, N'Insert', 5, 5, 0, 0, 0, N'NA', N'Dia5 Len5', 25, 23, 25, N'45', 801, 17, 1001, 2001, N'5', N'5', N'0', N'NA', N'NA', N'NA', N'Test', CAST(0x0000A86300DC224C AS DateTime), NULL, NULL, 20)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (11, 9, 101, 201, 301, 401, N'Die Block', 0, 0, 5, 5, 5, N'NA', N'Len5 Wid5 Ht5', 0, 0, 0, N'0', 801, 16, 1001, 2001, N'5', N'5', N'0', N'DS', N'SAD', N'AD', N'Test', CAST(0x0000A86300FE4B35 AS DateTime), N'Test', CAST(0x0000A8630113B609 AS DateTime), 0)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (12, 17, 102, 201, 301, 401, N'Insert', 5, 5, 0, 0, 0, N'NA', N'Dia5 Len5', 0, 0, 0, N'0', 801, 9, 1003, 2001, N'5', N'5', N'5', N'Micro', N'NA', N'NA', N'Test', CAST(0x0000A86C00F2C3A1 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (13, 12, 103, 201, 302, 401, N'Insert', 5, 5, 0, 0, 0, N'NA', N'Dia5 Len5', 0, 0, 0, N'0', 801, 14, 1002, 2002, N'5', N'5', N'5', N'NA', N'NA', N'NA', N'Test', CAST(0x0000A86D010801F0 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (14, 18, 102, 201, 301, 402, N'Insert', 0, 0, 0, 0, 0, N'5', N'Dia0 Len0', 25, 55, 50, N'5', 801, 4, 1002, 2001, N'5', N'5', N'5', N'NA', N'NA', N'NA', N'Test', CAST(0x0000A8B000C66358 AS DateTime), NULL, NULL, 15)
INSERT [dbo].[ssmtbl_Feasibility] ([FeasibilityId], [InquiryNo], [FeasibilityConditionSupply], [FeasibilityNatureofWork], [FeasibilityTypeofJob], [FeasibilityHammerRequired], [FeasibilityToolingRequirement], [fisdiavalue], [fisdialength], [fisdiablocklength], [fisdiablockwidth], [fisdiablockheight], [MillTC], [DieDescription], [grossweight], [cutweight], [netweight], [materialweights], [FeasibilityLubricantPreferred], [FeasibilityMaterialGrade], [FeasibilityHeattreatment], [Feasibilitystandardapplicable], [hardnessmin], [hardnessmax], [hardnessunits], [micro], [FeasibilityStatutoryandregulatoryrequirement], [FeasibilityRemark], [feasibilitycreatedby], [feasibilitycreateddate], [feasibilityupdatedby], [feasibilityupdateddate], [cutlength]) VALUES (15, 19, 103, 201, 301, 401, N'Insert', 0, 0, 0, 0, 0, N'45', N'Dia0 Len0', 45, 40, 45, N'45', 802, 2, 1003, 2001, N'5', N'5', N'5', N'NA', N'NA', N'NA', N'Test', CAST(0x0000A8B000C8BF5F AS DateTime), NULL, NULL, 40)
SET IDENTITY_INSERT [dbo].[ssmtbl_Feasibility] OFF
/****** Object:  Table [dbo].[ssmtbl_DeliveryChallanItems]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_DeliveryChallanItems](
	[ids] [bigint] IDENTITY(1,1) NOT NULL,
	[dispachno] [varchar](max) NULL,
	[srno] [int] NULL,
	[itemcode] [varchar](max) NULL,
	[descripts] [varchar](max) NULL,
	[quantity] [float] NULL,
	[unitper] [varchar](max) NULL,
	[workorderid] [varchar](50) NULL,
 CONSTRAINT [PK_ssmtbl_DeliveryChallanItems] PRIMARY KEY CLUSTERED 
(
	[ids] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_DeliveryChallanItems] ON
INSERT [dbo].[ssmtbl_DeliveryChallanItems] ([ids], [dispachno], [srno], [itemcode], [descripts], [quantity], [unitper], [workorderid]) VALUES (1, N'JDISP-00002', 15, N'SAE 1018', N'53 Dia', 100, N'Per Piece', N'1')
INSERT [dbo].[ssmtbl_DeliveryChallanItems] ([ids], [dispachno], [srno], [itemcode], [descripts], [quantity], [unitper], [workorderid]) VALUES (2, N'DISP-00003', 22, N'LF2 A350', N'53 Dia', 10, N'NOs', N'1')
INSERT [dbo].[ssmtbl_DeliveryChallanItems] ([ids], [dispachno], [srno], [itemcode], [descripts], [quantity], [unitper], [workorderid]) VALUES (3, N'DISP-000020', 1, N'LF2 A350', N'53 Dia', 13, N'KG', N'WO-00023')
INSERT [dbo].[ssmtbl_DeliveryChallanItems] ([ids], [dispachno], [srno], [itemcode], [descripts], [quantity], [unitper], [workorderid]) VALUES (4, N'DISP-00021', 1, N'LF2 A350', N'53 Dia', 12, N'KG', N'WO-00012')
INSERT [dbo].[ssmtbl_DeliveryChallanItems] ([ids], [dispachno], [srno], [itemcode], [descripts], [quantity], [unitper], [workorderid]) VALUES (5, N'DISP-00022', 1, N'LF2 A350', N'53 Dia', 123, N'KG', N'WO-00012')
INSERT [dbo].[ssmtbl_DeliveryChallanItems] ([ids], [dispachno], [srno], [itemcode], [descripts], [quantity], [unitper], [workorderid]) VALUES (6, N'DISP-00023', 1, N'LF2 A350', N'53 Dia', 12, N'NOs', N'WO-00012')
INSERT [dbo].[ssmtbl_DeliveryChallanItems] ([ids], [dispachno], [srno], [itemcode], [descripts], [quantity], [unitper], [workorderid]) VALUES (7, N'DISP-00024', 1, N'LF2 A350', N'53 Dia', 12, N'NOs', N'WO-00012')
INSERT [dbo].[ssmtbl_DeliveryChallanItems] ([ids], [dispachno], [srno], [itemcode], [descripts], [quantity], [unitper], [workorderid]) VALUES (8, N'DISP-00025', 1, N'LF2 A350', N'53 Dia', 12, N'NOs', N'WO-00012')
INSERT [dbo].[ssmtbl_DeliveryChallanItems] ([ids], [dispachno], [srno], [itemcode], [descripts], [quantity], [unitper], [workorderid]) VALUES (9, N'JDISP-00005', 1, N'LF2 A350', N'53 Dia', 10, N'NOs', N'WO-00012')
SET IDENTITY_INSERT [dbo].[ssmtbl_DeliveryChallanItems] OFF
/****** Object:  Table [dbo].[ssmtbl_DeliveryChallan]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_DeliveryChallan](
	[DCId] [bigint] IDENTITY(1,1) NOT NULL,
	[DispachNo] [varchar](max) NULL,
	[ChallanNo] [varchar](max) NULL,
	[DCDate] [datetime] NULL,
	[RefNo] [varchar](max) NULL,
	[Date] [datetime] NULL,
	[VehicleNo] [varchar](max) NULL,
	[SrNo] [varchar](10) NULL,
	[Description] [varchar](max) NULL,
	[Quantity] [float] NULL,
	[CreatedBy] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[Flag] [bit] NULL,
	[DeliveryChallanTypes] [varchar](100) NULL,
	[isReturned] [bit] NULL,
	[ReturnableTypes] [varchar](max) NULL,
	[Heatcode] [varchar](max) NULL,
	[Transport] [varchar](max) NULL,
	[DocketLrNo] [varchar](max) NULL,
	[DieNo] [varchar](max) NULL,
	[PartNo] [varchar](max) NULL,
	[CustomerId] [bigint] NULL,
	[Vendor] [bigint] NULL,
	[RMGrade] [varchar](max) NULL,
	[TypeOfTesting] [bigint] NULL,
	[ActualReturnDate] [datetime] NULL,
	[Unit] [varchar](50) NULL,
	[TypeOfTestingStr] [varchar](50) NULL,
	[LabName] [varchar](max) NULL,
	[Cost] [float] NULL,
	[Section] [varchar](max) NULL,
	[VendorPo] [varchar](50) NULL,
 CONSTRAINT [PK_ssmtbl_DeliveryChallan] PRIMARY KEY CLUSTERED 
(
	[DCId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_DeliveryChallan] ON
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (1, N'DISP-00002', N'0', CAST(0x0000A7B000000000 AS DateTime), N'WO-00001', CAST(0x0000A7A800000000 AS DateTime), N'BY HAND', NULL, N'', 12, N'admin', CAST(0x0000A7AE00000000 AS DateTime), N'RM00004', CAST(0x0000A7B000000000 AS DateTime), 1, N'Returnable', 0, N'Heat Treatment', N'T1', N'at our end', N'NA', N'NA', N'undefined', NULL, 80, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (2, N'JDISP-00001', NULL, CAST(0x0000A85600000000 AS DateTime), N'004', NULL, NULL, NULL, NULL, 0, N'admin', CAST(0x0000A85600000000 AS DateTime), NULL, NULL, 1, N'Job Disptach', 0, NULL, N'undefined', NULL, NULL, NULL, N'ICR/BEC/112-05 REV-1', 23, NULL, NULL, NULL, NULL, N'Nos', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (3, N'JDISP-00002', NULL, CAST(0x0000A85600000000 AS DateTime), N'15963', NULL, NULL, NULL, NULL, 0, N'admin', CAST(0x0000A85600000000 AS DateTime), NULL, NULL, 1, N'Job Disptach', 0, NULL, N'undefined', NULL, NULL, NULL, N'1256', 16, NULL, NULL, NULL, NULL, N'Nos', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (4, N'DISP-00003', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'asd', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (5, N'DISP-00004', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'asd', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (6, N'DISP-00005', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (7, N'DISP-00006', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (8, N'DISP-00007', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (9, N'DISP-00008', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (10, N'DISP-00009', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (11, N'DISP-000010', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (12, N'DISP-000011', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (13, N'DISP-000012', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (14, N'DISP-000013', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (15, N'DISP-000014', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (16, N'DISP-000015', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (17, N'DISP-000016', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (18, N'DISP-000017', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (19, N'DISP-000018', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (20, N'DISP-000019', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (21, N'DISP-000020', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 0, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (22, N'DISP-00021', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 1, N'', N'', N'', N'', N'', N'undefined', NULL, 7, NULL, NULL, CAST(0x0000000000000000 AS DateTime), N'NOs', NULL, NULL, 0, NULL, N'VPO-00017')
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (23, N'DISP-00022', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 1, N'', N'', N'', N'', N'', N'undefined', NULL, 7, NULL, NULL, CAST(0x0000000000000000 AS DateTime), N'NOs', NULL, NULL, 0, NULL, N'VPO-00017')
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (24, N'DISP-00023', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 7, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, N'VPO-00017')
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (25, N'DISP-00024', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 0, N'', N'', N'', N'', N'', N'undefined', NULL, 7, NULL, NULL, NULL, N'NOs', NULL, NULL, 0, NULL, N'VPO-00017')
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (26, N'DISP-00025', N'0', CAST(0x0000A85900000000 AS DateTime), N'', CAST(0x0000A85900000000 AS DateTime), N'', NULL, N'', 0, N'admin', CAST(0x0000A85900000000 AS DateTime), NULL, NULL, 1, N'Outsourcing', 1, N'', N'', N'', N'', N'', N'undefined', NULL, 7, NULL, NULL, CAST(0x0000000000000000 AS DateTime), N'NOs', NULL, NULL, 0, NULL, N'VPO-00017')
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (27, N'JDISP-00003', NULL, CAST(0x0000A88E00000000 AS DateTime), N'', NULL, NULL, NULL, NULL, 0, N'admin', CAST(0x0000A88E00000000 AS DateTime), N'admin', CAST(0x0000A88E00000000 AS DateTime), 1, N'Job Disptach', 0, NULL, N'undefined', NULL, NULL, NULL, N'', 34, NULL, NULL, NULL, NULL, N'Nos', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (28, N'JDISP-00004', NULL, CAST(0x0000A88E00000000 AS DateTime), N'', NULL, NULL, NULL, NULL, 0, N'admin', CAST(0x0000A88E00000000 AS DateTime), NULL, NULL, 1, N'Job Disptach', 0, NULL, N'undefined', NULL, NULL, NULL, N'', 5, NULL, NULL, NULL, NULL, N'Nos', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DeliveryChallan] ([DCId], [DispachNo], [ChallanNo], [DCDate], [RefNo], [Date], [VehicleNo], [SrNo], [Description], [Quantity], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Flag], [DeliveryChallanTypes], [isReturned], [ReturnableTypes], [Heatcode], [Transport], [DocketLrNo], [DieNo], [PartNo], [CustomerId], [Vendor], [RMGrade], [TypeOfTesting], [ActualReturnDate], [Unit], [TypeOfTestingStr], [LabName], [Cost], [Section], [VendorPo]) VALUES (29, N'JDISP-00005', NULL, CAST(0x0000A88E00000000 AS DateTime), N'12345', NULL, NULL, NULL, NULL, 0, N'admin', CAST(0x0000A88E00000000 AS DateTime), NULL, NULL, 1, N'Job Disptach', 0, NULL, N'undefined', NULL, NULL, NULL, N'DC-215', 5, NULL, NULL, NULL, NULL, N'Nos', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ssmtbl_DeliveryChallan] OFF
/****** Object:  Table [dbo].[ssmtbl_DailyConsumptions]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_DailyConsumptions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ConsumableDate] [datetime] NULL,
	[ConsumableCode] [varchar](50) NULL,
	[RatePerUnit] [float] NULL,
	[StartReading] [float] NULL,
	[EndReading] [float] NULL,
	[TotalUnit] [float] NULL,
	[Flag] [bit] NULL,
	[CreatedBy] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ssmtbl_DailyConsumptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_DailyConsumptions] ON
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, CAST(0x0000A58000000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, CAST(0x0000A58000000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, CAST(0x0000A58000000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, CAST(0x0000A58100000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, CAST(0x0000A58100000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, CAST(0x0000A58100000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, CAST(0x0000A58200000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, CAST(0x0000A58200000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, CAST(0x0000A58200000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, CAST(0x0000A58300000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, CAST(0x0000A58300000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, CAST(0x0000A58300000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (13, CAST(0x0000A58400000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (14, CAST(0x0000A58400000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (15, CAST(0x0000A58400000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, CAST(0x0000A58500000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (17, CAST(0x0000A58500000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (18, CAST(0x0000A58500000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (19, CAST(0x0000A58600000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (20, CAST(0x0000A58600000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (21, CAST(0x0000A58600000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (22, CAST(0x0000A58700000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, CAST(0x0000A58700000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (24, CAST(0x0000A58700000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (25, CAST(0x0000A58800000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (26, CAST(0x0000A58800000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (27, CAST(0x0000A58800000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (28, CAST(0x0000A58900000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (29, CAST(0x0000A58900000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (30, CAST(0x0000A58900000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (31, CAST(0x0000A58A00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (32, CAST(0x0000A58A00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (33, CAST(0x0000A58A00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (34, CAST(0x0000A58B00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (35, CAST(0x0000A58B00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (36, CAST(0x0000A58B00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (37, CAST(0x0000A58C00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (38, CAST(0x0000A58C00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (39, CAST(0x0000A58C00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (40, CAST(0x0000A58D00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (41, CAST(0x0000A58D00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (42, CAST(0x0000A58D00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (43, CAST(0x0000A58E00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (44, CAST(0x0000A58E00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (45, CAST(0x0000A58E00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (46, CAST(0x0000A58F00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (47, CAST(0x0000A58F00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (48, CAST(0x0000A58F00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (49, CAST(0x0000A59000000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (50, CAST(0x0000A59000000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (51, CAST(0x0000A59000000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (52, CAST(0x0000A59100000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (53, CAST(0x0000A59100000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (54, CAST(0x0000A59100000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (55, CAST(0x0000A59200000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (56, CAST(0x0000A59200000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (57, CAST(0x0000A59200000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (58, CAST(0x0000A59300000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (59, CAST(0x0000A59300000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (60, CAST(0x0000A59300000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (61, CAST(0x0000A59400000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (62, CAST(0x0000A59400000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (63, CAST(0x0000A59400000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (64, CAST(0x0000A59500000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (65, CAST(0x0000A59500000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (66, CAST(0x0000A59500000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (67, CAST(0x0000A59600000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (68, CAST(0x0000A59600000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (69, CAST(0x0000A59600000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (70, CAST(0x0000A59700000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (71, CAST(0x0000A59700000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (72, CAST(0x0000A59700000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (73, CAST(0x0000A59800000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (74, CAST(0x0000A59800000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (75, CAST(0x0000A59800000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (76, CAST(0x0000A59900000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (77, CAST(0x0000A59900000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (78, CAST(0x0000A59900000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (79, CAST(0x0000A59A00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (80, CAST(0x0000A59A00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (81, CAST(0x0000A59A00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (82, CAST(0x0000A59B00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (83, CAST(0x0000A59B00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (84, CAST(0x0000A59B00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (85, CAST(0x0000A59C00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (86, CAST(0x0000A59C00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (87, CAST(0x0000A59C00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (88, CAST(0x0000A59D00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (89, CAST(0x0000A59D00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (90, CAST(0x0000A59D00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (91, CAST(0x0000A59E00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (92, CAST(0x0000A59E00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (93, CAST(0x0000A59E00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (94, CAST(0x0000A89600000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (95, CAST(0x0000A89600000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (96, CAST(0x0000A89600000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (97, CAST(0x0000A89700000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (98, CAST(0x0000A89700000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (99, CAST(0x0000A89700000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (100, CAST(0x0000A89800000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (101, CAST(0x0000A89800000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (102, CAST(0x0000A89800000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (103, CAST(0x0000A89900000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (104, CAST(0x0000A89900000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (105, CAST(0x0000A89900000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (106, CAST(0x0000A89A00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (107, CAST(0x0000A89A00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (108, CAST(0x0000A89A00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (109, CAST(0x0000A89B00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (110, CAST(0x0000A89B00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (111, CAST(0x0000A89B00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (112, CAST(0x0000A89C00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (113, CAST(0x0000A89C00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (114, CAST(0x0000A89C00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (115, CAST(0x0000A89D00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (116, CAST(0x0000A89D00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (117, CAST(0x0000A89D00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (118, CAST(0x0000A89E00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (119, CAST(0x0000A89E00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (120, CAST(0x0000A89E00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (121, CAST(0x0000A89F00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (122, CAST(0x0000A89F00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (123, CAST(0x0000A89F00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (124, CAST(0x0000A8A000000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (125, CAST(0x0000A8A000000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (126, CAST(0x0000A8A000000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (127, CAST(0x0000A8A100000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (128, CAST(0x0000A8A100000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (129, CAST(0x0000A8A100000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (130, CAST(0x0000A8A200000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (131, CAST(0x0000A8A200000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (132, CAST(0x0000A8A200000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (133, CAST(0x0000A8A300000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (134, CAST(0x0000A8A300000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (135, CAST(0x0000A8A300000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (136, CAST(0x0000A8A400000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (137, CAST(0x0000A8A400000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (138, CAST(0x0000A8A400000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (139, CAST(0x0000A8A500000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (140, CAST(0x0000A8A500000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (141, CAST(0x0000A8A500000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (142, CAST(0x0000A8A600000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (143, CAST(0x0000A8A600000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (144, CAST(0x0000A8A600000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (145, CAST(0x0000A8A700000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (146, CAST(0x0000A8A700000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (147, CAST(0x0000A8A700000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (148, CAST(0x0000A8A800000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (149, CAST(0x0000A8A800000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (150, CAST(0x0000A8A800000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (151, CAST(0x0000A8A900000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (152, CAST(0x0000A8A900000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (153, CAST(0x0000A8A900000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (154, CAST(0x0000A8AA00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (155, CAST(0x0000A8AA00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (156, CAST(0x0000A8AA00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (157, CAST(0x0000A8AB00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (158, CAST(0x0000A8AB00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (159, CAST(0x0000A8AB00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (160, CAST(0x0000A8AC00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (161, CAST(0x0000A8AC00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (162, CAST(0x0000A8AC00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (163, CAST(0x0000A8AD00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (164, CAST(0x0000A8AD00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (165, CAST(0x0000A8AD00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (166, CAST(0x0000A8AE00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (167, CAST(0x0000A8AE00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (168, CAST(0x0000A8AE00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (169, CAST(0x0000A8AF00000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (170, CAST(0x0000A8AF00000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (171, CAST(0x0000A8AF00000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (172, CAST(0x0000A8B000000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (173, CAST(0x0000A8B000000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (174, CAST(0x0000A8B000000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (175, CAST(0x0000A8B100000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (176, CAST(0x0000A8B100000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (177, CAST(0x0000A8B100000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (178, CAST(0x0000A8B200000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (179, CAST(0x0000A8B200000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (180, CAST(0x0000A8B200000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (181, CAST(0x0000A8B300000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (182, CAST(0x0000A8B300000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (183, CAST(0x0000A8B300000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (184, CAST(0x0000A8B400000000 AS DateTime), N'DC01', 40, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (185, CAST(0x0000A8B400000000 AS DateTime), N'DC02', 10, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ssmtbl_DailyConsumptions] ([Id], [ConsumableDate], [ConsumableCode], [RatePerUnit], [StartReading], [EndReading], [TotalUnit], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (186, CAST(0x0000A8B400000000 AS DateTime), N'DC03', 20, 0, 0, 0, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ssmtbl_DailyConsumptions] OFF
/****** Object:  Table [dbo].[ssmtbl_CuttingInstructionIssue]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_CuttingInstructionIssue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CutDate] [datetime] NULL,
	[CutTo] [varchar](max) NULL,
	[CutFrom] [varchar](max) NULL,
	[PartName] [varchar](max) NULL,
	[MaterialSpecification] [varchar](max) NULL,
	[DieNo] [varchar](max) NULL,
	[Heatcode] [varchar](max) NULL,
	[Section] [varchar](max) NULL,
	[Colorcode] [varchar](max) NULL,
	[CutWeight] [float] NULL,
	[CutLength] [float] NULL,
	[PlanQty] [float] NULL,
	[ActualQty] [float] NULL,
	[PreparedBy] [varchar](max) NULL,
	[ApprovedBy] [varchar](max) NULL,
	[CreatedBy] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[RMRequiredQty] [varchar](max) NULL,
	[WorkorderNo] [varchar](max) NULL,
	[InternalCutWt] [varchar](max) NULL,
 CONSTRAINT [PK_ssmtbl_CuttingInstructionIssue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_CuttingInstructionIssue] ON
INSERT [dbo].[ssmtbl_CuttingInstructionIssue] ([ID], [CutDate], [CutTo], [CutFrom], [PartName], [MaterialSpecification], [DieNo], [Heatcode], [Section], [Colorcode], [CutWeight], [CutLength], [PlanQty], [ActualQty], [PreparedBy], [ApprovedBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RMRequiredQty], [WorkorderNo], [InternalCutWt]) VALUES (1, CAST(0x0000A87900000000 AS DateTime), N'Ashish', N'Ajay', N'LBVC', N'SAE 1018', N'125966', N'1002', N'53 Dia', N'White', 95, 10, 1500, 0, N'admin', N'admin', N'admin', CAST(0x0000A85C00000000 AS DateTime), NULL, NULL, N'22', N'WO-00004', N'10')
INSERT [dbo].[ssmtbl_CuttingInstructionIssue] ([ID], [CutDate], [CutTo], [CutFrom], [PartName], [MaterialSpecification], [DieNo], [Heatcode], [Section], [Colorcode], [CutWeight], [CutLength], [PlanQty], [ActualQty], [PreparedBy], [ApprovedBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RMRequiredQty], [WorkorderNo], [InternalCutWt]) VALUES (2, CAST(0x0000A87900000000 AS DateTime), N'Ashish', N'Ajay', N'LBVC', N'SAE 1018', N'125966', N'1002', N'53 Dia', N'White', 95, 10, 1500, 0, N'admin', N'admin', N'admin', CAST(0x0000A85C00000000 AS DateTime), NULL, NULL, N'28', N'WO-00003', N'10')
INSERT [dbo].[ssmtbl_CuttingInstructionIssue] ([ID], [CutDate], [CutTo], [CutFrom], [PartName], [MaterialSpecification], [DieNo], [Heatcode], [Section], [Colorcode], [CutWeight], [CutLength], [PlanQty], [ActualQty], [PreparedBy], [ApprovedBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RMRequiredQty], [WorkorderNo], [InternalCutWt]) VALUES (3, CAST(0x0000A87400000000 AS DateTime), N'Hr', N'Admin', N'gear', N'ST 52.3 ', N'NA', N'1001', N'90 RCS', N'White', 13.3, 12.5, 1500, 0, N'admin', N'admin', N'admin', CAST(0x0000A85C00000000 AS DateTime), NULL, NULL, N'3', N'WO-00001', N'5')
INSERT [dbo].[ssmtbl_CuttingInstructionIssue] ([ID], [CutDate], [CutTo], [CutFrom], [PartName], [MaterialSpecification], [DieNo], [Heatcode], [Section], [Colorcode], [CutWeight], [CutLength], [PlanQty], [ActualQty], [PreparedBy], [ApprovedBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RMRequiredQty], [WorkorderNo], [InternalCutWt]) VALUES (4, CAST(0x0000A87900000000 AS DateTime), N'Admin', N'Dept Head', N'gear', N'ST 52.3 ', N'NA', N'1001', N'90 RCS', N'White', 13.3, 12.5, 1500, 0, N'admin', N'admin', N'admin', CAST(0x0000A85C00000000 AS DateTime), NULL, NULL, N'5', N'WO-00002', N'5')
SET IDENTITY_INSERT [dbo].[ssmtbl_CuttingInstructionIssue] OFF
/****** Object:  Table [dbo].[ssmtbl_CustomerVendorMaster_Tb]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](max) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [Name] [varchar](max) NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [Address] [varchar](max) NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [City] [varchar](max) NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [Pincode] [bigint] NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [Salutation] [varchar](max) NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [Contact_Person] [varchar](max) NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [Mobile_No] [bigint] NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [STD_Code] [int] NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [Telephone_No] [bigint] NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [Fax] [bigint] NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [Email_ID] [varchar](max) NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [Vendor_Code] [varchar](max) NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [Remarks] [varchar](max) NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD [isActive] [bit] NULL
ALTER TABLE [dbo].[ssmtbl_CustomerVendorMaster_Tb] ADD PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ON
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (1, N'customer', N'Tata Motors Pvt.Ltd.', N'Bhosri,Pune', N'Pune', 767083, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'-', 0)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (2, N'customer', N'Alfa Laval India Ltd', N'Mumbai Pune Road, Dapodi, Pune, Maharashra-411012', N'Pune', 411012, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'-', 0)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (3, N'customer', N'Force Motors Limited', N'Mumbai-Pune Road, Akurdi, Pune-411035', N'Pune', 411035, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 0)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (4, N'customer', N'Sandvik Asia Ltd', N'Mumbai-Pune Road, Akurdi, Pune-411035', N'Pune', 411035, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 0)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (5, N'customer', N'Forbes Marshall', N'P B # 29, Mumbai-Pune Road, Kasarwadi, Pune-, Maharashtra, Pin- 411034', N'Pune', 411034, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 0)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (6, N'vendor', N'SHREE GOVIND STEEL', N'W-11/W-12, S-BLOCK, MIDC, BHOSARI', N'PUNE', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00001', NULL, 0)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (7, N'vendor', N'Surya Technoiads', N'404, aboli building, siddhi vinyak manas h. s. , dhayariphata pune', N'pune', 411041, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00002', N'Welding Rod', 0)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (8, N'vendor', N'Mahindra Composites Ltd (Mahindra)', N'145, Mumbai-Pune road, Pimpri, Pune, Maharashra-411018', N'PUNE', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00003', N'-', 0)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (9, N'vendor', N'Imi Abbrassive pvt ltd', N'S.No. 2328, Ubale Nagar Road, Wagoli, Haveli, Dist- Pune', N'Pune', 411047, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00004', N'Steel Shots Steel Shots', 0)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (10, N'vendor', N'Indian Card Clothing Company Ltd', N'Bombay pune road, pimpri, Pune, Maharashra-411018', N'PUNE', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00005', N'', 0)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (11, N'customer', N'AKAR TTOLS LTD UNIT II', N'C-5/8, Waluja , MIDC, Aurangabad', N'Aurangabad', 431133, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 0)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (12, N'customer', N'AKAR TOOLS LTD UNIT-II', N'C-5/6, Waluj MIDC, Aurangabad', N'Aurangabad', 431133, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (13, N'customer', N'JAYPEE FORGE PVT.LTD', N'C-19/5 , MIDC, Taloja , Dist Raigad .', N'Raigad', 410208, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'   Jaypee', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (14, N'customer', N'ALLIANCE ENGINEERING COMPANY', N'1364, Shukrawar Peth, Bharat Bhavan ,(B), Pune-002', N'Pune-002', 411002, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N' Alliance Engg Company', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (15, N'customer', N'TRINITY AUTO COMPONENTS LTD', N'Gat No 1419/2, Shikrapur, Tal- Shirur, Dist -Pune', N'Pune', 412208, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'  2 R And RH', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (16, N'customer', N'INVOLUTE TECHNOLOGIES PVT.LTD', N'Gat No. 232,156,157,158 & 159 , Alandi Markal Road Village Dhanore , Tal Khed , Pune-412105', N'Pune', 412105, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'  Sales', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (17, N'customer', N'DYCON SYSTEMS PVT LTD', N'K-1/4, PALAM MATIYAL ROAD, RAJAPURI,UTTAM NAGAR.', N'DELHI', 110059, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (18, N'customer', N'TRINITY INDIA FORGE TECH PVT.LTD', N'Gat No. 1425/2 & 3 | Shikrapur, Off Pune Nagar Road Tal Shirur Dist Pune .', N'Pune', 412208, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (19, N'customer', N'Deccan Mechanical & Chemical Industries Pvt.Ltd.', N'T-91, MIDC, Bhosari, Pune –Maharashtra, India', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (20, N'customer', N'PATANGE INDUSTRIES PRIVATE LIMITED', N'J-237/1, MIDC, Bhosari,PUNE - 411 026 -INDIA.', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'  1+1', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (21, N'customer', N'S.R.AUTO PARTS.', N'Unit = I ,  J - Block , 348/349
  Bhosari MIDC,  Pune', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (22, N'customer', N'Ambota Steel Sales', N'23,Guru Nanak Udyog Bhavan, L.B.S. Marg, Bhandup (W), Mumbai.', N'Mumbai', 400078, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (23, N'customer', N'INDO CHAINS (RAIPUR) PVT. LTD', N'Plot no.14 & 2 Part Industrial EstateBhanpuri,Raipur –  India', N'Raipur', 493221, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'    ', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (24, N'customer', N'YAWALKAR INDUSTRIES', N'Shed No.S12/b, Parvati Industrial Estate, Pune-Satara Road, Pune', N'Pune', 411009, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (25, N'customer', N'Y.P. ENGINEERING WORKS - CHINCHWAD', N'SR. NO. 64, Opp. Ador Welding Ltd.Near Datta Mandir, Chinchwad, Pune.', N'Pune', 411019, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (26, N'customer', N'S.V.R. Engineering Works,', N'Plot.No.B9/1, Near Santoshi Matha Temple,I.D.A.,Patancheru,Medal.', N'Aurangabad', 502319, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (27, N'customer', N'SONAWANE ENTERPRISES', N'Shop No 4, Hillman Forge Compound , Block T 124  MIDC Bhoshari Pune', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (28, N'customer', N'S.B.ENGINEERS', N'J-496 , MIDC , BHOSARI , PUNE ,MAHARASHTRA', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (29, N'customer', N'OBCONIC TOOL CRAFTS', N'PLOT NO D103/2 ,PHASEL ,IDA JEEDIMETLA , HYDERABAD', N'Hyderabad', 500055, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (30, N'customer', N'KOHINOOR INDUSTRIES', N'38/3 , BLOCK D-III , MIDC CHINCHWAD, PUNE', N'Pune', 411019, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (31, N'customer', N'Nirmal Industrial Controls Pvt. Ltd.', N'Survey No. 136/1 (P) ; Asangaon | Tal: Shahapur ; Dist: Thane', N'Thane', 421601, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (32, N'customer', N'M K INDUSTRIES', N'SEC.NO 7 , PLOT NO 147/A ,PCNTDA , BHOSARI', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (33, N'customer', N'Cesare Bonetti India (P) Ltd', N'Survey No. 36,39 & 42 , N.H.No.8,Karambele (Vapi) Gujarat,India', N'Gujarat', 396105, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (34, N'customer', N'Mahindra Gears & Transmissions Pvt Ltd', N'Plot.No.01,31 To 34,Galaxy Industrial Estate S.NO 274/P Shapar,Kotdasangani,Rajkot,Gujrat', N'Gujrat', 360024, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (35, N'customer', N'MIRAGE FORGE PVT. LTD.', N'GAT NO. 343, PLOT NO. 7,8 & 9, VILLAGE MAHALUNGE (INGALE) CHAKAN- TALEGAON ROAD, CHAKAN, DIST, PUNE', N'Pune', 410501, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (36, N'customer', N'METS INDIA MACHINE EQUIPMENTS & TRANSMISSION SYSTEM', N'PLOT NO 19 , GANESH KRUPA SOCIETY,VIKASHNAGAR , SANGAMNAGAR, SATARA MAHARASHTRA STATE, INDIA.', N'SATARA', 415003, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (37, N'customer', N'CEEKEPEE ENGINEERING WORKS PVT. LTD.', N'PLOT NO.12, GAURAIPADA AGRO   VRUKSH LAGWAD CO-OP. SOCIETY LTD NEAR HINDU SAMSHAN BHUMI GAURAIPADA VASAI-E) DIST THANE(M.S.)', N'THANE', 401208, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (38, N'customer', N'M R Engineering Co.', N'Plot.No.9/2,Kapoor Estate,N.H.8,Mandvi Village,Virar (E),Thane-401303', N'Thane', 401303, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (39, N'customer', N'Patson Auto Products Pvt Ltd', N'J-248,MIDC,Bhosari,Pune-411026', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (40, N'vendor', N'SHREE GOVIND STEEL', N'W-11/W-12, S-BLOCK, MIDC, BHOSARI', N'PUNE', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'       VC-00001', N'Shree Govind', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (41, N'vendor', N'Surya Technoiads', N'404, aboli building, siddhi vinyak manas h. s. , dhayariphata pune', N'pune', 411041, N'0', NULL, 0, 0, 0, 0, NULL, N'   VC-00002', N'Welding Rod', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (42, N'vendor', N'Trigon Enterprises', N'Shop o.115, swapna nagri, annasaheb magar stadimum, pimpri, pune', N'pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'      VC-00003', N'Vmc Machine Part, Cutter', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (43, N'vendor', N'Imi Abbrassive pvt ltd', N'S.No. 2328, Ubale Nagar Road, Wagoli, Haveli, Dist- Pune', N'Pune', 411047, N'0', NULL, 0, 0, 0, 0, NULL, N'         VC-00004', N'Steel Shots Steel Shots', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (44, N'vendor', N'Prashant Enterprises', N'S.No. 223/2, Tukai Nagar Dighi Road, Bhosari, Pune', N'Pune', 411039, N'0', NULL, 0, 0, 0, 0, NULL, N'           VC-00005', N'Safety Handgloves, Lag Guards, Aprons', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (45, N'vendor', N'Disha Enterprises', N'9/A 1 Goyal Residency, Mumbai Pune Road, Nashik, Phata kasarwadi Pune', N'Pune', 411034, N'0', NULL, 0, 0, 0, 0, NULL, N'  VC-00006', N'Welding Rod', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (46, N'vendor', N'Moraya Trading Corporation', N'Surve No.99, Plot No. Vihar apt. Telco-Bhosari Road, Yeswant Nagar,pimpri Pune', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'      VC-00007', N'Ht Spring Steel', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (47, N'vendor', N'Nitin Sales', N'Shukrawar Peth', N'Pune', 411001, N'0', NULL, 0, 0, 0, 0, NULL, N'  VC-00008', N'welding rods', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (48, N'vendor', N'Ferrite Metal Solutions pvt ltd', N'Row House No.R6,Plot No.119 Sec. no.13, Manas Crest opp Cng Pump, Chikhali, Pune', N'Pune', 411019, N'0', NULL, 0, 0, 0, 0, NULL, N'  VC-00009', N'Welding Rod', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (49, N'vendor', N'M K Industries', N'Sec. NO.7 Plot NO.147/A Pacndta,Bhosari, Pune', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'    VC-00010', N'M S Plate, EN 8 Plate shailesh and sales', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (50, N'vendor', N'Firstar', N'Shop No. 1&2 Rajmata Industrial Premises midc ,Bhosari, Pune', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00011', N'M S Pipe & Fitting tools, Hardware Supplies', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (51, N'vendor', N'Ganraj Electrials', N'Kamath Industrial Shoping Complex Shop: 4 B/G Plot No. 83, Bhosari, pune', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00012', N'House of Industrial Electrical Materials', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (52, N'vendor', N'Essan Engineers', N'9, Prashant, Patel Esate,opp. Engg. ltd Jogeshwar(w) Mumbai', N'Mumbai', 400102, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00013', N'Mounted Point A-1, A-3, A-11, A-15, W-178', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (53, N'vendor', N'Sudhanshu Associates', N'Shop no. 8 & 9 Bhakti Chambers, Yeswant Nagar, pimpri', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00014', N'Welding Material & General Suppliers', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (54, N'vendor', N'Jay Bee Hardware', N'Shop no. 6 & 7, Mayur Panorama, Nehru Nagar', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00015', N'V Belt, H. T. Nut, Bolt Industrial Hardwares', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (55, N'vendor', N'Hakimi Engieering Store', N'Shop no. 6 Trishul Apartment, Yeswant Nagar Telco Road, Pimpri', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00016', N'Stockist & Supplier Fasteners H.T. Bolt , Nut Washar', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (56, N'vendor', N'Vitrag Metal', N'j-514, Gala no.9/A Goyal Industrial Premises, Telco Road, Gavali Matha chowk Midc, Bhosari, pune', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00017', N'M.S.Material ,En 8,9,19,24, Die steel c45 Bars', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (57, N'vendor', N'N.J. Enterprises', N'a-103, Avani Tower, old Dada Saheb Gaikwad Road, Mulund (w), Mumbai', N'Mumbai', 400080, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00018', N'Skf, fag Bearings, V- Belt, all industrial items', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (58, N'vendor', N'Asian Steel Industies', N'B2/601, Greenland Apprment, jb Nagar Aandheri East, Mumbai', N'Mumbai', 400059, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00019', N'Steel Shot & Grits', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (59, N'vendor', N'Rohit  Enterprises', N'Anand Park, Stadium Road Nehau Nagar,Pimpri', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00020', N'OIL paint, Genral Hardware', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (60, N'vendor', N'Kranti Metal', N'Sector no.10 Plot no.4/20                   Vishweshar Chowk, Pcntda, midc, Bhosari', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00021', N'En8,9,19,24,31,42 DB-6, P-20 High Speed,', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (61, N'vendor', N'Rama Trading', N'Mohit Row House no.10, Shop no. 2, Sector-2, Airoli, Navi Mumbai', N'Mumbai', 400708, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00022', N'Brake Liner, Hammer Belt, Nylon Rope', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (62, N'vendor', N'Prism Packing Agencies', N'Shop no. 2/A, Ground Floor, New Ashoka Vihar, Ambad, Nashik', N'Nashik', 422010, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00023', N'Rubber Foundation Belt, Conveyor Belt, Brake Lining, Hammar   Belt ,Nylon Rope', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (63, N'vendor', N'Geeta Hardware & Electricals', N'Shop No.2, j m Height Main Road, Nehru Nagar, Pimpri', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00024', N'Electric, G. I. Pipe & Fittings,  p.v.c. Pipes, all type Hardware', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (64, N'vendor', N'Adarsh Bearings Pvt Ltd', N'20-A, 3rd Floor Parekh Chamber 127, Chakla Street Mumbai', N'Mumbai', 400003, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00025', N'ALL Type  Ball Bearings       make skf , fag', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (65, N'vendor', N'A. R. Enterprises', N'Plot no.285, Sec. 10, Pcntda, Midc, Bhosari', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00026', N'Industrial Oil, Grease & Hardware Materials', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (66, N'vendor', N'Ramjivan Treders', N'C/O, Narayandas Laddha, 1st Floor 9, Mangalwar Peth Maheshwari Bldg', N'Pune', 411011, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00027', N'Bandsaw Blade, Vmc Tooling', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (67, N'vendor', N'Aaryan Enterprises', N'Geeta Apartment, Telco- Bhosari Road, Yeswant Nagar,Pimpri', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00028', N'Safety Helment, Goggles, Mask, Ear Plug, pvc Apron, handgloves', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (68, N'vendor', N'B.R. Packing', N'Plot No.x-10, G-Block, Midc, Bhosari, Pune', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00029', N'Wooden Creat', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (69, N'customer', N'Crane Process Flow', N'Pune', N'Pune', 411001, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (70, N'vendor', N'Balaji Engineering Carporation', N'Office no.9, PESH Industrical premises, S, Block, Telco Road, Midc, Bhosari, Pune', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00030', N'SKF,fag,nbc Bearing, Grease', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (71, N'vendor', N'Hi Tech Enterprises', N'Plot no.27, wmdc Industrial Estate, Kharabwadi, Chakan, tal. KHED, dist. Pune', N'Pune', 411019, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00031', N'Steel Shots, Shot Blasting Rubber Sheet,Shot Blasting M/C Part', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (72, N'vendor', N'Sagar Sales Corporation', N'Ravi Prabha Apartment, Shop no. 3, Jyoti English School, Nehrunager, Pimpri, Pune', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00032', N'Phillips, cropton, policab cables&wires L& t switch electronic materials', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (73, N'vendor', N'A M Sales Carporation', N'B no. 449 TS No. 2481, Sant Tukaram Nagar, Pimpri, Pune', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00033', N'Pneumatics & Hydrolic  Cylinders Hospipe, solenoid Valves, Ball valve M. S, flanges', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (74, N'vendor', N'J M J Taders', N'Shop no. 20/7, Pawar Bldg. opp. Kwality ice cream, midc Bhosari', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00034', N'Cutting Tools, Pneumatic, Hydraulic & Barss Fittings, Hardware, v- Belt etc', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (75, N'vendor', N'Shah Brothers', N'3/13-F, Chakla Cross Lane, Devji bldg. Ground Floor, nr. Hanumanji Mandir, Mumbai', N'Mumbai', 400003, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00035', N'M.S., S.S, Brass, High Tensile astm UNC 2A Thrad studs nut, Washers', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (76, N'vendor', N'Gasket Industries', N'B-205, Hind Saurashtra ind. Estate, Marol naka, Andheri-Kyrla Road, Mumbai', N'Mumbai', 400059, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00036', N'SS Gasket', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (77, N'vendor', N'Kamal Inpex Fitting', N'Shop no. G-18,89/91, Durgadevi Street, Mumbai', N'Mumbai', 400004, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00037', N'SS Coupling, Nipple, Dairy Valve SS 304,316 Sheet', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (78, N'vendor', N'Vikram Metal', N'Geeta Aprt, Plotno. 15 Shop no.3, telco Road, Yeswant Nagar , Pimpri', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00038', N'Stainless Steel Pipe, Tube,Rod, Plate ,SS Bolt, nut, washer', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (79, N'vendor', N'Aaryan Enterprises', N'Plot no.15, Geeta Apartment,Telco- Bhosari Road, Yashwant Nagar, Pimpri', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00039', N'Industrial Safety Equipments. Helme, Goggles, mask, EAR plug, Hand Gloves, Apron etc', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (80, N'vendor', N'Laxmi Engineering Works', N'Omkar Industrial Premises. s.no.7, Plot no. 139, shop no.33,34,35 midc Bhosari', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00040', N'Metal Cutting Band-saw machines, But Welding Machines & m/c part', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (81, N'vendor', N'Mehta Enterprises', N'Shop no. 2 & 4, Shiv Apartments, anna Saheb Magar Stadium Road, Yeswant Nagar, Pimpri', N'Pune', 411018, N'0', NULL, 0, 0, 0, 0, NULL, N'   VC-00041', N'Ball Bearing & Genral suppliers', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (82, N'vendor', N'Neelkamal Spring & Engineering', N'105,S-Block, Shop no.07, Shantinagar midc, Bhosari', N'Pune', 411026, N'0', NULL, 0, 0, 0, 0, NULL, N'  VC-00042', N'all kinds of Automotive industrial Machinery Springs', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (83, N'customer', N'SHRID METAL TECHNOLOGIES PVT .LTD.', N'PIRANGUT, PUNE', N'PUNE', 411042, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (136, N'customer', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'Pune', 413420, N'0', N'Akash', 0, 0, 0, 0, N'akash@gmail.com', NULL, N' ', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (137, N'customer', N'BIG India Group pvt ltd', N'Pune', N'Pune', 546466, N'0', N'Akash', 0, 0, 0, 0, NULL, NULL, N' NA', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (138, N'vendor', N'BIG India Group pvt ltd', N'Pune', N'Pune', 54646, N'0', N'Akash', 0, 0, 0, 0, NULL, N'VC-00043', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (139, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'Pune', 413420, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00044', N'1 sales', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (140, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00045', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (141, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00046', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (142, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'Pune', 54646, N'0', N'Akash', 9876543210, 22, 96325874, 0, N'akash@gmail.com', N'VC-00047', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (143, N'vendor', N'Software', N'Akurdi PCMC', N'Pune', 12546, N'0', N'Sales', 9632587410, 22, 25633333, 0, N'sales@gmail.com', N'VC-00048', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (144, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00049', N'ghfg', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (145, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'New York', 546465, N'0', NULL, 0, 0, 0, 0, NULL, N'    VC-00050', N'dd', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (146, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 54646, N'0', N'Akash', 9632587410, 22, 96325874, 0, N'bharat@bigindiagroup.com', N'VC-00051', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (147, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 54646, N'0', N'Akash', 9632587410, 22, 96325874, 0, N'bharat@bigindiagroup.com', N'VC-00052', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (148, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 54646, N'0', N'Akash', 9632587410, 22, 96325874, 0, N'bharat@bigindiagroup.com', N'VC-00053', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (149, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 54646, N'0', N'Akash', 9632587410, 22, 96325874, 0, N'bharat@bigindiagroup.com', N'VC-00054', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (150, N'vendor', N'Sujay', N'Mumbai', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00055', N'dsd', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (151, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00056', N'asd', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (152, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00057', N'Ds', 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (153, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00058', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (154, N'vendor', N'Sales', N'Pune', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00059', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (155, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00060', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (156, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00060', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (157, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00061', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (158, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00062', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (159, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00063', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (160, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00063', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (161, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00063', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (162, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00063', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (163, N'vendor', N'BIG India Group pvt ltd', N'Pune', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00064', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (164, N'vendor', N'Sales', N'Pune', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00065', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (165, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00066', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (166, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00067', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (167, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00067', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (168, N'vendor', N'Software', N'Pune', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00068', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (169, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00069', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (170, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00070', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (171, N'vendor', N'Sales', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00071', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (172, N'vendor', N'Sales', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00071', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (173, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00072', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (174, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00073', N'5', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (175, N'vendor', N'Software', N'Pune', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00074', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (176, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'Pune', 12546, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00075', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (177, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'Pune', 12546, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00076', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (178, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00077', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (179, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00078', NULL, 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (180, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N'VC-00079', N'fdgdf', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (181, N'vendor', N'BIG India Group pvt ltd', N'Pune', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00080', N'NA', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (182, N'vendor', N'Artificail', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00081', N'sdfsd', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (183, N'vendor', N'Artificail', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00081', N'sdfsd', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (184, N'vendor', N'Artificail', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00081', N'sdfsd', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (185, N'vendor', N'Sales', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00082', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (186, N'vendor', N'Sharad', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00083', N'Jaypee', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (187, N'vendor', N'Sales', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00084', N'new', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (188, N'vendor', N'Sharad', N'Pune', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00085', N'fsdf', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (189, N'vendor', N'Sales', N'Pune', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00086', N'Jaypee', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (190, N'vendor', N'BIG India Group', N'Akurdi', N'New York', 12546, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00087', N'rwer', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (191, N'vendor', N'Sales', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00088', N'Jaypee', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (192, N'vendor', N'Sales', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00088', N'Jaypee', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (193, N'vendor', N'Sujay', N'Pune', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00089', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (194, N'vendor', N'Sales', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00090', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (195, N'vendor', N'BIG India Group', N'Pune', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00091', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (196, N'vendor', N'Sham', N's', N'k', 777777, N'0', NULL, 0, 0, 0, 0, NULL, N'  VC-00092', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (197, N'vendor', N'Sham', N's', N'k', 777777, N'0', NULL, 0, 0, 0, 0, NULL, N'  VC-00092', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (198, N'vendor', N'BIG India Group', N'Pune', N'New York', 12546, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00093', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (199, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'New York', 546465, N'0', NULL, 0, 0, 0, 0, NULL, N'  VC-00094', N'Jaypee', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (200, N'vendor', N'Sales', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00095', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (201, N'vendor', N'Software', N'Akurdi PCMC', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00096', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (202, N'vendor', N'Mahesh', N'PCMC', N'Pune-002', 2, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00097', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (203, N'vendor', N'Mahesh', N'PCMC', N'Pune-002', 2, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00097', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (204, N'vendor', N'Software', N'Akurdi PCMC', N'New York', 12546, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00098', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (205, N'vendor', N'BIG India Group', N'Pune', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00099', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (206, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' 0', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (207, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'Pune', 546466, N'0', NULL, 0, 0, 0, 0, NULL, N'  0', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (208, N'vendor', N'BIG India Group', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' 0', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (209, N'customer', N'Software', N'Pune', N'New York', 546466, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'  dfsd', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (210, N'vendor', N'BIG India Group', N'Pune', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00099', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (211, N'vendor', N'BIG India Group', N'Pune', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00099', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (212, N'vendor', N'Sas', N'sasa', N'asas', 99999, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00100', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (213, N'vendor', N'BIG India Group', N'Akurdi', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00101', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (214, N'vendor', N'BIG India Group', N'Akurdi', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00102', N'NA', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (215, N'customer', N'GMMSPL', N'Akurdi', N'Pune', 451202, N'0', NULL, 0, 0, 0, 0, NULL, NULL, N'       GMMSPL4', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (216, N'vendor', N'Software', N'Pune', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00103', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (217, N'vendor', N'Sujay', N'Akurdi', N'New York', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00104', N'', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (218, N'vendor', N'BIG India Group pvt ltd', N'Akurdi', N'New York', 546466, N'0', NULL, 0, 0, 0, 0, NULL, N'         VC-00105', N'adf', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (219, N'vendor', N'Sales', N'Akurdi', N'New York', 546465, N'0', NULL, 0, 0, 0, 0, NULL, N'     VC-00106', N'Jaypee', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (220, N'vendor', N'BIG India Group pvt ltd', N'Akurdi PCMC', N'Pune', 54646, N'0', NULL, 0, 0, 0, 0, NULL, N' VC-00107', N'Sales2', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (221, N'vendor', N'Square Engineering', N'Akurdi PCMC', N'Pune', 123456, N'0', NULL, 0, 0, 0, 0, NULL, N'  VC-00108', N'Square', 1)
INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] ([ID], [Type], [Name], [Address], [City], [Pincode], [Salutation], [Contact_Person], [Mobile_No], [STD_Code], [Telephone_No], [Fax], [Email_ID], [Vendor_Code], [Remarks], [isActive]) VALUES (222, N'vendor', N'Square Engineering', N'Akurdi', N'Pune', 411003, N'0', NULL, 0, 0, 0, 0, NULL, N'             VC-00109', N'Square', 1)
SET IDENTITY_INSERT [dbo].[ssmtbl_CustomerVendorMaster_Tb] OFF
/****** Object:  Table [dbo].[ssmtbl_Consumable_Issued]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ssmtbl_Consumable_Issued](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[IssuedTo] [varchar](max) NULL,
	[IssuedDate] [datetime] NULL,
	[IssuedQuantity] [float] NULL,
	[IssuedBy] [varchar](max) NULL,
	[Flag] [bit] NULL,
	[CreatedBy] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[Description] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ssmtbl_Consumable_Issued] ON
INSERT [dbo].[ssmtbl_Consumable_Issued] ([ID], [Code], [IssuedTo], [IssuedDate], [IssuedQuantity], [IssuedBy], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Description]) VALUES (1, N'WELDING ROD-M', N'NA', CAST(0x0000A7A800000000 AS DateTime), 50, N'admin', 1, N'admin', CAST(0x0000A7A800000000 AS DateTime), NULL, NULL, N'WELDING ROD 4"')
INSERT [dbo].[ssmtbl_Consumable_Issued] ([ID], [Code], [IssuedTo], [IssuedDate], [IssuedQuantity], [IssuedBy], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Description]) VALUES (2, N'WELDING ROD-M', N'die department', CAST(0x0000A7A900000000 AS DateTime), 5, N'RM00004', 1, N'RM00004', CAST(0x0000A7A900000000 AS DateTime), NULL, NULL, N'WELDING ROD 4"')
INSERT [dbo].[ssmtbl_Consumable_Issued] ([ID], [Code], [IssuedTo], [IssuedDate], [IssuedQuantity], [IssuedBy], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Description]) VALUES (3, N'WR1MM', N'KADAM', CAST(0x0000A7B300000000 AS DateTime), 15, N'admin', 1, N'admin', CAST(0x0000A7B300000000 AS DateTime), NULL, NULL, N'WELDING ROD 1MM')
INSERT [dbo].[ssmtbl_Consumable_Issued] ([ID], [Code], [IssuedTo], [IssuedDate], [IssuedQuantity], [IssuedBy], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Description]) VALUES (4, N'WR1MM', N'alok', CAST(0x0000A7B300000000 AS DateTime), 10, N'admin', 1, N'admin', CAST(0x0000A7B300000000 AS DateTime), NULL, NULL, N'WELDING ROD 1MM')
INSERT [dbo].[ssmtbl_Consumable_Issued] ([ID], [Code], [IssuedTo], [IssuedDate], [IssuedQuantity], [IssuedBy], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Description]) VALUES (9, N'WR1MM', N'Kadam', CAST(0x0000A87900000000 AS DateTime), 50, NULL, 1, NULL, CAST(0x0000A8790105E85B AS DateTime), NULL, CAST(0x0000A8790105E85C AS DateTime), N'WELDING ROD 1MM')
SET IDENTITY_INSERT [dbo].[ssmtbl_Consumable_Issued] OFF
/****** Object:  Table [dbo].[MultipleConatctPersonForCustomer_Tb]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MultipleConatctPersonForCustomer_Tb](
	[SrNo] [bigint] IDENTITY(1,1) NOT NULL,
	[ContactPersonName] [varchar](max) NULL,
	[Id] [bigint] NULL,
	[Email] [varchar](max) NULL,
	[Mob] [bigint] NULL,
	[STDCode] [bigint] NULL,
	[PhNo] [bigint] NULL,
 CONSTRAINT [PK_multipleconatctpersonforcustomer_Tb] PRIMARY KEY CLUSTERED 
(
	[SrNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ON
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (1, N'MR. Ratan Tata', 1, N'rt@gmail.com', 5698756665, 20, 23546789)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (2, N'MR. Rajesh', 1, N'rj@ttl.co.in', 4567894566, 20, 89455554)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (3, N'Ravi Vaidya', 2, N'rv@gmail.com', 4678945655, 20, 20271072)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (4, N'Jitendrya Mishra', 3, N'jm@fmail.com', 8945621478, 20, 20274763)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (5, N'Sanjib Sahu', 3, N'ss@gmail.com', 5647894566, 20, 23456789)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (6, N'Abhijit', 4, N'ab@gmail.com', 5647895444, 20, 12345654)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (7, N'Anand', 5, N'anand@gmail.com', 7894564789, 20, 15452356)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (8, N'MR. Sharad', 6, N'sharad@itcorp.co.in', 5647894056, 20, 20274743)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (9, N'MR. Samson', 6, N'sam@iplt20.com', 7894564556, 20, 15556555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (10, N'MR. Adam', 7, N'adam@gmail.com', 7894567989, 20, 20274725)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (11, N'MR David', 8, N'david@gmail.com', 4561234789, 20, 20274252)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (12, N'MR. Smith', 8, N'smith@iplt20.com', 4567894566, 20, 12345678)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (13, N'MRS. Prity', 9, N'prity@gmail.com', 4567891234, 20, 20274254)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (14, N'MR Json Roy', 10, N'roy@gmail.com', 4561233478, 20, 20398582)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (15, N'Popatrao Jadhav', 11, N'popatrao.jadhav@akartoolsltd.com', 8888563658, 240, 2551220)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (16, N'Purshotam', 11, N'purushothaman@akartoolsltd.com', 9503157166, 240, 6647300)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (17, N'Popatrao Jadhav', 12, N'popatrao.jadhav@akartoolsltd.com', 8888563658, 240, 6647300)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (18, N'Purshotom', 12, N'purushothaman@akartoolsltd.com', 9503157166, 240, 2551220)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (19, N'DEWANG TOLIA', 13, N'dewang.tolia@jaypeeforge.com', 9198201586, 22, 27412484)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (20, N'yash avalaska', 14, N'allianceflange@gmail.com', 9422014958, 20, 24472546)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (21, N'Mr.R.H.Patil', 15, N'sales@trinityautocomp.com', 8600029709, 20, 27120873)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (22, N'Mr.Gatkal', 18, N'hjgatkal@forge-trinityindia.com', 7350970140, 73, 50970140)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (23, N'Mr.Rahul Raut', 19, N'purchase@demechindia.com', 758859607, 20, 27120994)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (25, N'Mr.Gurmel Singh Washist', 22, N'sales@ambota.com', 9820080047, 22, 67974025)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (26, N'Mr. Sohan Singh Rawat', 17, N'accounts@dyconsystems.com', 874599576, 11, 47152484)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (28, N'Mr. R. L. Chaudhari', 25, N'ypenggworks@rediffmail.com', 9923202634, 99, 23202634)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (29, N'Mr.Amod Yawalkar', 24, N'yawalkar.industries@gmail.com', 9881494915, 20, 66021781)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (30, N'Mr.R.V.Ramana Reddy', 26, N'hyd_svr1@yahoo.in', 9849511252, 8455, 241551)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (31, N'Mr.Sitaram U.Sonawane', 27, N'krupa.sitaram@yahoo.com', 9822534815, 98, 22534815)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (32, N'Mr.Ravi', 28, N'stores@sbforging.com', 9075015621, 20, 66142982)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (33, N'Mr.Ramesh', 30, N'kohinoorindustries123@gmail.com', 7774054937, 20, 27459218)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (34, N'Mr.Pravin Auti.', 31, N'pravin.auti@nirmalindustries.com', 9167792025, 2527, 661000)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (35, N'0000', 32, N'mkindustries786@rediffmail.com', 0, 20, 66129771)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (36, N'Mr.Renjith.V', 29, N'obconictoolcrafts@gmail.com', 9985627565, 99, 85627565)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (37, N'Mr.Hardik Shah', 33, N'hardikshah@cesare-bonetti.com', 0, 260, 6634036)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (38, N'Mr.RAYCHURA SAMIR', 34, N'raychura.samir@mahindracie.com', 9824451299, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (39, N'Mr.Koli', 35, N'mirage.forge@gmail.com', 9871105656, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (40, N'Mr.Vinayak Shelke', 36, N'purchase@metsindia.com', 8380041030, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (41, N'Mr. K.C.DESAI', 37, N'ceekepee@gmail.com', 9324545989, 250, 2455023)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (42, N'Mr.Amol Gaikwad', 39, N'purchase@patsonauto.com', 0, 20, 66113537)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (44, N'Jaishankar', 41, N'jaishankarpillai@rediffmail.com', 9881668740, 20, 24305069)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (49, N'Pandurang Bhoir', 46, N'morayasteel1818@yaho.com', 7745051818, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (50, N'Sagar Pustake', 48, N'sales.west@ferrsol.com', 9370964096, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (52, N'Lamkhade V.V.', 50, N'firstar01@gmail.com', 9922921864, 20, 32319571)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (53, N'H.R.Babar', 51, N'ganarajelectricals@rediffmail.com', 9371096988, 20, 27127120)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (55, N'Dharwadkar', 52, N'metalfinshingtools@gmail.com', 9689110824, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (56, N'Tushar', 53, N'saplpune@gmail.com', 9822377202, 20, 27476569)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (57, N'Amar Bhambhani', 54, N'jaybeehw@gmail.com', 8007055444, 20, 27431603)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (58, N'Yusuf Bharmal', 55, N'hakimieng@hotmail.com', 9372365252, 202, 60735253)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (59, N'Sanjay Shah', 56, N'vitragmetal2013@gmail.com', 9320879940, 20, 65116510)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (60, N'Darpan', 57, N'nj1986@yahoo.co.in', 9321057598, 22, 30117961)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (61, N'Ramesh Jindal', 58, N'ramesh.asiansteel@gmail.com', 9987567912, 22, 28208790)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (62, N'Om Prakash', 59, N'rohitenterprises2279@gmail.com', 9822319349, 20, 27430088)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (63, N'Kanti Jain', 60, N'krantimetal@ymail.com', 9764441857, 20, 64108909)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (64, N'Abhiahek S.Bose', 61, N'rama_trading@yahoo.co.in', 9920452997, 22, 27693564)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (65, N'0000000000', 62, N'prismpacking.nsk@gmail.com', 9371522967, 253, 3204359)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (66, N'Mukesh', 63, N'mc87821@gmail.com', 9271467044, 20, 27435318)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (67, N'Preeti', 64, N'info@adarshbearings.com', 9323274017, 22, 23452009)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (68, N'Amar Desmukha', 65, N'arenterprises1617@gmail.com', 8605025276, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (70, N'Jagdish', 67, N'aaryan.ent2011@gmail.com', 9175471551, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (71, N'Vasant Patel', 68, N'brpacking@yahoo.co.in', 0, 20, 27120710)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (72, N'Manoj Jadhav', 69, N'MJadhav@cranecpe.com', 0, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (73, N'Dipak Thorat', 70, N'bbearings1@gmail.com', 9881203151, 20, 27126586)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (74, N'Shyam R.', 71, N'hitech.enterprises27@gmail.com', 7875445962, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (75, N'Chander m.', 72, N'sagar.scorpn@gmail.com', 9822004220, 20, 27421362)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (76, N'Mohin', 73, N'amsalescor@hotmail.com', 9730222886, 20, 46772250)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (77, N'000000', 74, N'jmtraders94@gmail.com', 9960688694, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (78, N'Tejas Shah', 75, N'tejasshah_sb@yahoo.co.in', 9820850202, 22, 23432583)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (79, N'000000', 76, N'gasketindustries@yahoo.in', 0, 22, 28508147)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (80, N'000000', 77, N'kamalmetalind@gmail.com', 9820768317, 22, 23806163)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (81, N'B.R.Vishnoi', 78, N'vikrammetal29@gmail.com', 9730422629, 20, 27463971)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (82, N'Jagdish', 79, N'aaryan.ent2011@gmail.com', 9175471551, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (83, N'R. B. Sutar', 80, N'sales@laxmibandsaw.com', 9371003601, 20, 27421481)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (86, N'A.N.Chandramouli', 83, N'chandramoulianc@yahoo.co.in', 9890896508, 98, 90896508)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (87, N'Mr.SHAH', 84, N'steel_bhagwati@yahoo.com', 226633312, 22, 66333312)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (88, N'M.D.JAGTAP', 85, N'mayureshengineers.pune@gmail.com', 9881897631, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (89, N'Ajay', 86, N'ajay@gmail.com', 9876543210, 22, 23658974)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (90, N'xcvxc', 87, N'cxvc@gmail.com', 9876543210, 22, 54354324)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (91, N'fgdfg12', 87, N'fgdfg@gmail.com', 5868764563, 5645, 56464646)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (92, N'Akash', 88, N'akash@gmail.com', 9652314780, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (93, N'Akash', 149, N'bharat@bigindiagroup.com', 9632587410, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (94, N' Bharat', 186, N' akash@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (95, N' Sales', 187, N' bharat@bigindiagroup.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (96, N' Sales', 188, N' akash@gmail.com', 123456789, 22, 65555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (97, N' Akash', 189, N' akash@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (98, N' Sales', 190, N' akash@gmail.com', 123456789, 22, 98765456)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (99, N' Sales', 191, N' akash@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (100, N' Sales', 192, N' akash@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (101, N' Sales', 193, N' akash@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (102, N' Akash', 194, N' akash@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (103, N' Akash', 195, N' bharat@bigindiagroup.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (106, N' Sales', 198, N' bharat@bigindiagroup.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (108, N' Akash', 200, N' bharat@bigindiagroup.com', 123456789, 22, 65555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (109, N' Akash', 201, N' bharat@bigindiagroup.com', 123456789, 22, 36985211)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (110, N' Mahesh', 202, N' mahesh@gm.vom', 9999999999, 22, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (111, N' Mahesh', 203, N' mahesh@gm.vom', 9999999999, 22, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (112, N' sdfds', 204, N' sdsa@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (113, N' Sales', 205, N' bharat@bigindiagroup.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (114, N' Sales', 206, N' akash@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (116, N' Sales', 208, N' akash@gmail.com', 123456789, 22, 96325874)
GO
print 'Processed 100 total records'
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (117, N' Sales', 0, N' akash@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (119, N' Sales', 210, N' bharat@bigindiagroup.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (120, N' Sales', 211, N' bharat@bigindiagroup.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (121, N' 999999', 212, N' fddsf@gmail.com', 9632587410, 222, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (122, N' Akash', 213, N' akash@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (123, N' Sales', 214, N' akash@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (125, N' Sales', 216, N' bharat@bigindiagroup.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (126, N' Akash', 217, N' akash@gmail.com', 123456789, 22, 85693214)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (130, N' DEWANG TOLIA', 13, N' dewang.tolia@jaypeeforge.com', 9198201586, 22, 27412484)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (131, N' DEWANG TOLIA', 13, N' dewang.tolia@jaypeeforge.com', 9198201586, 22, 27412484)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (132, N'  DEWANG TOLIA', 13, N'  dewang.tolia@jaypeeforge.com', 9198201586, 22, 27412484)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (133, N' Sales', 220, N' bharat@bigindiagroup.com', 123456789, 22, 14515455)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (134, N' Sales', 220, N' sales@gmail.com', 9876543210, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (135, N' Sales', 41, N' sales@gmail.com', 123456789, 22, 15555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (136, N' Jaishankar', 41, N' jaishankarpillai@rediffmail.com', 9881668740, 20, 24305069)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (145, N' Akash', 42, N' akash@gmail.com', 123456789, 22, 15555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (146, N'  Akash', 42, N'  akash@gmail.com', 123456789, 22, 15555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (147, N' Sales', 42, N' sales@gmail.com', 123456789, 22, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (148, N'  Sales', 42, N'  sales@gmail.com', 123456789, 22, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (149, N'   Akash', 42, N'   akash@gmail.com', 123456789, 22, 15555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (150, N'  Akash', 42, N'  akash@gmail.com', 123456789, 22, 15555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (151, N' Bharat', 42, N' bharat@bigindiagroup.com', 123456789, 22, 11111111)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (152, N' Rohan', 221, N' rohan@squareengg.com', 9999999999, 22, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (153, N' Sandip Kulkarni', 221, N' sandip@squareengg.com', 9876543210, 0, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (154, N'  Rohan', 221, N'  rohan@squareengg.com', 9999999999, 22, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (155, N'  Sandip Kulkarni', 221, N'  sandip@squareengg.com', 9876543210, 0, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (158, N' Pandurang Bhoir', 46, N' morayasteel1818@yaho.com', 7745051818, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (159, N' Jaishankar', 41, N' jaishankarpillai@rediffmail.com', 9881668740, 20, 24305069)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (160, N'  Jaishankar', 41, N'  jaishankarpillai@rediffmail.com', 9881668740, 20, 24305069)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (161, N'  Sales', 41, N'  sales@gmail.com', 123456789, 22, 15555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (162, N' Akash', 41, N' akash@gmail.com', 123456789, 22, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (164, N' Sachin', 47, N' sachin@gamil.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (165, N'  Sachin', 47, N'  sachin@gamil.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (166, N' Nitin', 47, N' nitin@gmail.com', 9865321470, 22, 88888888)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (167, N'  Pandurang Bhoir', 46, N'  morayasteel1818@yaho.com', 7745051818, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (168, N' Pandurang Bhoir', 46, N' morayasteel1818@yaho.com', 7745051818, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (169, N' Sagar Pustake', 48, N' sales.west@ferrsol.com', 9370964096, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (170, N'  Sagar Pustake', 48, N'  sales.west@ferrsol.com', 9370964096, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (171, N' Sagar Pustake', 48, N' sales.west@ferrsol.com', 9370964096, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (172, N'  Jaishankar', 41, N'  jaishankarpillai@rediffmail.com', 9881668740, 20, 24305069)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (173, N'  Sales', 41, N'  sales@gmail.com', 123456789, 22, 15555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (174, N'   Jaishankar', 41, N'   jaishankarpillai@rediffmail.com', 9881668740, 20, 24305069)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (175, N'   Sales', 41, N'   sales@gmail.com', 123456789, 22, 15555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (176, N'  Jaishankar', 41, N'  jaishankarpillai@rediffmail.com', 9881668740, 20, 24305069)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (177, N' Jaishankar', 41, N' jaishankarpillai@rediffmail.com', 9881668740, 20, 24305069)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (186, N' Mr.R.H.Patil', 15, N' sales@trinityautocomp.com', 8600029709, 20, 27120873)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (187, N' R Patil', 15, N' hr@trinityautocomp.com', 123456789, 22, 88888888)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (200, N' Gaurav', 209, N' gaurav@gmail.com', 9876543210, 22, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (201, N'  Akash', 209, N'  bharat@bigindiagroup.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (285, N'Akash', 207, N'akash@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (286, N'Sales', 207, N'akash@gmail.com', 123456789, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (287, N'Sales', 196, N'sales@gmail.com', 123456789, 22, 5555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (288, N'sfsd', 196, N'ssa@gmail.com', 8956322222, 202, 36333333)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (301, N'Akash', 45, N'akash@gmail.com', 9632587410, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (320, N'Akash', 197, N'akash@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (321, N'sfsd', 197, N'ssa@gmail.com', 8956322222, 202, 36333333)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (330, N'Prakash', 23, N'akash@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (331, N'Mr.P. MANOJ KUMAR', 23, N'rao@indochains.com', 982642022, 771, 2562035)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (332, N'Akash', 23, N'akash@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (333, N'Sales', 23, N'akash@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (348, N'Sales3', 222, N'sales3@gmail.com', 8888888888, 22, 88888888)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (349, N'Sales4', 222, N'sales4@gmail.com', 123456789, 22, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (350, N'Sales2', 222, N'sales2@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (351, N'Aadarsh', 222, N'aadarsh@squareengg.com', 9999999999, 22, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (364, N'Akash', 145, N'akash@gmail.com', 123456789, 22, 23659874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (365, N'Sales', 145, N'sales@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (375, N'Sales', 43, N'sales@gmail.com', 123456789, 20, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (376, N'Sales', 43, N'akash@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (379, N'Akash', 40, N'akash@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (380, N'Sales', 40, N'akash@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (395, N'Sales', 44, N'sales@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (396, N'Akash', 44, N'akash@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (397, N'Hr', 44, N'hr@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (398, N'Prashant', 44, N'prashantenterprises1994@gmail.com', 9921182030, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (399, N'Bharat', 44, N'bharat@bigindiagroup.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (400, N'Bharat', 43, N'bharat@bigindiagroup.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (401, N'Sales', 43, N'akash@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (402, N'Sales', 43, N'sales@gmail.com', 123456789, 20, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (403, N'Sales', 219, N'akash@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (404, N'Bharat', 219, N'bharat@bigindiagroup.com', 9876543210, 22, 96325874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (409, N'Akash', 136, N'akash@gmail.com', 5555555555, 22, 23659874)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (410, N'Akash', 137, N'bharat@bigindiagroup.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (413, N'Dattanand Rathod', 215, N'datta@gmmspl.com', 9874563210, 22, 22222222)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (414, N'Madhavi', 215, N'madhavi@gmmspl.com', 9876543210, 22, 28589999)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (415, N'Sanjay Pujari', 215, N'sanjay@gmmspl.com', 9999999999, 999, 99999999)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (416, N'000000', 66, N'ramjivanl@yahoo.co.in', 9325323266, 20, 26129134)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (417, N'Sales', 66, N'sales@gmail.com', 123456789, 22, 33333333)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (419, N'Sales', 16, N'sales@gmail.com', 123456789, 22, 55555555)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (422, N'Mr.vijay', 20, N'patangeinds@gmail.com', 8237012815, 20, 46780536)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (423, N'Mr. Ajay', 20, N'ajay@gmail.com', 8888888888, 888, 88888888)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (424, N'Kamlesh Phadtre', 82, N'neelkamlspring@gmail.com', 9226309627, 0, 0)
INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] ([SrNo], [ContactPersonName], [Id], [Email], [Mob], [STDCode], [PhNo]) VALUES (425, N'Neelkamal', 82, N'neelkamal@gmail.com', 123456789, 22, 55555555)
SET IDENTITY_INSERT [dbo].[MultipleConatctPersonForCustomer_Tb] OFF
/****** Object:  Table [dbo].[LKP_Workorder_Status_Tbl]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_Workorder_Status_Tbl](
	[ID] [int] NULL,
	[Status] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LKP_Workorder_Status_Tbl] ([ID], [Status]) VALUES (601, N'Planning')
INSERT [dbo].[LKP_Workorder_Status_Tbl] ([ID], [Status]) VALUES (602, N'Active')
INSERT [dbo].[LKP_Workorder_Status_Tbl] ([ID], [Status]) VALUES (603, N'Cancel')
INSERT [dbo].[LKP_Workorder_Status_Tbl] ([ID], [Status]) VALUES (604, N'Completed')
/****** Object:  Table [dbo].[LKP_Units]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_Units](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Units] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LKP_Units] ON
INSERT [dbo].[LKP_Units] ([ID], [Units]) VALUES (1, N'LTR')
INSERT [dbo].[LKP_Units] ([ID], [Units]) VALUES (2, N'MTR')
INSERT [dbo].[LKP_Units] ([ID], [Units]) VALUES (3, N'M.T')
INSERT [dbo].[LKP_Units] ([ID], [Units]) VALUES (4, N'Kg')
INSERT [dbo].[LKP_Units] ([ID], [Units]) VALUES (5, N'Nos')
INSERT [dbo].[LKP_Units] ([ID], [Units]) VALUES (6, N'PCS')
INSERT [dbo].[LKP_Units] ([ID], [Units]) VALUES (7, N'Pair')
INSERT [dbo].[LKP_Units] ([ID], [Units]) VALUES (8, N'Unit')
SET IDENTITY_INSERT [dbo].[LKP_Units] OFF
/****** Object:  Table [dbo].[LKP_TermsAndCondition]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_TermsAndCondition](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[srno] [varchar](50) NULL,
	[description] [varchar](max) NULL,
	[type] [varchar](50) NULL,
	[formname] [varchar](50) NULL,
	[flag] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LKP_TermsAndCondition] ON
INSERT [dbo].[LKP_TermsAndCondition] ([id], [srno], [description], [type], [formname], [flag]) VALUES (1, N'1', N'1. Payment Terms   :    Within 45 days', N't&c', N'vendorpo', 1)
INSERT [dbo].[LKP_TermsAndCondition] ([id], [srno], [description], [type], [formname], [flag]) VALUES (2, N'2', N'2. Transporation   :   our end', N't&c', N'vendorpo', 1)
INSERT [dbo].[LKP_TermsAndCondition] ([id], [srno], [description], [type], [formname], [flag]) VALUES (3, N'3', N'3. Delivery Period :', N't&c', N'vendorpo', 1)
INSERT [dbo].[LKP_TermsAndCondition] ([id], [srno], [description], [type], [formname], [flag]) VALUES (4, N'4', N'4. Tax             : As Applicable', N't&c', N'vendorpo', 1)
INSERT [dbo].[LKP_TermsAndCondition] ([id], [srno], [description], [type], [formname], [flag]) VALUES (5, N'1', N'1. Do not exceed order quantity unless confirmed by us in writing.', N'Notes', N'vendorpo', 1)
INSERT [dbo].[LKP_TermsAndCondition] ([id], [srno], [description], [type], [formname], [flag]) VALUES (6, N'2', N'2. All payments will be made in pune. Subjected to Pune Jurisdiction  only.', N'Notes', N'vendorpo', 1)
INSERT [dbo].[LKP_TermsAndCondition] ([id], [srno], [description], [type], [formname], [flag]) VALUES (7, N'3', N'3. If details herein stated are not in accordance with your Quotation. Please write to us immediately.', N'Notes', N'vendorpo', 1)
INSERT [dbo].[LKP_TermsAndCondition] ([id], [srno], [description], [type], [formname], [flag]) VALUES (8, N'4', N'4. RM will be accepted only after inspection.', N'Notes', N'vendorpo', 1)
INSERT [dbo].[LKP_TermsAndCondition] ([id], [srno], [description], [type], [formname], [flag]) VALUES (9, N'5', N'5. Kindly state Purchase/Work Order No. on all corresponding Bills.', N'Notes', N'vendorpo', 1)
SET IDENTITY_INSERT [dbo].[LKP_TermsAndCondition] OFF
/****** Object:  Table [dbo].[LKP_Status_Tb]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_Status_Tb](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StatusID] [int] NULL,
	[StatusType] [varchar](max) NULL,
	[Status] [varchar](max) NULL,
 CONSTRAINT [PK_LKP_Status_Tb] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LKP_Status_Tb] ON
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (1, 1, N'Enquiry', N'New')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (2, 2, N'Enquiry', N'Feasibility Done ')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (3, 3, N'Enquiry', N'Quotation Approval Pending ')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (4, 4, N'Enquiry', N'Quotation Approved ')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (5, 5, N'Enquiry', N'Quotation sent to customer ')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (6, 6, N'Enquiry', N'Under Negotiation ')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (7, 7, N'Enquiry', N'Received PO ')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (8, 8, N'Enquiry', N'PO Approved ')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (9, 9, N'Enquiry', N'Close')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (10, 1, N'VendorPO', N'Not Approved ')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (11, 2, N'VendorPO', N'PO Approved ')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (12, 3, N'VendorPO', N'PO Rejected')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (13, 4, N'VendorPO', N'Close')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (14, 5, N'VendorPO', N'Auto Generated')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (15, 10, N'Enquiry', N'Quotation Reject')
INSERT [dbo].[LKP_Status_Tb] ([ID], [StatusID], [StatusType], [Status]) VALUES (16, 11, N'Enquiry', N'PO Reject')
SET IDENTITY_INSERT [dbo].[LKP_Status_Tb] OFF
/****** Object:  Table [dbo].[LKP_RawMaterialTestFis]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_RawMaterialTestFis](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LKP_RawMaterialTestFis] ON
INSERT [dbo].[LKP_RawMaterialTestFis] ([id], [type]) VALUES (1, N'Chemical')
INSERT [dbo].[LKP_RawMaterialTestFis] ([id], [type]) VALUES (2, N'Tensile')
INSERT [dbo].[LKP_RawMaterialTestFis] ([id], [type]) VALUES (3, N'Impact')
INSERT [dbo].[LKP_RawMaterialTestFis] ([id], [type]) VALUES (4, N'Hardness')
INSERT [dbo].[LKP_RawMaterialTestFis] ([id], [type]) VALUES (5, N'Grain flow')
INSERT [dbo].[LKP_RawMaterialTestFis] ([id], [type]) VALUES (6, N'Micro')
INSERT [dbo].[LKP_RawMaterialTestFis] ([id], [type]) VALUES (7, N' Inclusion')
INSERT [dbo].[LKP_RawMaterialTestFis] ([id], [type]) VALUES (8, N'Macro')
INSERT [dbo].[LKP_RawMaterialTestFis] ([id], [type]) VALUES (9, N'IGCE')
INSERT [dbo].[LKP_RawMaterialTestFis] ([id], [type]) VALUES (10, N'Test By Customer')
INSERT [dbo].[LKP_RawMaterialTestFis] ([id], [type]) VALUES (11, N'NA')
SET IDENTITY_INSERT [dbo].[LKP_RawMaterialTestFis] OFF
/****** Object:  Table [dbo].[LKP_Quotationoperationinvolved]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_Quotationoperationinvolved](
	[id] [int] NULL,
	[operationinvolvedname] [varchar](max) NULL,
	[type] [varchar](50) NULL,
	[seqno] [int] NULL,
	[serialno] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (2, N'Forging', N'Quotation', 2, 2)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (5, N'MPI', N'Quotation', 5, 5)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (4, N'ShotBlasting', N'Quotation', 4, 4)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (3, N'HeatTreatment', N'Quotation', 3, 3)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (1, N'Cutting', N'Quotation', 1, 1)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (6, N'QC', N'QC', 6, 6)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (7, N'Forging In Process QC', N'QC', 2, 7)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (8, N'MPI In Process QC', N'QC', 5, 8)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (9, N'ShotBlasting In Process QC', N'QC', 4, 9)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (10, N'HeatTreatment In Process QC', N'QC', 3, 10)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (11, N'Cutting In Process QC', N'QC', 1, 11)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (12, N'Dispatch ', N'Store', 6, 12)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (15, N'Machining ', N'Quotation', 15, 15)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (14, N'ColdCoining', N'Quotation', 14, 14)
INSERT [dbo].[LKP_Quotationoperationinvolved] ([id], [operationinvolvedname], [type], [seqno], [serialno]) VALUES (13, N'Grinding', N'Quotation', 13, 13)
/****** Object:  Table [dbo].[Lkp_ProductionUnits]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lkp_ProductionUnits](
	[SrNo] [bigint] NOT NULL,
	[UnitName] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Allocation] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Lkp_ProductionUnits] ([SrNo], [UnitName], [Description], [Allocation]) VALUES (1, N'Unit 1', N'Unit 1', 1)
INSERT [dbo].[Lkp_ProductionUnits] ([SrNo], [UnitName], [Description], [Allocation]) VALUES (2, N'Unit 2', N'Unit 2', 0)
INSERT [dbo].[Lkp_ProductionUnits] ([SrNo], [UnitName], [Description], [Allocation]) VALUES (3, N'Unit 3', N'Unit 3', 0)
INSERT [dbo].[Lkp_ProductionUnits] ([SrNo], [UnitName], [Description], [Allocation]) VALUES (4, N'Unit 4', N'Unit 4', 1)
/****** Object:  Table [dbo].[LKP_Inquiry_Tb]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_Inquiry_Tb](
	[ID] [bigint] NOT NULL,
	[Type] [varchar](max) NOT NULL,
	[Options] [varchar](max) NULL,
	[asendingnumber] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (101, N'Condition of supply', N'Forged', 1)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (102, N'Condition of supply', N'Heat Treated', 2)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (103, N'Condition of supply', N'Shot Blasted', 3)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (104, N'Condition of supply', N'Machined', 5)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (105, N'Condition of supply', N'Rust preventive', 4)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (201, N'Nature of work', N'Labour Job', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (202, N'Nature of work', N'With Material', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (301, N'Type of job', N'Round', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (302, N'Type of job', N'Profile', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (401, N'Hammer required', N'3 Tonne', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (402, N'Hammer required', N'1 .25 Tonne', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (403, N'Hammer required', N'1 Tonne', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (404, N'Hammer required', N'Other', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (501, N'Tooling requirement', N'Insert', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (502, N'Tooling requirement', N'Die Block', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (601, N'Material', N'Material Grade', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (701, N'Weights', N'Gross Wt', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (702, N'Weights', N'Cut Wt', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (703, N'Weights', N'Net Wt', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (704, N'Weights', N'Machined Wt', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (801, N'Lubricant preferred', N'Furnace Oil', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (802, N'Lubricant preferred', N'Polymer Based', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (803, N'Lubricant preferred', N'Graphite Based', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (901, N'Post forging operations', N'Cold Coining', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (902, N'Post forging operations', N'Shot Blasting', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (903, N'Post forging operations', N'Flash Grinding', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (904, N'Post forging operations', N'MPI', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (905, N'Post forging operations', N'Rust Preventive', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (906, N'Post forging operations', N'Packing', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (1001, N'Heat Treatment', N'Normalising', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (1002, N'Heat Treatment', N'Hardening & Tempering', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (1003, N'Heat Treatment', N'Iso Annealing', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (1004, N'Heat Treatment', N'Normalising & Tempering', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (1005, N'Heat Treatment', N'Solution Annealing', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (1006, N'Heat Treatment', N'NA', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (2001, N'Standard applicable', N'IS 3649', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (2002, N'Standard applicable', N'Other(descriptive)(available/not available)', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (3001, N'Operation involved', N'Forging', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (3002, N'Operation involved', N'Heat Treatment', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (3003, N'Operation involved', N'Shot Blasting', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (3004, N'Operation involved', N'MPI', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (3005, N'Operation involved', N'Cutting', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (4001, N'frqreporder', N'Monthly', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (4002, N'frqreporder', N'Quaterly', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (4003, N'frqreporder', N'Yearly', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (4004, N'frqreporder', N'Half-Yearly', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (5001, N'quotsec', N'Die', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (5002, N'quotsec', N'RCS', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (6001, N'posec', N'Die', 0)
INSERT [dbo].[LKP_Inquiry_Tb] ([ID], [Type], [Options], [asendingnumber]) VALUES (6002, N'posec', N'RCS', 0)
/****** Object:  Table [dbo].[LKP_CuutingCalculation_Tb]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_CuutingCalculation_Tb](
	[XSection] [varchar](max) NULL,
	[Sqin] [float] NULL,
	[CuttingRatePerPc] [float] NULL,
	[Qty] [float] NULL,
	[TotalCost] [float] NULL,
	[Formula] [varchar](max) NULL,
	[Type] [varchar](max) NULL,
	[Rate] [float] NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LKP_CuutingCalculation_Tb] ON
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'45 Dia', 2.47, 0.99, 0, 0, N'=(45/25.4)*(45/25.4)*0.7857', N'For Round Bars', 0.4, 1)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'52 Dia', 3.04, 1.22, 0, 0, N'=(50/25.4)*(50/25.4)*0.7857', N'For Round Bars', 0.4, 2)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'53 Dia', 3.42, 1.37, 0, 0, N'=(53/25.4)*(53/25.4)*0.7857', N'For Round Bars', 0.4, 3)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'56 Dia', 3.82, 1.53, 0, 0, N'=(56/25.4)*(56/25.4)*0.7857', N'For Round Bars', 0.4, 4)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'60 Dia', 4.38, 1.75, 0, 0, N'=(60/25.4)*(60/25.4)*0.7857', N'For Round Bars', 0.4, 5)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'70 Dia', 5.97, 2.39, 0, 0, N'=(70/25.4)*(70/25.4)*0.7857', N'For Round Bars', 0.4, 6)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'75 Dia', 6.85, 2.74, 0, 0, N'=(75/25.4)*(75/25.4)*0.7857', N'For Round Bars', 0.4, 7)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'80 Dia', 7.79, 3.12, 0, 0, N'=(80/25.4)*(80/25.4)*0.7857', N'For Round Bars', 0.4, 8)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'85 Dia', 8.8, 3.52, 0, 0, N'=(85/25.4)*(85/25.4)*0.7857', N'For Round Bars', 0.4, 9)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'90 Dia', 9.86, 3.95, 0, 0, N'=(90/25.4)*(90/25.4)*0.7857', N'For Round Bars', 0.4, 10)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'100 Dia', 12.18, 4.87, 0, 0, N'=(100/25.4)*(100/25.4)*0.7857', N'For Round Bars', 0.4, 11)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'110 Dia', 14.74, 5.89, 0, 0, N'=(110/25.4)*(110/25.4)*0.7857', N'For Round Bars', 0.4, 12)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'120 Dia', 17.54, 7.01, 0, 0, N'=(120/25.4)*(120/25.4)*0.7857', N'For Round Bars', 0.4, 13)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'160 Dia', 31.18, 12.47, 0, 0, N'=(160/25.4)*(160/25.4)*0.7857', N'For Round Bars', 0.4, 14)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'165 Dia', 33.16, 13.26, 0, 0, N'=(165/25.4)*(165/25.4)*0.7857', N'For Round Bars', 0.4, 15)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'50 RCS', 3.88, 1.55, 0, 0, N'=(50/25.4)*(50/25.4)', N'For Square Bars', 0.4, 16)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'55 RCS', 4.69, 1.88, 0, 0, N'=(55/25.4)*(55/25.4)', N'For Square Bars', 0.4, 17)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'63 RCS', 6.15, 2.46, 0, 0, N'=(63/25.4)*(63/25.4)', N'For Square Bars', 0.4, 18)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'65 RCS', 6.55, 2.62, 0, 0, N'=(65/25.4)*(65/25.4)', N'For Square Bars', 0.4, 19)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'70 RCS', 7.6, 3.04, 0, 0, N'=(70/25.4)*(70/25.4)', N'For Square Bars', 0.4, 20)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'75 RCS', 8.72, 3.49, 0, 0, N'=(75/25.4)*(75/25.4)', N'For Square Bars', 0.4, 21)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'80 RCS', 9.92, 3.97, 0, 0, N'=(80/25.4)*(80/25.4)', N'For Square Bars', 0.4, 22)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'85 RCS', 11.2, 4.48, 0, 0, N'=(85/25.4)*(85/25.4)', N'For Square Bars', 0.4, 23)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'90 RCS', 12.56, 5.02, 0, 0, N'=(90/25.4)*(90/25.4)', N'For Square Bars', 0.4, 24)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'95 RCS', 13.99, 5.6, 0, 0, N'=(95/25.4)*(95/25.4)', N'For Square Bars', 0.4, 25)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'100 RCS', 15.5, 6.2, 0, 0, N'=(100/25.4)*(100/25.4)', N'For Square Bars', 0.4, 26)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'110 Rcs', 18.76, 7.5, 0, 0, N'=(110/25.4)*(110/25.4)', N'For Square Bars', 0.4, 27)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'120 RCS', 22.32, 8.93, 0, 0, N'=(120/25.4)*(120/25.4)', N'For Square Bars', 0.4, 28)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'125 RCS', 24.22, 9.69, 0, 0, N'=(125/25.4)*(125/25.4)', N'For Square Bars', 0.4, 29)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'130 RCS', 26.2, 10.48, 0, 0, N'=(130/25.4)*(130/25.4)', N'For Square Bars', 0.4, 30)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'140 RCS', 30.38, 12.15, 0, 0, N'=(140/25.4)*(140/25.4)', N'For Square Bars', 0.4, 31)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'150 RCS', 34.88, 13.95, 0, 0, N'=(150/25.4)*(150/25.4)', N'For Square Bars', 0.4, 32)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'160 RCS', 39.68, 15.87, 0, 0, N'=(160/25.4)*(160/25.4)', N'For Square Bars', 0.4, 33)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'180 RCS', 50.22, 20.09, 0, 0, N'=(180/25.4)*(180/25.4)', N'For Square Bars', 0.4, 34)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'200 RCS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35)
INSERT [dbo].[LKP_CuutingCalculation_Tb] ([XSection], [Sqin], [CuttingRatePerPc], [Qty], [TotalCost], [Formula], [Type], [Rate], [Id]) VALUES (N'200 Dia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36)
SET IDENTITY_INSERT [dbo].[LKP_CuutingCalculation_Tb] OFF
/****** Object:  Table [dbo].[LKP_CostCenter]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_CostCenter](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Flag] [bit] NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_LKP_CostCenter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LKP_CostCenter] ON
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (1, N'M1', N'Die Shop', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (2, N'M2', N'VMC', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (3, N'M3', N'Cutting Sheting', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (4, N'M4', N'Cutting Bands', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (5, N'M5', N'Hammer1', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (6, N'M6', N'Hammer2', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (7, N'M7', N'Hammer3', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (8, N'M8', N'Hammer4', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (9, N'M9', N'Hammer5', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (10, N'M10', N'Shot Blasting', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (11, N'M11', N'Material Handling', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (12, N'M12', N'Compresor', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (13, N'M13', N'Electrical', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (14, N'M14', N'Utilities', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (15, N'M15', N'Tools And Equipment', 1, N'Maintenance')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (16, N'C1', N'Die Shop', 1, N'Consumabies')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (17, N'C2', N'VMC', 1, N'Consumabies')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (18, N'C3', N'Forging', 1, N'Consumabies')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (19, N'C4', N'Quality', 1, N'Consumabies')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (20, N'C5', N'Safety', 1, N'Consumabies')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (21, N'C6', N'Welding', 1, N'Consumabies')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (22, N'C7', N'Admin', 1, N'Consumabies')
INSERT [dbo].[LKP_CostCenter] ([ID], [Code], [Name], [Flag], [Type]) VALUES (23, N'C8', N'Maintenance', 1, N'Consumabies')
SET IDENTITY_INSERT [dbo].[LKP_CostCenter] OFF
/****** Object:  Table [dbo].[LKP_ConsumableRatePerUnit]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_ConsumableRatePerUnit](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ConsumableCode] [varchar](50) NULL,
	[ConsumableName] [varchar](max) NULL,
	[RatePerUnit] [float] NULL,
	[DateUpdated] [datetime] NULL,
	[Flag] [bit] NULL,
	[Type] [varchar](max) NULL,
	[StartReading] [varchar](max) NULL,
 CONSTRAINT [PK_LKP_ConsumableRatePerUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LKP_ConsumableRatePerUnit] ON
INSERT [dbo].[LKP_ConsumableRatePerUnit] ([Id], [ConsumableCode], [ConsumableName], [RatePerUnit], [DateUpdated], [Flag], [Type], [StartReading]) VALUES (1, N'DC01', N'Gas', 40, CAST(0x0000A6DA00000000 AS DateTime), 1, N'dailyconsumptions', N'15000')
INSERT [dbo].[LKP_ConsumableRatePerUnit] ([Id], [ConsumableCode], [ConsumableName], [RatePerUnit], [DateUpdated], [Flag], [Type], [StartReading]) VALUES (2, N'DC02', N'Water', 10, CAST(0x0000A6DA00000000 AS DateTime), 1, N'dailyconsumptions', N'1522')
INSERT [dbo].[LKP_ConsumableRatePerUnit] ([Id], [ConsumableCode], [ConsumableName], [RatePerUnit], [DateUpdated], [Flag], [Type], [StartReading]) VALUES (3, N'DC03', N'Electricity', 20, CAST(0x0000A6DA00000000 AS DateTime), 1, N'dailyconsumptions', N'15420')
SET IDENTITY_INSERT [dbo].[LKP_ConsumableRatePerUnit] OFF
/****** Object:  Table [dbo].[LKP_Consumable]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_Consumable](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Specification] [varchar](max) NULL,
	[Applicationcenter_CostCenter] [varchar](max) NULL,
	[Rate] [float] NULL,
	[StorageLevelMin] [float] NULL,
	[MaxQunatity] [float] NULL,
	[BalanceQunatity] [float] NULL,
	[Flag] [bit] NULL,
	[CreatedBy] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[Units] [varchar](max) NULL,
	[OpeningStock] [float] NULL,
	[OpeningDate] [datetime] NULL,
 CONSTRAINT [PK_LKP_Consumable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LKP_Consumable] ON
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (1, N'BOLT N09', N'BOLT HT 1/2 X8"', N'BOLT HT1/2 X 8"', N'Maintenance', 0, 8, 12, 4, 1, N'RM00004', CAST(0x0000A7AE00000000 AS DateTime), NULL, NULL, N'Nos', 4, CAST(0x0000A7AE00000000 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (2, N'C-BOLT-1', N'BOLT 1/2x2.5"', N'BOLT 1/2x2.5"', N'Maintenance', 0, 8, 12, 114, 1, N'RM00004', CAST(0x0000A7AE00000000 AS DateTime), NULL, NULL, N'Nos', 114, CAST(0x0000A7AE00000000 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (3, N'BOLT -NO2', N'BOLT 3/4x4"', N'BOLT 3/4x4"', N'Maintenance', 0, 8, 12, 16, 1, N'admin', CAST(0x0000A7AE00000000 AS DateTime), NULL, NULL, N'Nos', 16, CAST(0x0000A7AE00000000 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (4, N'BOLT-N03', N'BOLT-1/2 X 2''', N'BOLT-1/2 X 2"', N'Maintenance', 0, 8, 12, 32, 1, N'RM00004', CAST(0x0000A7AE00000000 AS DateTime), NULL, NULL, N'Nos', 32, CAST(0x0000A7AE00000000 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (5, N'BOLT-N04', N'BOLT-5/8X 2.5"', N'BOLT-5/8X 2.5"', N'Maintenance', 0, 8, 12, 7, 1, N'RM00004', CAST(0x0000A7AE00000000 AS DateTime), NULL, NULL, N'Nos', 7, CAST(0x0000A7AE00000000 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (6, N'BOLT-NO8', N'BOLT 7/8X6"', N'BOLT 7/8X6"', N'Maintenance', 0, 8, 12, 8, 1, N'admin', CAST(0x0000A7AE00000000 AS DateTime), NULL, NULL, N'Nos', 8, CAST(0x0000A7AE00000000 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (7, N'BOLT N05', N'BOLT 5/8x6"', N'BOLT 5/8x6"', N'Maintenance', 0, 8, 12, 31, 1, N'admin', CAST(0x0000A7AE00000000 AS DateTime), NULL, NULL, N'Nos', 31, CAST(0x0000A7AE00000000 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (8, N'BOLTN06', N'BOLT-7/8 X8"', N'BOLT-7/8 X8"', N'Maintenance', 0, 8, 12, 9, 1, N'RM00004', CAST(0x0000A7AE00000000 AS DateTime), NULL, NULL, N'Nos', 9, CAST(0x0000A7AE00000000 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (9, N'BOLT NO7', N'BOLT 7/8 X10"', N'BOLT-7/8 X 10"', N'Maintenance', 0, 8, 12, 12, 1, N'RM00004', CAST(0x0000A7AE00000000 AS DateTime), NULL, NULL, N'Nos', 12, CAST(0x0000A7AE00000000 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (10, N'WR1MM', N'WELDING ROD 1MM', N'1MM', N'Maintenance', 0, 50, 500, 150, 1, N'admin', CAST(0x0000A7B300000000 AS DateTime), NULL, NULL, N'Kg', 75, CAST(0x0000A7B300000000 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (11, N'MPI-A01', N'MPI MACHINE WATER BASED POWDER', N'MPI MACHINE WATER BASED POWDER', N'Quality', 0, 0.1, 1000, 0, 1, N'RM00004', CAST(0x0000A7B300000000 AS DateTime), NULL, NULL, N'Kg', 0, CAST(0x0000A7B300000000 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (12, N'BOLT N09', N'BOLT HT 1/2 X8"', N'BOLT HT1/2 X 8"', N'Maintenance', NULL, 8, 12, 114, NULL, NULL, CAST(0x0000A87A00F6D230 AS DateTime), NULL, CAST(0x0000A87A00F6A4A0 AS DateTime), N'Nos', NULL, NULL)
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (13, N'BOLT-NO8', N'BOLT 7/8X6"', N'BOLT 7/8X6"', N'Maintenance', 0, 8, 12, 8, 1, NULL, CAST(0x0000A87A00F863CC AS DateTime), NULL, CAST(0x0000A87A00F84A80 AS DateTime), N'Nos', NULL, NULL)
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (14, N'WR1MM', N'WELDING ROD 1MM', N'1MM', N'Maintenance', 0, 0, 0, 0, 1, NULL, CAST(0x0000A87A00FC6545 AS DateTime), NULL, NULL, N'Nos', NULL, CAST(0x0000A87A00FC6892 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (15, N'WR1MM', N'WELDING ROD 1MM', N'1MM', N'Maintenance', 0, 0, 0, 0, 1, N'Admin', CAST(0x0000A87A01031119 AS DateTime), NULL, NULL, N'Nos', NULL, CAST(0x0000A87A0103136D AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (16, N'WR1MM', N'WELDING ROD 1MM', N'1MM', N'Maintenance', 0, 0, 0, 0, 1, N'Admin', CAST(0x0000A87A0106A835 AS DateTime), NULL, NULL, N'Nos', NULL, CAST(0x0000A87A0106A835 AS DateTime))
INSERT [dbo].[LKP_Consumable] ([ID], [Code], [Description], [Specification], [Applicationcenter_CostCenter], [Rate], [StorageLevelMin], [MaxQunatity], [BalanceQunatity], [Flag], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Units], [OpeningStock], [OpeningDate]) VALUES (17, N'Wess', N'Wessel', N'10*10', N'Welding', 0, 5, 6, 6, 1, NULL, CAST(0x0000A87C00A8534F AS DateTime), NULL, NULL, N'Nos', NULL, CAST(0x0000A87C00A8559E AS DateTime))
SET IDENTITY_INSERT [dbo].[LKP_Consumable] OFF
/****** Object:  Table [dbo].[LKP_Colorcode_Tb]    Script Date: 05/07/2018 16:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_Colorcode_Tb](
	[Srno] [bigint] NOT NULL,
	[Materialgrade] [varchar](max) NULL,
	[Colorcode] [varchar](max) NULL,
	[Htmlcolor] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (1, N'ASTM A105', N'White', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (2, N'LF2 A350', N'White', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (3, N'SAE 1018', N'White', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (4, N'1020', N'White', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (5, N'ST 52.3 ', N'White', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (6, N'MS', N'White', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (7, N'En8', N'Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (8, N'En8D', N'Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (9, N'CK-45 ', N'Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (10, N'C-40', N'Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (11, N'45C8', N'Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (12, N'C-45', N'Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (13, N'C-48 ', N'Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (14, N'S-40C', N'Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (15, N'35C8', N'Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (16, N'En19', N'Yellow', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (17, N'En19C ', N'Yellow', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (18, N'SAE4140', N'Yellow', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (19, N'42CrMo4', N'Yellow', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (20, N'SAE140H ', N'Yellow', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (21, N'20MnCr5', N'Brown', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (22, N'20Mn5Cr4', N'Brown', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (23, N'20MnCr5H', N'Brown', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (24, N'16MnCr5', N'Blue', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (25, N'16Mn5Cr4', N'Blue', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (26, N'16MnCr5-H', N'Blue', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (27, N'SAE 8620 ', N'Black', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (28, N'SAE 8620H ', N'Black', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (29, N'19CrNi5', N'Black', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (30, N'41Cr4 ', N'Green', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (31, N'40Cr4B ', N'Green', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (32, N'38 X C Gost 4543-91', N'Green', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (33, N'20MnCr5 with Boron', N'Purpal', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (34, N'SAE 15 B 41 ', N'Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (35, N'ENT ', N'Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (36, N'S-48C ', N'Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (37, N'SAE 1053', N'Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (38, N'20NiCrMo2', N'White + Green', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (39, N'AISI 1070 ', N'White+Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (40, N'70C6', N'White+Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (41, N'ETN 22 ', N'White + Black', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (42, N'C22E', N'White + Black', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (43, N'En36 CBS 970', N'White + Blue', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (44, N'EN 24 ', N'White + Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (45, N'40NiCr4 - Mo3', N'White + Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (46, N'39NiCrMo2 ', N'White + Brown', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (47, N'En24', N'White + Brown', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (48, N'EN 47 ', N'White + Yellow', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (49, N'50Cr4V2', N'White + Yellow', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (50, N'35CrMn5', N'White + Purple', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (51, N'16MnCr5 Lsi', N'Yellow + Blue', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (52, N'SCM420H ', N'Yellow  + Green', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (53, N'18CrMo4', N'Yellow  + Green', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (54, N'l5NiCr4Mo2 ', N'Yellow + Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (55, N'l8tlrNiMo7 ', N'Yellow + Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (56, N'17NiCrMo6-7 ', N'Yellow + Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (57, N'En353', N'Yellow + Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (58, N'19CrNi5', N'Vellow  + Black', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (59, N'F-53', N'Yellow + Brown', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (60, N'F-55', N'Yellow + Purple', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (61, N'F 22', N'Yellow + Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (62, N'SS 316', N'Black + Green', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (63, N'SS 304', N'Black + Brown', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (64, N'SS 410', N'Black + Orange', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (65, N'Die Steel   DB6', N'Black + Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (66, N'DIN 1.2714', N'Black + Pink', NULL)
INSERT [dbo].[LKP_Colorcode_Tb] ([Srno], [Materialgrade], [Colorcode], [Htmlcolor]) VALUES (67, N'ASTM A800', N'White', NULL)
/****** Object:  StoredProcedure [dbo].[ssmsp_CuttingInstructionIssue]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ssmsp_CuttingInstructionIssue]
(@Action VARCHAR(MAX),
@WorkorderNo varchar(max) )
 AS
BEGIN
	IF @Action = 'selectCuttingInstructionIssuewithWONo'   
      BEGIN
     
              select t1.* from ssmtbl_CuttingInstructionIssue t1  where WorkorderNo=@WorkorderNo;
      END 
      End
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Close_Inquiry]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Close_Inquiry]        
(        
@InquiryNo [bigint] ,        
@Status [varchar] (max) = NULL,      
@createdby [varchar](max)= NULL,
@CommentForClose [varchar] (max) = NULL,
@createddate [datetime]= NULL
)        
As        
    
      BEGIN          
      begin tran          
 BEGIN TRY            
             
UPDATE  ssmtbl_Inquiry set Status=@Status,updatedby=@createdby,updateddate=@createddate   
,CommentForClose = @CommentForClose where InquiryNo=@InquiryNo    
        
commit tran          
END TRY            
BEGIN CATCH            
    rollback tran          
END CATCH          
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Approve_Quotation]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Approve_Quotation]           
(            
@QuotationNo [varchar](50) ,       
@InquiryNo [bigint] =NULL,       
@VersionNo [uniqueidentifier] = NULL,          
@ApprovedBy [varchar](max)= NULL,    
@ApprovalDate [datetime] = NULL,  
@Comment [varchar] (max) = NULL,  
@FileStatus [varchar] (max) = NULL  
)            
As            
        
      BEGIN              
      begin tran              
 BEGIN TRY                
                 
UPDATE  ssmtbl_Quotation set FileStatus=@FileStatus,ApprovedBy=@ApprovedBy,ApprovalDate=@ApprovalDate       
,Comment = @Comment where VersionNo=@VersionNo and QuotationNo=@QuotationNo  
  
  
Update ssmtbl_Inquiry set Status=@FileStatus, updatedby=@ApprovedBy, updateddate=@ApprovalDate where InquiryNo=@InquiryNo  
            
commit tran              
END TRY                
BEGIN CATCH                
    rollback tran              
END CATCH              
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Approve_PurchaseOrder]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Approve_PurchaseOrder]                   
(                    
@InquiryNo [varchar](50) ,               
@Filestatus [varchar] (max) =NULL,                  
@ApprovedBy [varchar](max)= NULL,            
@ApprovalDate [datetime] = NULL,          
@Comment [varchar] (max) = NULL,  
@po_id [bigint]        
)                    
As                    
                
      BEGIN                      
      begin tran                      
 BEGIN TRY                        
                         
          
Update ssmtbl_Inquiry set Status=@FileStatus, updatedby=@ApprovedBy, updateddate=@ApprovalDate where InquiryNo=@InquiryNo          
    
    
update ssmtbl_PurchaseOrder set POStatus=@Filestatus, Comment=@Comment, ApprovedBy=@ApprovedBy, ApprovalDate=@ApprovalDate where po_id=@po_id   
    
                    
commit tran                      
END TRY                        
BEGIN CATCH                        
    rollback tran                      
END CATCH                      
      END
GO
/****** Object:  StoredProcedure [dbo].[BindAllInquiryDropdown_sp]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[BindAllInquiryDropdown_sp]  
      @Action VARCHAR(MAX),  
      @status varchar(max)=null,  
      @inquirynumber bigint=null,  
      @params varchar(max)=null,  
      @filestatus varchar(max)=null,  
      @filecomment varchar(max)=null,  
      @Recordtype varchar(max)=null,  
      @Insertstep int=null,  
      @Filename varchar(max)=null,  
      @versionfilename varchar(max)=null,  
      @appby varchar(max)=null,  
      @id bigint =null,  
      @pono varchar(max)=null,  
      @vendername varchar(max)=null,  
      @getvountvpoapprovelist int=1,  
      @cuttingrateid bigint=null,  
      @QuotationNo varchar(max)=null,  
      @customername varchar(max)=null  
        
AS  
BEGIN  
      SET NOCOUNT ON;  
  IF @Action = 'bindpo'  
      BEGIN  
            select POCustomerPONo from Inquiry_Tb where customerName=@customername and POCustomerPONo is not null  
      END      
IF @Action = 'Bindrawmaterialtest'  
      BEGIN  
            select * from LKP_RawMaterialTestFis   
      END  
  
      IF @Action = 'selectcuttingrate'  
      BEGIN  
            select * from LKP_CuutingCalculation_Tb where id=@cuttingrateid  
      END  
       IF @Action = 'Bindquotsec'  
      BEGIN  
            select * from LKP_CuutingCalculation_Tb   
      END  
      IF @Action = 'Bindposec'  
      BEGIN  
            select * from LKP_CuutingCalculation_Tb    
      END  
      IF @Action = 'Returninquiryxml'  
      BEGIN  
 select inq.*   
,FeasibilityConditionSupplyname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityConditionSupply),'')  
,FeasibilityNatureofWorkname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityNatureofWork),'')  
,FeasibilityTypeofJobname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityTypeofJob),'')  
,FeasibilityHammerRequiredname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityHammerRequired),'')  
,FeasibilityMaterialname=isnull((select Materialgrade from  LKP_Colorcode_Tb tb1 where Srno=inq.FeasibilityMaterial),'')  
,FeasibilityLubricantPreferredname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityLubricantPreferred),'')  
,FeasibilityHeattreatmentname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityHeattreatment),'')  
,Feasibilitystandardapplicablename=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.Feasibilitystandardapplicable),'')  
,Inqfro=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FrequencyRepearOrder),'')  
,qsecunit=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.termconditon2),'')  
,posecunit=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.opearationinvolved3),'')  
,pomaxdienumber=isnull((select TOP 1 podienumber from Inquiry_Tb where InquiryNo=(select MAX(InquiryNo) from Inquiry_Tb where isnull(podienumber,'')<>'') order by InquiryNo desc),'')  
from Inquiry_Tb inq  
where InquiryNo=@inquirynumber for xml path  
      END  
       IF @Action = 'BindQuotationListoffile'  
      BEGIN  
            select * from Fileupload_Tb where Id=@inquirynumber and Recordtype=@Recordtype order by Srno desc  
      END  
      IF @Action = 'BindQuotationListoffileNew'  
      BEGIN  
            select * from QuotationVersion_Tb where InquiryNo=@inquirynumber and Recordtype=@Recordtype order by Srno desc  
      END  
      IF @Action = 'selectinquirydata'  
      BEGIN  
            select * from Inquiry_Tb where InquiryNo=@inquirynumber  
      END  
       
      IF @Action = 'BindGrid'  
      BEGIN  
            SELECT * FROM Inquiry_Tb e1 inner JOIN LKP_Status_Tb e2  
           ON e1.Insertstep = e2.statusID where e2.statustype='Enquiry'   
      END  
   IF @Action = 'Findmaxinquiryno'  
      BEGIN  
            select MAX(InquiryNo) from Inquiry_Tb  
      END  
      IF @Action = 'BindConditionofsupply'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='Condition of supply' order by asendingnumber asc  
      END  
       IF @Action = 'Bindfrqro'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='frqreporder'  
      END  
      IF @Action = 'BindNatureofWork'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='Nature of work'  
      END  
      IF @Action = 'Type of job'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='Type of job'  
      END  
      IF @Action = 'BindHammerrequired'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='Hammer required'  
      END  
      IF @Action = 'BindToolingRequirement'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='Tooling requirement'  
      END  
      IF @Action = 'Bindmaterial'  
      BEGIN  
            select * from LKP_Colorcode_Tb   
      END  
      IF @Action = 'Bindweights'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='Weights'  
      END  
      IF @Action = 'Bindlubricantpreferred'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='Lubricant preferred'  
      END  
      IF @Action = 'Bindforgingoperation'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='Post forging operations'  
      END  
      IF @Action = 'BindHeatTreatment'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='Heat Treatment'  
      END  
      IF @Action = 'Bindstandradapplicable'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='Standard applicable'  
      END  
      IF @Action = 'BindQuatationOperationInvolved'  
      BEGIN  
            select * from LKP_Inquiry_Tb where Type='Operation involved'  
      END  
      IF @Action = 'QuatationMultiselectopearaation'  
      BEGIN  
            select * from  LKP_Quotationoperationinvolved t WHERe t.type='Quotation' order by t.id asc  
      END  
      IF @Action = 'Bindquotationtermscondition'  
      BEGIN  
            select * from  Attr_Termandcondition_Tb where inquirynumber=@inquirynumber and type='quotation'   
      END  
      IF @Action = 'BindQuotestatus'  
      BEGIN  
           select * from  LKP_Status_Tb where statusID=5 or statusID=6 and statustype='Enquiry'  
      END  
       IF @Action = 'selectoprinvdrp'  
   BEGIN  
  Select * from LKP_Quotationoperationinvolved  
  where CHARINDEX( cast(id as varchar(8000)) , @params) > 0  
     END  
      IF @Action = 'selectoprtc'  
   BEGIN  
  Select * from LKP_QuotationTermcondition  
  where CHARINDEX( cast(id as varchar(8000)) , @params) > 0  
     END  
      IF @Action = 'splittr'  
   BEGIN  
  Select * from LKP_Inquiry_Tb  
  where CHARINDEX( cast(ID as varchar(8000)) , @params) > 0  
     END  
   IF @Action = 'Approvedquotation'  
      BEGIN  
      declare @srno int  
      select top 1 @srno= srno from Fileupload_Tb where Id=@inquirynumber and Recordtype=@Recordtype order by Srno desc;  
      select @srno  
            update Inquiry_Tb set Insertstep=@Insertstep where InquiryNo=@inquirynumber  
            update  Fileupload_Tb set filestatus=@filestatus,filecomment=@filecomment where  Srno=@srno  
             declare @srno1 bigint  
      select top 1 @srno1= Srno from QuotationVersion_Tb where InquiryNo=@inquirynumber  order by Srno desc;  
      select @srno1  
            update  QuotationVersion_Tb set filestatus=@filestatus,filecomment=@filecomment,approvedby=@appby,  
            approveddate=GETDATE()  
             where   Srno=@srno1  
               
      END  
      IF @Action = 'Approvedpo'  
      BEGIN  
        
      select top 1 @srno= srno from Fileupload_Tb where Id=@inquirynumber and Recordtype=@Recordtype order by Srno desc;  
      select @srno  
            update Inquiry_Tb set Insertstep=@Insertstep where InquiryNo=@inquirynumber  
            update  Fileupload_Tb set filestatus=@filestatus,filecomment=@filecomment,approvedby=@appby,approveddate=GETDATE()  
             where  Srno=@srno  
    
               
      END  
      IF @Action = 'Quotaionapprovedrejectfilebind'  
      BEGIN  
            select * from Fileupload_Tb where Id=@inquirynumber and Recordtype=@Recordtype        order by Srno desc  
    -- and   (filestatus='Approved' or filestatus='Reject' or filestatus='PendingforApproval' )   
      END  
       IF @Action = 'Quotaionapprovedrejectfilebind1'  
      BEGIN  
            select * from QuotationVersion_Tb where InquiryNo=@inquirynumber and Recordtype='Quotation'   
      order by Srno desc  
      --and (filestatus='Approved' or filestatus='Reject' or filestatus='PendingforApproval' )  
      END  
      IF @Action='slectfileforoverwrite'  
      BEGIN  
      select top 1 * from Fileupload_Tb where Id=@inquirynumber and  Recordtype=@Recordtype order by Srno desc;  
      END  
      IF @Action='slectfileforoverwriteQuotation'  
      BEGIN  
      select top 1 * from QuotationVersion_Tb where InquiryNo=@inquirynumber and  Recordtype=@Recordtype order by Srno desc   
      END  
       IF @Action = 'getCustomername'  
      BEGIN  
            select distinct  isnull(t1.Name,'') as custname from CustomerVendorMaster_Tb t1 where  type='customer'    ;  
      END  
        IF @Action = 'getvendor'  
      BEGIN  
            select distinct  isnull(t1.Name,'') as vendname,isnull(t1.Id,'') as vendid from CustomerVendorMaster_Tb t1 where type='vendor'    ;  
      END  
       IF @Action = 'qutationdownloadfromversiontable'  
      BEGIN  
            select * from QuotationVersion_Tb where Filename=@versionfilename for xml path  ;  
      END  
      IF @Action='termandcondtionforquotation'  
      BEGIN  
     select * from Attr_Termandcondition_Tb where inquirynumber=(select Top 1 inq.InquiryNo  
from QuotationVersion_Tb inq  
where  Filename=@versionfilename ) and flag=1;  
      END  
        IF @Action = 'qutationdownloadfromversiontablejson'  
      BEGIN  
             
              select inq.*   
                
,FeasibilityConditionSupplyname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityConditionSupply),'')  
,FeasibilityNatureofWorkname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityNatureofWork),'')  
,FeasibilityTypeofJobname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityTypeofJob),'')  
,FeasibilityHammerRequiredname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityHammerRequired),'')  
,FeasibilityMaterialname=isnull((select Materialgrade from  LKP_Colorcode_Tb where Srno=inq.FeasibilityMaterial),'')  
,FeasibilityLubricantPreferredname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityLubricantPreferred),'')  
,FeasibilityHeattreatmentname=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FeasibilityHeattreatment),'')  
,Feasibilitystandardapplicablename=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.Feasibilitystandardapplicable),'')  
,Inqfro=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.FrequencyRepearOrder),'')  
,qsecunit=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.termconditon2),'')  
,posecunit=isnull((select Options from  LKP_Inquiry_Tb tb1 where ID=inq.opearationinvolved3),'')  
from QuotationVersion_Tb inq  
where  Filename=@versionfilename   
  
  
  
  
  
      END  
       IF @Action = 'fetchlatestfilequotation'  
      BEGIN  
           select top 1 Filename from QuotationVersion_Tb where InquiryNo=@inquirynumber  order by Srno desc;  
      END  
       IF @Action = 'Bindcontactperson'  
      BEGIN  
           select Id,Contact_Person from CustomerVendorMaster_Tb where type='vendor' ;  
      END  
        IF @Action = 'fetchcontactpersondetails'  
      BEGIN  
           select Salutation,Contact_Person,Mobile_No,Email_ID from CustomerVendorMaster_Tb where type='vendor' and Id=@id   
      END  
       IF @Action = 'AdminQuotationapprovRejecteBind'  
      BEGIN  
           select * from QuotationVersion_Tb where Recordtype=@Recordtype and (filestatus is null) order by Srno desc  
            
      END  
       
       IF @Action = 'AdminpoapprovRejecteBind'  
      BEGIN  
            --select fu.*,inq.InquiryNo,inq.customerName,inq.QuotationNo,inq.POCustomerPONo from Fileupload_Tb fu  
            --join  Inquiry_Tb inq  on fu.Id=inq.InquiryNo   
            -- where   fu.Recordtype=@Recordtype and fu.filestatus is null order by fu.Srno desc  
               
             select fu.*,inq.InquiryNo,inq.customerName,inq.QuotationNo,inq.POCustomerPONo from Fileupload_Tb fu  
            join  Inquiry_Tb inq  on fu.Id=inq.InquiryNo   
             where   fu.Recordtype='PO' and fu.filestatus is null order by fu.crateddate desc  
      END  
      IF @Action = 'selectcstnameusingpo'  
      BEGIN  
            select Email_ID from CustomerVendorMaster_Tb where type='customer'   
    and Name=(select customerName from Inquiry_Tb where POCustomerPONo=@pono)  
      END  
      IF @Action = 'countpopendingapproval'  
      BEGIN  
              
           select COUNT(*) from Fileupload_Tb   
             
             where   Recordtype='PO' and filestatus is null  
      END  
      IF @Action = 'countquotationpendingapproval'  
      BEGIN  
              
            select count(*) from QuotationVersion_Tb where Recordtype='Quotation' and filestatus is null   
      END  
      IF @Action = 'countvenderpopendingapproval'  
      BEGIN  
             
  
  
   select COUNT(*) from VendorPurchaseOrder_Tb where statusid=@getvountvpoapprovelist  
              
      END  
      IF @Action = 'bindmulticpnvpo'  
      BEGIN  
              
            select distinct * from multipleconatctpersonforcustomer_Tb where id=(select Id from CustomerVendorMaster_Tb where Name=@vendername)  
      END  
      IF @Action = 'bindmultimailinvpo'  
      BEGIN  
              
            select distinct * from multiemailforcustomer_Tb where id=(select Id from CustomerVendorMaster_Tb where Name=@vendername)  
      END  
       IF @Action = 'slectnameusingvid'  
      BEGIN  
              
           select Name from CustomerVendorMaster_Tb where Id=@id  
      END  
      IF @Action = 'countnotification'  
      BEGIN  
              
           --select COUNT(*) from Notification_Tb;  
           select 7  ;  
  
      END  
       IF @Action = 'Notificationdisplay'  
      BEGIN  
            select top 7 * from Notification_Tb order by id desc;  
      END  
      IF @Action = 'BindQuotationNO'  
      BEGIN  
              
           select QuotationNo from Inquiry_Tb where QuotationNo is not null order by InquiryNo asc  ;  
      END  
      IF @Action = 'findquotationcreateddate'  
      BEGIN  
              
           select  quotationcreateddate from Inquiry_Tb where QuotationNo=@QuotationNo;  
      END  
END  
  
  
  
  
   
/****** Object:  StoredProcedure [dbo].[WorkOrderDetails_sp]    Script Date: 01/05/2017 12:22:59 ******/  
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_WorkOrderDetails]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ssmsp_WorkOrderDetails]
 (@xmlData XML =null, 
 @Action VARCHAR(MAX),
 @Actionsub VARCHAR(MAX)='alldates',
 
 @wonumber varchar(max)='',
 @currentpage int=1,
 @recordperpage int=10,
 @OPDatestart as datetime=null,
     @OPDateend as datetime=null,
     @ShiftID AS varchar(2)='1',
     @iscombine int=1,
     @OPIDS varchar(max)='0'
)
 AS
BEGIN
      SET NOCOUNT ON;
Declare @Msg varchar(max)
	  IF @Action = 'selectallopration'
      BEGIN
       SELECT  lkpop.[id]
      ,lkpop.[operationinvolvedname]
      ,lkpop.[type]
      ,lkpop.[seqno]
      ,lkpop.serialno
      ,previousopid=isnull((select pre.[id] from [LKP_Quotationoperationinvolved] pre where pre.serialno in(lkpop.serialno -1)),0)
     FROM [dbo].[LKP_Quotationoperationinvolved] lkpop
     where lkpop.[type]='Quotation' order by lkpop.serialno;   


      END
      
	  IF @Action = 'selecttotalandtime'
      BEGIN
       IF @wonumber = ''
      BEGIN
        SELECT wo.ID,
wo.[WorkorderNo]
      ,isnull(wod.[Pono],'')[Pono]
      ,isnull(wod.[Operationid],0)[Operationid]
     -- ,[Shift]
     -- ,wod. [OPDate]
      ,isnull(sum(wod. [ActualQnty]) ,0)as total
     -- ,[Comment]
     -- ,[createdby]
    --  ,max([createddate]) 
     -- ,[updatedby]
     ,(ISNULL( max(wod. [updateddate])   ,max(wod. [createddate]) ) ) as Dates
        , DATENAME(d,  (ISNULL( max(wod. [updateddate])   ,max(wod. [createddate]) ) ))+'-' 
     +LEFT(DATENAME(MONTH, (ISNULL( max(wod. [updateddate])   ,max(wod. [createddate]) ) )),3)
     +CONVERT(VARCHAR(9),RIGHT(  (ISNULL( max(wod. [updateddate])   ,max(wod. [createddate]) ) ),8),108)
     as updatedate
    --  ,ISNULL( max([updateddate])   ,max([createddate]) ) 
    --   , ( SELECT REPLACE(CONVERT(VARCHAR(9), ISNULL( max([updateddate])   ,max([createddate]) ) , 6), ' ', '-')) AS [DD-Mon-YY]
    --,(SELECT CONVERT(VARCHAR(20), ISNULL( max([updateddate])   ,max([createddate]) ), 100))
     -- ,[StatusTime]
     -- , DATENAME(d,  (wod. OPDate))+'-' 
     -- +LEFT(DATENAME(MONTH, (  wod. OPDate     )),3)
     --+CONVERT(VARCHAR(9),RIGHT(  (wod. OPDate ),8),108)
     --as updateopdate
    -- ,preopids=isnull( [dbo].[getpreoipid](wod. [Operationid]],wod. [Pono]),0)
    -- ,Dispatchqtyfromdc = isnull((select dt2.Dispatchqty from ssmtbl_WorkOrder dt2 where dt2.WorkorderNo=wo.WorkorderNo),0)
                         --Dispatchqtyfromdc=isnull( (select SUM(dt1.quantity)from DeliveryChallanItems_Tb dt1 where dt1.dispachno 
                         --in(select dt2.dispachno from DeliveryChallan_Tb dt2 where dt2.refno=wo.WorkOrderNo)),0)
  FROM [dbo].[ssmtbl_WorkOrder] wo  
   left join [dbo].[ssmtbl_WorkOrderDetails] wod  on wo.WorkOrderNo=wod.WorkorderNo
  -- left join LKP_Quotationoperationinvolved lop on lop.id 
  group by   wo.[WorkorderNo],[Operationid],wod.[Pono] ,wo.ID
  order by wo.ID desc--, wo.[WorkOrderNo],[Operationid] 
  
 
   END
        IF @wonumber <> ''
      BEGIN
        SELECT wo.ID,
wo.WorkorderNo
      ,isnull(wod. [Pono],'')[Pono]
      ,isnull(wod. [Operationid],0)[Operationid]
     -- ,[Shift]
     -- ,wod. [OPDate]
      ,isnull(sum(wod. [ActualQnty]) ,0)as total
     -- ,[Comment]
     -- ,[createdby]
    --  ,max([createddate]) 
     -- ,[updatedby]
     ,(ISNULL( max(wod. [updateddate])   ,max(wod. [createddate]) ) ) as Dates
        , DATENAME(d,  (ISNULL( max(wod. [updateddate])   ,max(wod. [createddate]) ) ))+'-' 
     +LEFT(DATENAME(MONTH, (ISNULL( max(wod. [updateddate])   ,max(wod. [createddate]) ) )),3)
     +CONVERT(VARCHAR(9),RIGHT(  (ISNULL( max(wod. [updateddate])   ,max(wod. [createddate]) ) ),8),108)
     as updatedate
    --  ,ISNULL( max([updateddate])   ,max([createddate]) ) 
    --   , ( SELECT REPLACE(CONVERT(VARCHAR(9), ISNULL( max([updateddate])   ,max([createddate]) ) , 6), ' ', '-')) AS [DD-Mon-YY]
    --,(SELECT CONVERT(VARCHAR(20), ISNULL( max([updateddate])   ,max([createddate]) ), 100))
     -- ,[StatusTime]
     -- , DATENAME(d,  (wod. OPDate))+'-' 
     -- +LEFT(DATENAME(MONTH, (  wod. OPDate     )),3)
     --+CONVERT(VARCHAR(9),RIGHT(  (wod. OPDate ),8),108)
     --as updateopdate
      ,preopids=isnull( dbo.getpreoipid(wod. [Operationid],wod. [Pono]),0)
       ,Dispatchqtyfromdc=isnull( (select SUM(dt1.quantity)from DeliveryChallanItems_Tb dt1 where dt1.dispachno 
                         in(select dt2.dispachno from DeliveryChallan_Tb dt2 where dt2.refno=wo.WorkOrderNo)),0)
  FROM [dbo].[WorkOrder_Tb] wo  
   left join [dbo].[WorkOrderDetails_Tb] wod  on wo.WorkOrderNo=wod.WorkOrderNo
  -- left join LKP_Quotationoperationinvolved lop on lop.id 
 where wo.[WorkOrderNo]=@wonumber  
 group by  wo.[WorkOrderNo],[Operationid],wod.[Pono] ,wo.ID
  order by wo.ID desc--wo.[WorkOrderNo],[Operationid] 
  
   END
   END
         
           END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_WorkOrder]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ssmsp_WorkOrder]
 (@xmlData XML =null, 
 @Action VARCHAR(MAX),
 @wonumber varchar(max)=null
)
 AS
BEGIN
      SET NOCOUNT ON;    
   
      IF @Action = 'selectwobywo'
      BEGIN
              select t1.*,statusname=(select t.status as asv from LKP_Status_Tb t where t.statusID= t1.status and t.statustype='WorkLoad' ) 
              ,partname=ISNULL(( select  top 1 inq.PartName from ssmtbl_Inquiry inq 
               join ssmtbl_PurchaseOrder po  on t1.Pono= po.CustomerPONo 
              join ssmtbl_Inquiry  on po.InquiryNo = inq.InquiryNo  ),'')
               --where  inq.POCustomerPONo = t1.Pono),'')
              from ssmtbl_WorkOrder t1  where WorkOrderNo= @wonumber 
      END 
   
      
      
      
END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Update_Vendor]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Update_Vendor]    
(    
     @ID bigint = NULL
      ,@Type varchar(max)=NULL
      ,@Name varchar(max)=NULL
      ,@Address varchar(max)=NULL
      ,@City varchar(max)=NULL
      ,@Pincode bigint='0'
      ,@Salutation varchar(max)='0'
       ,@Contact_Person varchar(max)=NULL
      ,@Mobile_No bigint='0'
      ,@STD_Code  bigint='0'
      ,@Telephone_No bigint='0'
      ,@Fax bigint='0'
       ,@Email_ID varchar(max)=NULL
      ,@Vendor_Code varchar(max)=NULL
      ,@Remarks varchar(max)=NULL,
      @isActive bit = 1,
      @delflag bit=0
     
)    
As    
    
     
      BEGIN      
      begin tran      
 BEGIN TRY        
         
UPDATE  ssmtbl_CustomerVendorMaster_Tb 
SET 
--Name=@Name, Address=@Address,City=@City,Pincode=@Pincode,Remarks=@Remarks 
 Name = @Name,address=@Address,City=@City,Pincode=@Pincode,Salutation=@Salutation,Mobile_No=@Mobile_No
            ,STD_Code=@STD_Code,Telephone_No=@Telephone_No,Fax=@Fax,Vendor_Code=@Vendor_Code,Remarks=@Remarks
WHERE Id = @Id 
select IDENT_CURRENT('ssmtbl_CustomerVendorMaster_Tb')
commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmSP_Update_Quotation]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ssmSP_Update_Quotation](    
 -- Add the parameters for the stored procedure here  
 @id bigint,  
 @InquiryNo bigint =NULL,    
 @QuotationNo varchar(50)= NULL,    
 @CustomerName varchar(50)= NULL,    
 @PartDescription varchar(50)= null,    
 @PartNo varchar(50)= null,    
 @HeatTreatment varchar(50) =null,    
 @Material varchar(50)= null,    
 @Section varchar(50)= NULL,    
 @MachainedWeight varchar(50)= NULL,    
 @GrossWeight decimal(18, 2)= NULL,    
 @CutWeight decimal(18, 2)= NULL,    
 @NetWeight decimal(18, 2)= NULL,    
 @ForgingCostBased varchar(50)= NULL,    
 @MPICostBasedOn varchar(50)= NULL,    
 @SteelCost decimal(18, 2)= NULL,    
 @Transportation decimal(18, 2)= NULL,    
 @Total decimal(18, 2)= NULL,    
 @TotalRowMaterialCost decimal(18, 2)= NULL,    
     
 @CuttingSquare1 decimal(18, 2)= NULL,    
 @CuttingSquare2 decimal(18, 2)= NULL,    
    
 @Forging1 decimal(18, 2)= NULL,    
 @Forging2 decimal(18, 2) =NULL,    
 @HeatTreatment1 decimal(18, 2)= NULL,    
 @HeatTreatment2 decimal(18, 2)= NULL,    
 @ShotBlasting1 decimal(18, 2)= NULL,    
 @ShotBlasting2 decimal(18, 2)= NULL,    
 @MPI1 decimal(18, 2)= NULL,    
 @MPI2 decimal(18, 2)= NULL,    
 @Grinding1 decimal(18, 2)= NULL,    
 @Grinding2 decimal(18, 2)= NULL,    
 @ColdCoining1 decimal(18, 2)= NULL,    
 @ColdCoining2 decimal(18, 2)= NULL,    
 @Machining1 decimal(18, 2)= NULL,    
 @Machining2 decimal(18, 2)= NULL,    
    
 @DieMaintenance1 decimal(18, 2)= NULL,    
 @DieMaintenance2 decimal(18, 2) =NULL,    
    
 @TotalConverstionCost decimal(18, 2)= NULL,    
    
 @Status varchar(50)= null,    
    
 @TotalComponentCost decimal(18, 2) =NULL,    
 @InitialDieCost decimal(18, 2) =NULL,    
 @PoNo varchar(50)= null,    
 @FileStatus varchar(50)= null,    
 @Comment varchar(50)= null,    
 @ApprovalDate datetime= NULL,    
 @ApprovedBy varchar(50)= null,    
 @CreatedOn datetime =NULL,    
 @Createdby varchar(50) =NULL,    
 @UpdatedOn datetime =NULL,    
 @UpdatedBy varchar(50)= NULL,    
 @UserComment nvarchar(max)= NULL,  
  @ssmUT_TermsNCondtion_ as ssmUT_TermsNCondtion READONLY    
)    
AS    
BEGIN    
    
 SET NOCOUNT ON;    
       begin tran          
 BEGIN TRY       
    -- Insert statements for procedure here    
UPDATE ssmtbl_Quotation Set InquiryNo=@InquiryNo, QuotationNo=@QuotationNo, CustomerName=@CustomerName,PartDescription=@PartDescription,
 PartNo=@PartNo, HeatTreatment=@HeatTreatment, Material=@Material, Section=@Section, MachainedWeight=@MachainedWeight, GrossWeight=@GrossWeight,
 CutWeight=@CutWeight, NetWeight=@NetWeight, ForgingCostBased=@ForgingCostBased, MPICostBasedOn=@MPICostBasedOn, SteelCost=@SteelCost,     
 Transportation=@Transportation, Total=@Total, TotalRowMaterialCost=@TotalRowMaterialCost, CuttingSquare1=@CuttingSquare1, 
 CuttingSquare2=@CuttingSquare2, Forging1=@Forging1, Forging2=@Forging2, HeatTreatment1=@HeatTreatment1, HeatTreatment2=@HeatTreatment2,
 ShotBlasting1=@ShotBlasting1, ShotBlasting2=@ShotBlasting2, MPI1=@MPI1, MPI2=@MPI2, Grinding1=@Grinding1, Grinding2=@Grinding2,
 ColdCoining1=@ColdCoining1, ColdCoining2=@ColdCoining2, Machining1=@Machining1 , Machining2=@Machining2, DieMaintenance1=@DieMaintenance1,
 DieMaintenance2=@DieMaintenance2, TotalConverstionCost=@TotalConverstionCost, TotalComponentCost=@TotalComponentCost, InitialDieCost=@InitialDieCost,
 PoNo=@PoNo, FileStatus=@FileStatus, Comment=@Comment, UpdatedOn=@UpdatedOn, UpdatedBy=@UpdatedBy,UserComment=@UserComment
 WHERE id=@id

    
update ssmtbl_Inquiry set Status=@Status Where InquiryNo=@InquiryNo      
    
Delete From [dbo].[ssmtbl_TermsNCondtion] Where QuotationID=@id
    
insert into [dbo].[ssmtbl_TermsNCondtion]([QuotationID],[TermsNConditionID],[TermsNConditionContent])    
select @id,TermsNConditionID,TermsNConditionContent from @ssmUT_TermsNCondtion_    
     
    
COMMIT TRAN          
END TRY            
BEGIN CATCH            
    ROLLBACK TRAN          
END CATCH          
END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Update_Inquiry]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Update_Inquiry]    
(    
@InquiryNo [bigint] ,    
@customerName [varchar](max)= NULL,    
@InquiryDate [datetime]= NULL,    
@PartName [varchar](max)= NULL,    
@PartNo [varchar](max)= NULL,    
@CustomerDrgNo [varchar](max) =NULL,    
@FrequencyRepearOrder [bigint]= NULL,    
@Qty [int] =NULL,    
@createdby [varchar](max)= NULL,    
@createddate [datetime]= NULL    
    
)    
As    

      BEGIN      
      begin tran      
 BEGIN TRY        
         
UPDATE  ssmtbl_Inquiry set customerName=@customerName,InquiryDate=@InquiryDate,PartName=@PartName,
PartNo=@PartNo,CustomerDrgNo=@CustomerDrgNo,FrequencyRepearOrder=@FrequencyRepearOrder,    
 Qty=@Qty,updatedby=@createdby,updateddate=@createddate where InquiryNo=@InquiryNo
    
commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Update_Feasibility]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Update_Feasibility]      
(    
@FeasibilityId [bigint],    
 @InquiryNo [bigint],    
 @FeasibilityConditionSupply [bigint]= NULL,    
 @FeasibilityNatureofWork [bigint] =NULL,    
 @FeasibilityTypeofJob [bigint] =NULL,    
 @FeasibilityHammerRequired [bigint]= NULL,    
 @FeasibilityToolingRequirement [varchar](max)= NULL,    
 @fisdiavalue [float] =NULL,    
 @fisdialength [float] =NULL,    
 @fisdiablocklength [float] =NULL,    
 @fisdiablockwidth [float] =NULL,    
 @fisdiablockheight [float]= NULL,    
 @MillTC [varchar](max) =NULL,    
 @DieDescription [varchar](max)= NULL,    
 @grossweight [float] =NULL,    
 @cutweight [float]= NULL,
 @cutlength [float]= NULL ,    
 @netweight [float]= NULL,    
 @materialweights [varchar](max) =NULL,    
 @FeasibilityLubricantPreferred [bigint]= NULL,    
 @FeasibilityMaterialGrade [bigint] =NULL,    
 @FeasibilityHeattreatment [bigint]= NULL,    
 @Feasibilitystandardapplicable [bigint]= NULL,    
 @hardnessmin [varchar](max)= NULL,    
 @hardnessmax [varchar](max)= NULL,    
 @hardnessunits [varchar](max)= NULL,    
 @micro [varchar](max)= NULL,    
 @FeasibilityStatutoryandregulatoryrequirement [varchar](max) =NULL,    
 @FeasibilityRemark [varchar](max)= NULL,    
 @feasibilityupdatedby [varchar](max) =NULL,    
 @feasibilityupdateddate [datetime] =NULL,    
 @Status [varchar] (max)=NULL,     
 @ssmtbl_Feasibility_OperationsInvolved_ as ssmtbl_Feasibility_OperationsInvolved READONLY,    
 @ssmtbl_Feasibility_RawMaterialTest_ as ssmtbl_Feasibility_RawMaterialTest READONLY    
)        
As       
      BEGIN          
      begin tran          
 BEGIN TRY            
             
UPDATE  ssmtbl_Feasibility set FeasibilityConditionSupply=@FeasibilityConditionSupply,FeasibilityNatureofWork=@FeasibilityNatureofWork,    
FeasibilityTypeofJob=@FeasibilityTypeofJob,FeasibilityHammerRequired=@FeasibilityHammerRequired,FeasibilityToolingRequirement=@FeasibilityToolingRequirement,    
fisdiavalue=@fisdiavalue,fisdialength=@fisdialength,fisdiablocklength=@fisdiablocklength,fisdiablockwidth=@fisdiablockwidth,    
fisdiablockheight=@fisdiablockheight,MillTC=@MillTC,DieDescription=@DieDescription,grossweight=@grossweight,cutweight=@cutweight,cutlength=@cutlength,    
netweight=@netweight,materialweights=@materialweights,FeasibilityLubricantPreferred=@FeasibilityLubricantPreferred,    
FeasibilityMaterialGrade=@FeasibilityMaterialGrade,FeasibilityHeattreatment=@FeasibilityHeattreatment,Feasibilitystandardapplicable=@Feasibilitystandardapplicable,    
hardnessmin=@hardnessmin,hardnessmax=@hardnessmax,hardnessunits=@hardnessunits,micro=@micro,FeasibilityStatutoryandregulatoryrequirement=@FeasibilityStatutoryandregulatoryrequirement,    
FeasibilityRemark=@FeasibilityRemark,feasibilityupdatedby=@feasibilityupdatedby,feasibilityupdateddate=@feasibilityupdateddate    
where FeasibilityId=@FeasibilityId and InquiryNo=@InquiryNo    
        

    
-- Delete ssmtbl_Feasibility_OperationsInvolved And Insert New One    
Delete From ssmtbl_Feasibility_OperationsInvolved Where FeasibilityId=@FeasibilityId;    
    
Insert Into ssmtbl_Feasibility_OperationsInvolved(FeasibilityId,Operations_Involved)    
Select @FeasibilityId,Operations_Involved From @ssmtbl_Feasibility_OperationsInvolved_    
    
-- Delete ssmtbl_Feasibility_RawMaterialTest and Insert New One    
Delete From ssmtbl_Feasibility_RawMaterialTest Where FeasibilityId=@FeasibilityId;    
    
Insert Into ssmtbl_Feasibility_RawMaterialTest(FeasibilityId,Raw_Material_Test)    
Select @FeasibilityId,Raw_Material_Test From @ssmtbl_Feasibility_RawMaterialTest_    
    
    
  -- Update Status In Inquiry Table    
update ssmtbl_Inquiry set Status=@Status Where InquiryNo=@InquiryNo      
        
        
commit tran          
END TRY            
BEGIN CATCH            
    rollback tran          
END CATCH          
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Update_Customer]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Update_Customer]    
(    
@ID bigint = NULL
      ,@Type varchar(max)=NULL
      ,@Name varchar(max)=NULL
      ,@Address varchar(max)=NULL
      ,@City varchar(max)=NULL
      ,@Pincode bigint='0'
      ,@Salutation varchar(max)='0'
       ,@Contact_Person varchar(max)=NULL
      ,@Mobile_No bigint='0'
      ,@STD_Code  bigint='0'
      ,@Telephone_No bigint='0'
      ,@Fax bigint='0'
       ,@Email_ID varchar(max)=NULL
      ,@Vendor_Code varchar(max)=NULL
      ,@Remarks varchar(max)=NULL,
      @isActive bit = 1,
      @delflag bit=0
)    
As   
      BEGIN      
      begin tran      
 BEGIN TRY     
        UPDATE ssmtbl_CustomerVendorMaster_Tb
            SET Name = @Name,address=@Address,City=@City,Pincode=@Pincode,Salutation=@Salutation,Mobile_No=@Mobile_No
            ,STD_Code=@STD_Code,Telephone_No=@Telephone_No,Fax=@Fax,Vendor_Code=@Vendor_Code,Remarks=@Remarks
            WHERE Id = @Id  

commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_SectionMaster]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  PROCEDURE [dbo].[ssmsp_SectionMaster] (
@Action varchar(max),
@gm varchar(max)=null,
@srno bigint=null
)
AS
BEGIN
IF @Action = 'Select'
begin
select * from LKP_CuutingCalculation_Tb order by Id asc
end
IF @Action = 'Insert'
begin

insert into LKP_CuutingCalculation_Tb (XSection)
           values(@gm);
end
IF @Action = 'Update'
begin
update LKP_CuutingCalculation_Tb set xsection=@gm where id=@srno;
end
END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Reject_Quotation]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Reject_Quotation]             
(              
@QuotationNo [varchar](50) ,         
@InquiryNo [bigint] =NULL,         
@VersionNo [uniqueidentifier] = NULL,            
@CreatedBy [varchar](max)= NULL,      
@CreatedDate [datetime] = NULL,    
@Comment [varchar] (max) = NULL,    
@FileStatus [varchar] (max) = NULL    
)   
As              
          
      BEGIN                
      begin tran                
 BEGIN TRY                  
                   
UPDATE  ssmtbl_Quotation set FileStatus=@FileStatus,UpdatedBy=@CreatedBy,UpdatedOn=@CreatedDate         
,Comment = @Comment where VersionNo=@VersionNo and QuotationNo=@QuotationNo    
    
     
Update ssmtbl_Inquiry set Status=@FileStatus, updatedby=@CreatedBy, updateddate=@CreatedDate where InquiryNo=@InquiryNo    
    
  
              
commit tran                
END TRY                  
BEGIN CATCH                  
    rollback tran                
END CATCH                
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Reject_PurchaseOrder]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Reject_PurchaseOrder]                     
(                      
@InquiryNo [varchar](50) ,                 
@Filestatus [varchar] (max) =NULL,                    
@ApprovedBy [varchar](max)= NULL,              
@ApprovalDate [datetime] = NULL,            
@Comment [varchar] (max) = NULL          
)                      
As                      
                  
      BEGIN                        
      begin tran                        
 BEGIN TRY                          
                           
            
Update ssmtbl_Inquiry set Status=@FileStatus, updatedby=@ApprovedBy, updateddate=@ApprovalDate where InquiryNo=@InquiryNo            
      
update ssmtbl_PurchaseOrder set POStatus=@Filestatus, Comment=@Comment, ApprovedBy=@ApprovedBy, ApprovalDate=@ApprovalDate where InquiryNo=@InquiryNo      
      
update ssmtbl_Quotation set FileStatus=@Filestatus where id in       
(select id from ssmtbl_Quotation where InquiryNo=@InquiryNo and Isnull(PoNo,'') != '')      
                      
commit tran                        
END TRY                          
BEGIN CATCH                          
    rollback tran                        
END CATCH                        
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Notification]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ssmsp_Notification]( @MsgType varchar(150),@Msg varchar(max))
as
Begin

insert into ssmtbl_Notification ([NotificationMsgtype]
           ,[NotificationMsg])
           values(@MsgType,@Msg);

end


/****** Object:  Table [dbo].[Notification_Tb]    Script Date: 01/03/2017 10:51:14 ******/
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Lkp_Consumables]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ssmsp_Lkp_Consumables](
@Action VARCHAR(MAX),
@startwith varchar(max)=null,
@Code[varchar](max)= NULL,
 @Description[varchar](max)= NULL,
       @Specification[varchar](max)= NULL,
       @Applicationcenter_CostCenter[varchar](max)= NULL,
       @Rate[varchar](max)= '0',
       @StorageLevelMin[varchar](max)= NULL,
       @MaxQunatity[varchar](max)= NULL,
       @BalanceQunatity[varchar](max)= NULL,
       @Flag[varchar](max)= '1',
       @CreatedBy[varchar](max)= NULL,
       @CreatedDate[datetime]= NULL,
       @UpdatedBy[varchar](max)= NULL,
       @UpdatedDate[varchar](max)= NULL,
       @Units[varchar](max)= NULL,
       @OpeningStock[varchar](max)= NULL,
       @OpeningDate[datetime]= NULL
       )
As 
      BEGIN      
      begin tran      
 BEGIN TRY   
  BEGIN
 if @Action='select'
 Select  *
from LKP_Consumable
 END
 
  BEGIN
 if @Action='insert'
 INSERT INTO LKP_Consumable (
 Code
      ,Description
      ,Specification
      ,Applicationcenter_CostCenter
      ,Rate
      ,StorageLevelMin
      ,MaxQunatity
      ,BalanceQunatity
      ,Flag
      ,CreatedBy
      ,CreatedDate
      ,UpdatedBy
      ,UpdatedDate
      ,Units
      ,OpeningStock
      ,OpeningDate)
select      @Code 
,@Description
      ,@Specification
      ,@Applicationcenter_CostCenter
      ,@Rate
      ,@StorageLevelMin
      ,@MaxQunatity
      ,@BalanceQunatity
      ,@Flag
      ,@CreatedBy
      ,@CreatedDate
      ,@UpdatedBy
      ,@UpdatedDate
      ,@Units
      ,@OpeningStock
      ,@OpeningDate
 END
 
  IF @Action = 'selectConsumable'
      BEGIN
             select Code  from LKP_Consumable  where   Code= @code ;
      END 
      IF @Action = 'getcostcenter'
      BEGIN
            select Name from LKP_CostCenter where  Name like @startwith+'%' and type='Consumabies'  ;
      END
       IF @Action = 'bindUnits'
      BEGIN
            select Units from LKP_Units where  Units like @startwith+'%'  ;
      END
 commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Insert_Workorder]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Insert_Workorder]    
(    
@WorkorderNo varchar(max) = NULL,
@RawMaterial varchar(max) = NULL,
@HeatCode varchar(max) = NULL,
@Section varchar(max) = NULL,
@DateOfIssue datetime = NULL,
@TargetDate datetime = NULL,
@CutWeight varchar(max) = NULL,
@ColorCode varchar(max) = NULL,
@PoNo varchar(max) = NULL,
@Status int = NULL,
@CustomerName varchar(max) = NULL,
@AllocatedRM float = NULL,
@AllocatedSection varchar(max) = NULL,
--@RMQty float = NULL,
@PoRM varchar(max) = NULL,
@PoSection varchar(max) = NULL
)    
As    
    
--declare @cnt bigint;    
--select @cnt= Isnull(MAX(InquiryNo),0)+1 from ssmtbl_WorkOrder     
--print @cnt    
     
      BEGIN      
      begin tran      
 BEGIN TRY        
         
INSERT INTO  ssmtbl_WorkOrder(
WorkorderNo ,
RawMaterial ,
HeatCode ,
Section ,
DateOfIssue ,
TargetDate ,
CutWeight ,
ColorCode ,
PoNo ,
Status,
CustomerName ,
AllocatedRM,
AllocatedSection,
--RMQty ,
PoRM,
PoSection
)      
select 
@WorkorderNo ,
@RawMaterial ,
@HeatCode ,
@Section ,
@DateOfIssue,
@TargetDate,
@CutWeight ,
@ColorCode ,
@PoNo ,
@Status,
@CustomerName ,
@AllocatedRM,
@AllocatedSection,
--@RMQty,
@PoRM,
@PoSection

commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Insert_Vendor]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Insert_Vendor]    
(    
@ID bigint = NULL
      ,@Type varchar(max)=NULL
      ,@Name varchar(max)=NULL
      ,@Address varchar(max)=NULL
      ,@City varchar(max)=NULL
      ,@Pincode bigint=NULL
      ,@Salutation varchar(max)='0'
       ,@Contact_Person varchar(max)=NULL
      ,@Mobile_No bigint=NULL
      ,@STD_Code  bigint=NULL
      ,@Telephone_No bigint=NULL
      ,@Fax bigint=NULL
       ,@Email_ID varchar(max)=NULL
      ,@Vendor_Code varchar(max)=NULL
      ,@Remarks varchar(max)=NULL,
      @isActive bit = 1,
      @delflag bit=0
)    
As    
    
     
      BEGIN      
      begin tran      
 BEGIN TRY        
         
INSERT INTO  ssmtbl_CustomerVendorMaster_Tb(
Type
      ,Name
      ,Address
      ,City
      ,Pincode
      ,Salutation
      ,Contact_Person
      ,Mobile_No
      ,STD_Code
      ,Telephone_No
      ,Fax
      ,Email_ID
      ,Vendor_Code
      ,Remarks
      ,isActive

)      
Values( 
@Type
      ,@Name
      ,@Address
      ,@City
      ,@Pincode
      ,@Salutation
      ,@Contact_Person
      ,@Mobile_No
      ,@STD_Code
      ,@Telephone_No
      ,@Fax
      ,@Email_ID
      ,@Vendor_Code
      ,@Remarks
      ,@isActive)
 select IDENT_CURRENT('ssmtbl_CustomerVendorMaster_Tb')
  --select top 1 ID from ssmtbl_CustomerVendorMaster_Tb 
  --order by ID desc
  --return ID
commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmSP_Insert_Quotation]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ssmSP_Insert_Quotation](  
 -- Add the parameters for the stored procedure here  
 @InquiryNo bigint =NULL,  
 @QuotationNo varchar(50)= NULL,  
 @CustomerName varchar(50)= NULL,  
 @PartDescription varchar(50)= null,  
 @PartNo varchar(50)= null,  
 @HeatTreatment varchar(50) =null,  
 @Material varchar(50)= null,  
 @Section varchar(50)= NULL,  
 @MachainedWeight varchar(50)= NULL,  
 @GrossWeight decimal(18, 2)= NULL,  
 @CutWeight decimal(18, 2)= NULL,  
 @NetWeight decimal(18, 2)= NULL,  
 @ForgingCostBased varchar(50)= NULL,  
 @MPICostBasedOn varchar(50)= NULL,  
 @SteelCost decimal(18, 2)= NULL,  
 @Transportation decimal(18, 2)= NULL,  
 @Total decimal(18, 2)= NULL,  
 @TotalRowMaterialCost decimal(18, 2)= NULL,  
   
 @CuttingSquare1 decimal(18, 2)= NULL,  
 @CuttingSquare2 decimal(18, 2)= NULL,  
  
 @Forging1 decimal(18, 2)= NULL,  
 @Forging2 decimal(18, 2) =NULL,  
 @HeatTreatment1 decimal(18, 2)= NULL,  
 @HeatTreatment2 decimal(18, 2)= NULL,  
 @ShotBlasting1 decimal(18, 2)= NULL,  
 @ShotBlasting2 decimal(18, 2)= NULL,  
 @MPI1 decimal(18, 2)= NULL,  
 @MPI2 decimal(18, 2)= NULL,  
 @Grinding1 decimal(18, 2)= NULL,  
 @Grinding2 decimal(18, 2)= NULL,  
 @ColdCoining1 decimal(18, 2)= NULL,  
 @ColdCoining2 decimal(18, 2)= NULL,  
 @Machining1 decimal(18, 2)= NULL,  
 @Machining2 decimal(18, 2)= NULL,  
  
 @DieMaintenance1 decimal(18, 2)= NULL,  
 @DieMaintenance2 decimal(18, 2) =NULL,  
  
 @TotalConverstionCost decimal(18, 2)= NULL,  
  
 @Status varchar(50)= null,  
  
 @TotalComponentCost decimal(18, 2) =NULL,  
 @InitialDieCost decimal(18, 2) =NULL,  
 @PoNo varchar(50)= null,  
 @FileStatus varchar(50)= null,  
 @Comment varchar(50)= null,  
 @ApprovalDate datetime= NULL,  
 @ApprovedBy varchar(50)= null,  
 @CreatedOn datetime =NULL,  
 @Createdby varchar(50) =NULL,  
 @UpdatedOn datetime =NULL,  
 @UpdatedBy varchar(50)= NULL,  
 @UserComment nvarchar(max)= NULL,
  @ssmUT_TermsNCondtion_ as ssmUT_TermsNCondtion READONLY  
)  
AS  
BEGIN  
  
 SET NOCOUNT ON;  
       begin tran        
 BEGIN TRY     
    -- Insert statements for procedure here  
INSERT INTO ssmtbl_Quotation(  
  InquiryNo,  
  QuotationNo,  
  CustomerName,  
 PartDescription ,  
 PartNo,  
 HeatTreatment ,  
 Material ,  
  Section,   
  MachainedWeight,   
  GrossWeight,   
  CutWeight,   
  NetWeight,  
  ForgingCostBased,  
  MPICostBasedOn,  
  SteelCost,   
  Transportation,  
  Total,   
  TotalRowMaterialCost,   
    
  CuttingSquare1,   
  CuttingSquare2,   
 Forging1 ,  
 Forging2 ,  
 HeatTreatment1 ,  
 HeatTreatment2 ,  
 ShotBlasting1 ,  
 ShotBlasting2 ,  
 MPI1,  
 MPI2 ,  
 Grinding1 ,  
 Grinding2 ,  
 ColdCoining1 ,  
 ColdCoining2 ,  
 Machining1 ,  
 Machining2,  
  
  DieMaintenance1,   
  DieMaintenance2,   
  TotalConverstionCost,   
  TotalComponentCost,   
  InitialDieCost ,   
  PoNo ,  
  FileStatus ,  
  Comment ,  
  ApprovalDate,  
  ApprovedBy ,  
  CreatedOn,   
  Createdby,   
  UpdatedOn,   
  UpdatedBy,UserComment)  
VALUES  (  
 @InquiryNo,   
 @QuotationNo,   
 @CustomerName,  
 @PartDescription ,  
 @PartNo,  
 @HeatTreatment ,  
 @Material ,  
 @Section,   
 @MachainedWeight,   
 @GrossWeight,   
 @CutWeight,   
 @NetWeight,  
 @ForgingCostBased,   
 @MPICostBasedOn,   
 @SteelCost,   
 @Transportation,   
 @Total,   
 @TotalRowMaterialCost,  
 @CuttingSquare1,   
 @CuttingSquare2,   
 @Forging1 ,  
 @Forging2 ,  
 @HeatTreatment1 ,  
 @HeatTreatment2 ,  
 @ShotBlasting1 ,  
 @ShotBlasting2 ,  
 @MPI1,  
 @MPI2 ,  
 @Grinding1 ,  
 @Grinding2 ,  
 @ColdCoining1 ,  
 @ColdCoining2 ,  
 @Machining1 ,  
 @Machining2,  
 @DieMaintenance1,   
 @DieMaintenance2,   
 @TotalConverstionCost,   
 @TotalComponentCost,   
 @InitialDieCost ,  
 @PoNo ,  
 @FileStatus ,  
 @Comment ,  
 @ApprovalDate,  
 @ApprovedBy,    
 @CreatedOn,   
 @Createdby,   
 @UpdatedOn,   
 @UpdatedBy  ,@UserComment
 )  
  
            
declare @id int;        
Set @id=0;        
Set @id=(SELECT SCOPE_IDENTITY());   
  
update ssmtbl_Inquiry set Status=@Status Where InquiryNo=@InquiryNo    
  
  
  
declare @versionNo int;  
set @versionNo=(Select Isnull(MAX(new_Version_No),0)+1 From ssmtbl_Quotation   
where QuotationNo=@QuotationNo);  
update ssmtbl_Quotation set new_Version_No=@versionNo where id=@id  
  
  
insert into [dbo].[ssmtbl_TermsNCondtion]([QuotationID],[TermsNConditionID],[TermsNConditionContent])  
select @id,TermsNConditionID,TermsNConditionContent from @ssmUT_TermsNCondtion_  
   
  
COMMIT TRAN        
END TRY          
BEGIN CATCH          
    ROLLBACK TRAN        
END CATCH        
END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Insert_PurchaseOrder]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Insert_PurchaseOrder]                  
(                    
 @InquiryNo [int] ,          
@customerName [varchar](max)= NULL,          
@QuotationNo [varchar](max)= NULL,          
@QuotationId [int]= NULL,       
@CustomerPONo [varchar](max)= NULL,          
@POValidity [datetime]= NULL,          
@QtymentionedinPO [varchar](max)= NULL,          
@DieNumber [varchar](max)= NULL,          
@HSNCode [varchar](max) =NULL,          
@SteelCost [decimal](18, 2) =NULL,          
@Transportation [decimal](18, 2)= NULL,          
@Total [decimal](18, 2)= NULL,          
@TotalRowMaterialCost [decimal](18, 2)= NULL,          
@CuttingSquare1 [decimal](18, 2)= NULL,          
@CuttingSquare2 [decimal](18, 2)= NULL,          
@Forging1 [decimal](18, 2) =NULL,          
@Forging2 [decimal](18, 2) =NULL,          
@HeatTreatment1 [decimal](18, 2)= NULL,          
@HeatTreatment2 [decimal](18, 2)= NULL,          
@ShotBlasting1 [decimal](18, 2) =NULL,          
@ShotBlasting2 [decimal](18, 2)= NULL,          
@MPI1 [decimal](18, 2)= NULL,          
@MPI2 [decimal](18, 2)= NULL,          
@Grinding1 [decimal](18, 2)= NULL,          
@Grinding2 [decimal](18, 2)= NULL,          
@ColdCoining1 [decimal](18, 2)= NULL,          
@ColdCoining2 [decimal](18, 2)= NULL,          
@Machining1 [decimal](18, 2) =NULL,          
@Machining2 [decimal](18, 2)= NULL,          
@DieMaintenance1 [decimal](18, 2) =NULL,          
@DieMaintenance2 [decimal](18, 2) =NULL,          
@TotalConverstionCost [decimal](18, 2)= NULL,          
@TotalComponentCost [decimal](18, 2)= NULL,          
@InitialDieCost [decimal](18, 2) =NULL,          
@Filepath [varchar](max)= NULL,        
@CGST [decimal] (18,2) = NULL,        
@IGST [decimal] (18,2) = NULL,        
@SGST [decimal] (18,2) = NULL,          
@createdby [varchar](max) =NULL,          
@createddate [datetime]= NULL,          
@Status [varchar] (max)=NULL,
@POQty_Open bit = NULL
)                    
As                   
      BEGIN                      
      begin tran                      
 BEGIN TRY                        
                         
INSERT INTO  ssmtbl_PurchaseOrder(InquiryNo,customerName,QuotationNo,CustomerPONo,POValidity,QtymentionedinPO,          
DieNumber,HSNCode,SteelCost,Transportation,Total,TotalRowMaterialCost,CuttingSquare1,CuttingSquare2,Forging1,          
Forging2,HeatTreatment1,HeatTreatment2,ShotBlasting1,ShotBlasting2,MPI1,MPI2,Grinding1,Grinding2,ColdCoining1,          
ColdCoining2,Machining1,Machining2,DieMaintenance1,DieMaintenance2,TotalConverstionCost,TotalComponentCost,          
InitialDieCost,Filepath, CGST,IGST,SGST,createdby,createddate,QuotationId,POStatus,POQty_Open)          
values(@InquiryNo,@customerName,@QuotationNo,@CustomerPONo,@POValidity,@QtymentionedinPO,          
@DieNumber,@HSNCode,@SteelCost,@Transportation,@Total,@TotalRowMaterialCost,@CuttingSquare1,@CuttingSquare2,@Forging1,          
@Forging2,@HeatTreatment1,@HeatTreatment2,@ShotBlasting1,@ShotBlasting2,@MPI1,@MPI2,@Grinding1,@Grinding2,@ColdCoining1,          
@ColdCoining2,@Machining1,@Machining2,@DieMaintenance1,@DieMaintenance2,@TotalConverstionCost,@TotalComponentCost,          
@InitialDieCost,@Filepath, @CGST,@IGST,@SGST,@createdby,@createddate,@QuotationId,@Status,@POQty_Open)          
                    
                    
declare @po_id int;                
Set @po_id=0;                
Set @po_id=(SELECT SCOPE_IDENTITY());                
                
          
update ssmtbl_Quotation set PoNo=@po_id where id=@QuotationId          
                
              
-- Update Status In Inquiry Table              
update ssmtbl_Inquiry set Status=@Status Where InquiryNo=@InquiryNo                
               
                    
commit tran                      
END TRY                        
BEGIN CATCH                        
    rollback tran                      
END CATCH                      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Insert_MutipleContactPerson]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Insert_MutipleContactPerson]    
(     @Action VARCHAR(max)
      ,@ID bigint = NULL      
      ,@ContactPersonName varchar(max)=NULL
      ,@Email varchar(max)=NULL
      ,@Mob varchar(max)=NULL              
      ,@PhNo bigint=NULL
      ,@STD_Code  bigint=NULL
)    
As    
      BEGIN      
      begin tran      
 BEGIN TRY        
         
IF @Action = 'InsertMultiCP'
      BEGIN
       --DELETE FROM MultipleConatctPersonForCustomer_Tb
       --     WHERE Id = @Id;
        INSERT INTO MultipleConatctPersonForCustomer_Tb(contactpersonname,id,email,mob,stdcode,phno)
            VALUES (@ContactPersonName,@Id,@Email,@Mob,@STD_Code,@PhNo)    
      END
      IF @Action = 'SelectMultiCP'
      BEGIN
        select * from MultipleConatctPersonForCustomer_Tb where id=@Id
      END
      IF @Action = 'DeleteMultiCP'
      BEGIN
              DELETE FROM MultipleConatctPersonForCustomer_Tb
            WHERE Id = @Id;
            -- DELETE FROM multiemailforcustomer_Tb
            --WHERE Id = @Id
      END
     --IF @Action = 'UpdateMultiCP'
     -- BEGIN
     --        update MultipleConatctPersonForCustomer_Tb set contactpersonname=@ContactPersonName,email=@Email
     --       WHERE Id = @Id
     -- END

commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Insert_Inquiry]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Insert_Inquiry]    
(    
@InquiryNo [bigint] ,    
@customerName [varchar](max)= NULL,    
@InquiryDate [datetime]= NULL,    
@PartName [varchar](max)= NULL,    
@PartNo [varchar](max)= NULL,    
@CustomerDrgNo [varchar](max) =NULL,    
@FrequencyRepearOrder [bigint]= NULL,    
@Qty [int] =NULL,    
@createdby [varchar](max)= NULL,    
@createddate [datetime]= NULL,
@Status [varchar] (max)=NULL 
    
)    
As    
    
declare @cnt bigint;    
select @cnt= Isnull(MAX(InquiryNo),0)+1 from ssmtbl_Inquiry     
print @cnt    
     
      BEGIN      
      begin tran      
 BEGIN TRY        
         
INSERT INTO  ssmtbl_Inquiry(InquiryNo,customerName,InquiryDate,PartName,PartNo,CustomerDrgNo,FrequencyRepearOrder,    
 Qty,createdby,createddate,Status)      
select @cnt, @customerName, @InquiryDate, @PartName,@PartNo, @CustomerDrgNo,@FrequencyRepearOrder,    
@Qty,@createdby,@createddate,@Status   
    
commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Insert_Feasibility]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ssmsp_Insert_Feasibility]        
(          
 @InquiryNo [bigint],      
 @FeasibilityConditionSupply [bigint]= NULL,      
 @FeasibilityNatureofWork [bigint] =NULL,      
 @FeasibilityTypeofJob [bigint] =NULL,      
 @FeasibilityHammerRequired [bigint]= NULL,      
 @FeasibilityToolingRequirement [varchar](max)= NULL,      
 @fisdiavalue [float] =NULL,      
 @fisdialength [float] =NULL,      
 @fisdiablocklength [float] =NULL,      
 @fisdiablockwidth [float] =NULL,      
 @fisdiablockheight [float]= NULL,      
 @MillTC [varchar](max) =NULL,      
 @DieDescription [varchar](max)= NULL,      
 @grossweight [float] =NULL,      
 @cutweight [float]= NULL,     
 @cutlength [float]= NULL ,
 @netweight [float]= NULL,      
 @materialweights [varchar](max) =NULL,      
 @FeasibilityLubricantPreferred [bigint]= NULL,      
 @FeasibilityMaterialGrade [bigint] =NULL,      
 @FeasibilityHeattreatment [bigint]= NULL,      
 @Feasibilitystandardapplicable [bigint]= NULL,      
 @hardnessmin [varchar](max)= NULL,      
 @hardnessmax [varchar](max)= NULL,      
 @hardnessunits [varchar](max)= NULL,      
 @micro [varchar](max)= NULL,      
 @FeasibilityStatutoryandregulatoryrequirement [varchar](max) =NULL,      
 @FeasibilityRemark [varchar](max)= NULL,      
 @feasibilitycreatedby [varchar](max) =NULL,      
 @feasibilitycreateddate [datetime] =NULL,   
 @Status [varchar] (max)=NULL,     
 @ssmtbl_Feasibility_OperationsInvolved_ as ssmtbl_Feasibility_OperationsInvolved READONLY,      
 @ssmtbl_Feasibility_RawMaterialTest_ as ssmtbl_Feasibility_RawMaterialTest READONLY      
)          
As         
      BEGIN            
      begin tran            
 BEGIN TRY              
               
INSERT INTO  ssmtbl_Feasibility(InquiryNo,FeasibilityConditionSupply,FeasibilityNatureofWork,FeasibilityTypeofJob,FeasibilityHammerRequired,      
FeasibilityToolingRequirement,fisdiavalue,fisdialength,fisdiablocklength,fisdiablockwidth,fisdiablockheight,      
MillTC,DieDescription,grossweight,cutweight,cutlength,netweight,materialweights,FeasibilityLubricantPreferred,      
FeasibilityMaterialGrade,FeasibilityHeattreatment,Feasibilitystandardapplicable,hardnessmin,hardnessmax,hardnessunits,micro,      
FeasibilityStatutoryandregulatoryrequirement,FeasibilityRemark,feasibilitycreatedby,feasibilitycreateddate)            
Values(@InquiryNo,@FeasibilityConditionSupply,@FeasibilityNatureofWork,@FeasibilityTypeofJob,@FeasibilityHammerRequired,      
@FeasibilityToolingRequirement,@fisdiavalue,@fisdialength,@fisdiablocklength,@fisdiablockwidth,@fisdiablockheight,      
@MillTC,@DieDescription,@grossweight,@cutweight,@cutlength,@netweight,@materialweights,@FeasibilityLubricantPreferred,      
@FeasibilityMaterialGrade,@FeasibilityHeattreatment,@Feasibilitystandardapplicable,@hardnessmin,@hardnessmax,@hardnessunits,@micro,      
@FeasibilityStatutoryandregulatoryrequirement,@FeasibilityRemark,@feasibilitycreatedby,@feasibilitycreateddate)      
          
          
declare @FeasibilityNo int;      
Set @FeasibilityNo=0;      
Set @FeasibilityNo=(SELECT SCOPE_IDENTITY());      
      
      
      
      
Insert Into ssmtbl_Feasibility_OperationsInvolved(FeasibilityId,Operations_Involved)      
Select @FeasibilityNo,Operations_Involved From @ssmtbl_Feasibility_OperationsInvolved_      
      
      
Insert Into ssmtbl_Feasibility_RawMaterialTest(FeasibilityId,Raw_Material_Test)      
Select @FeasibilityNo,Raw_Material_Test From @ssmtbl_Feasibility_RawMaterialTest_      
      
    
-- Update Status In Inquiry Table    
update ssmtbl_Inquiry set Status=@Status Where InquiryNo=@InquiryNo      
     
          
commit tran            
END TRY              
BEGIN CATCH              
    rollback tran            
END CATCH            
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Insert_Customer]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[ssmsp_Insert_Customer]    
(    
@ID bigint = NULL
      ,@Type varchar(max)=NULL
      ,@Name varchar(max)=NULL
      ,@Address varchar(max)=NULL
      ,@City varchar(max)=NULL
      ,@Pincode bigint=NULL
      ,@Salutation varchar(max)='0'
       ,@Contact_Person varchar(max)=NULL
      ,@Mobile_No bigint=NULL
      ,@STD_Code  bigint=NULL
      ,@Telephone_No bigint=NULL
      ,@Fax bigint=NULL
       ,@Email_ID varchar(max)=NULL
      ,@Vendor_Code varchar(max)=NULL
      ,@Remarks varchar(max)=NULL,
      @isActive bit = 1,
      @delflag bit=0
)    
As    
    
     
      BEGIN      
      begin tran      
 BEGIN TRY        
         
INSERT INTO  ssmtbl_CustomerVendorMaster_Tb(
Type
      ,Name
      ,Address
      ,City
      ,Pincode
      ,Salutation
      ,Contact_Person
      ,Mobile_No
      ,STD_Code
      ,Telephone_No
      ,Fax
      ,Email_ID
      ,Vendor_Code
      ,Remarks
      ,isActive

)      
Values( 
@Type
      ,@Name
      ,@Address
      ,@City
      ,@Pincode
      ,@Salutation
      ,@Contact_Person
      ,@Mobile_No
      ,@STD_Code
      ,@Telephone_No
      ,@Fax
      ,@Email_ID
      ,@Vendor_Code
      ,@Remarks
      ,@isActive)
 select IDENT_CURRENT('ssmtbl_CustomerVendorMaster_Tb')  
commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_getInquiryfrompoid]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ssmsp_getInquiryfrompoid]
(
@ponumber varchar (max)=null
)
As 
      BEGIN      
      begin tran      
 BEGIN TRY    
select distinct feas.cutweight,feas.FeasibilityHeattreatment, clr.Colorcode, clr.Materialgrade as RawMaterial,
cut.xsection as Section,quo.Material as PORM,quo.Section as POSection
from ssmtbl_PurchaseOrder po 
join ssmtbl_Feasibility feas on po.InquiryNo = feas.InquiryNo 
join LKP_Colorcode_Tb clr on clr.Srno = feas.FeasibilityMaterialGrade
join ssmtbl_Quotation quo on feas.InquiryNo = quo.InquiryNo
join LKP_CuutingCalculation_Tb cut on cut.id = quo.Section
 where po.CustomerPONo =@ponumber; 
 
 commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_GetAllRMInventory]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ssmsp_GetAllRMInventory] (
@Action VARCHAR(MAX),
@Heatcode VARCHAR(MAX)=null

)
AS
BEGIN
if @Action = 'Select'
BEGIN
select * from ssmtbl_RMInventary ;
END
if @Action = 'SelectWoByHeatcode'
BEGIN
select 
--WorkorderNo,HeatCode,AllocatedRMQty,PoRM,PoSection 
* from ssmtbl_WorkOrder
where HeatCode = @Heatcode;
END
END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Get_MaxWorkorderNo]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ssmsp_Get_MaxWorkorderNo]
As 
      BEGIN      
      begin tran      
 BEGIN TRY   
select top 1 t1 .WorkorderNo , PoNo from ssmtbl_WorkOrder t1  order by t1.ID desc;
 commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Get_AllWorkorder]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ssmsp_Get_AllWorkorder](
@Action VARCHAR(MAX),
@gradeOfMaterial  varchar(max)= null,
@section  varchar(max)= null,
@heatcode varchar(max)= null,
@quntity float= null
,@WorkorderNo varchar(50)= null,
@Status int = 0
)
As 
      BEGIN      
      begin tran      
 BEGIN TRY   
  BEGIN
 if @Action='Select'
 Select  WorkorderNo,PoNo,  DateOfIssue, AllocatedRM, AllocatedSection, PoRM, PoSection , AllocatedRMQty
from ssmtbl_WorkOrder
 END
 if @Action = 'GetAllRMAllocation'
  BEGIN
 select WorkorderNo, PoRM, HeatCode, PoSection, AllocatedRMQty from ssmtbl_WorkOrder
 END
  if @Action = 'GetAllRMAllocationByStatus'
  BEGIN
 select WorkorderNo, PoRM, HeatCode, PoSection, AllocatedRMQty from ssmtbl_WorkOrder
 where Status = @Status
 END
 if @Action = 'GetWoDataByGofHtSec'
 Begin
 select * from ssmtbl_RMInventary 
 --where GradeOfMaterial =  @gradeOfMaterial
 where GradeOfMaterial = @gradeOfMaterial AND Section = @section AND Heatcode = @heatcode;
 End
 
 if @Action = 'SelectAllWo'
 Begin
  select t1.*,statusname=(select t.status as asv from LKP_Status_Tb t where t.statusID= t1.status and t.statustype='WorkLoad' )
            --, inq.opearationinvolved1, inq.opearationinvolved2 
             ,calbalance=isnull((t1.AllocatedRMQty),0)-ISNULL((select sum(dc1.quantity) from ssmtbl_DeliveryChallanItems dc1 
             where dc1.dispachno in  (select dt.dispachno from ssmtbl_DeliveryChallan dt where dt.refno=t1.WorkOrderNo )
             ),0)
             ,pendingbal=isnull((select SUM(ActualQnty)from ssmtbl_WorkOrderDetails where WorkOrderNo=t1.WorkOrderNo),0),po.DieNumber as Dieno
             from ssmtbl_WorkOrder t1 --left join ssmtbl_Inquiry  inq on t1.Pono=inq.POCustomerPONo 
              join ssmtbl_PurchaseOrder po  on t1.Pono= po.CustomerPONo 
              join ssmtbl_Inquiry  inq  on po.InquiryNo = inq.InquiryNo              
             where t1.status = 602 OR t1.status = 601
             order by t1.ID desc;
 End
 if @Action = 'UpdateRmQty'

  BEGIN
 update ssmtbl_RMInventary set Quntity = Quntity - @quntity  
 where GradeOfMaterial = @gradeOfMaterial AND Section = @section AND Heatcode = @heatcode;
  
    update ssmtbl_WorkOrder set
    status=602,
	BalancedRMQty = BalancedRMQty - @quntity  
	--where RawMaterial = @gradeOfMaterial AND Section = @section AND Heatcode = @heatcode;
	where WorkorderNo =@WorkorderNo
 END
 commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Get_AllVendor]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ssmsp_Get_AllVendor]
      @Action VARCHAR(max)
      ,@ID bigint = NULL
      ,@Type varchar(max)=NULL
      ,@Name varchar(max)=NULL
      ,@Address varchar(max)=NULL
      ,@City varchar(max)=NULL
      ,@Pincode bigint=NULL
      ,@Salutation varchar(max)=NULL
       ,@Contact_Person varchar(max)=NULL
      ,@Mobile_No bigint=NULL
      ,@STD_Code  bigint=NULL
      ,@Telephone_No bigint=NULL
      ,@Fax bigint=NULL
       ,@Email_ID varchar(max)=NULL
      ,@Vendor_Code varchar(max)=NULL
      ,@Remarks varchar(max)=NULL,
      @isActive bit=1,
      @delflag bit=0
      
AS
BEGIN    
      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT ID, Name, Address, City, Pincode, Vendor_Code,Remarks
            FROM ssmtbl_CustomerVendorMaster_Tb where Type=@Type and isActive=@isActive
      END
      
       IF @Action = 'SelectCustomer'
      BEGIN
            SELECT ID, Name, Address, City, Pincode, Vendor_Code,Remarks
            FROM ssmtbl_CustomerVendorMaster_Tb where Type=@Type and isActive=@isActive
      END
       --Find Maximum Vendor Code
       IF @Action = 'FindmaxVendorCode'
      BEGIN
      select top 1 t1.Vendor_Code from ssmtbl_CustomerVendorMaster_Tb t1 where type=@Type  and isActive=1 order by t1.ID desc;
 
      END
    IF @Action = 'GetVendorByID'
      BEGIN
      select * From ssmtbl_CustomerVendorMaster_Tb where ID=@ID Order By ID;
	--select Name, Address, City,Pincode, Remarks, Vendor_Code From ssmtbl_CustomerVendorMaster_Tb where ID=@ID Order By ID;
      END
      IF @Action = 'GetCustomerByID'
      BEGIN
      select * From ssmtbl_CustomerVendorMaster_Tb where ID=@ID Order By ID;
	--select Name, Address, City,Pincode, Remarks From ssmtbl_CustomerVendorMaster_Tb where ID=@ID Order By ID;
      END
END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Get_AllRMByGradeOfMaterial]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ssmsp_Get_AllRMByGradeOfMaterial]
As 
      BEGIN      
      begin tran      
 BEGIN TRY   
 
 select GradeOfMaterial, Heatcode, Section,Quntity,RMUnit from ssmtbl_RMInventary;
 
 commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Get_AllGradeOfMaterial]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ssmsp_Get_AllGradeOfMaterial] (
@Action varchar(max),
@GradeOfMaterial varchar(max)=null,
@ColorCode varchar(max)=null,
@SrNo bigint=null
)
AS
BEGIN
IF @Action = 'Select'
begin
select * from LKP_Colorcode_Tb order by Srno asc
end
IF @Action = 'Insert'
begin
declare @maxsrno bigint
  select @maxsrno=(MAX(Srno)+1)  from LKP_Colorcode_Tb
insert into LKP_Colorcode_Tb (Srno,Materialgrade
           ,Colorcode)
           values(@maxsrno,@GradeOfMaterial,@ColorCode);
end
IF @Action = 'Update'
begin
update LKP_Colorcode_Tb set Materialgrade=@GradeOfMaterial,Colorcode=@ColorCode where Srno=@SrNo;
end
END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_Get_AllConsumableIssuedList]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ssmsp_Get_AllConsumableIssuedList]
(@Action VARCHAR(MAX)
,@itemcode varchar(max)='',
@Code[varchar](max)= NULL,
@IssuedTo[varchar](max)= NULL,
@IssuedDate[datetime]= NULL,
@IssuedQuantity[varchar](max)= NULL,
@IssuedBy[varchar](max)= NULL,
@Flag[varchar](max)= NULL,
@CreatedBy[varchar](max)= NULL,
@CreatedDate[datetime]= NULL,
@UpdatedBy[varchar](max)= NULL,
@UpdatedDate[datetime]= NULL,
@Description [varchar](max)= NULL
)
As 
      BEGIN   
         
      begin tran      
 BEGIN TRY   
 IF @Action = 'select'
 Begin 
select ID, Code, IssuedTo, IssuedDate, IssuedQuantity,Flag, Description from ssmtbl_Consumable_Issued
 End
  IF @Action = 'autofetchitemcode'  
      BEGIN  
         
           select * from LKP_Consumable where Code like  '%'+@itemcode +'%'  
      END  
      
      IF @Action = 'insert'  
      BEGIN INSERT INTO ssmtbl_Consumable_Issued
           (Code,IssuedTo,IssuedDate,IssuedQuantity,IssuedBy,Flag,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,Description)
     select  @Code, @IssuedTo, @IssuedDate,@IssuedQuantity, @IssuedBy,@Flag, @CreatedBy,@CreatedDate,@UpdatedBy,@UpdatedDate,@Description
      END   
 commit tran      
END TRY        
BEGIN CATCH        
    rollback tran      
END CATCH      
      END
GO
/****** Object:  StoredProcedure [dbo].[ssmsp_DailyConsumptions]    Script Date: 05/07/2018 16:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ssmsp_DailyConsumptions]
					 (@xmlData XML =null, 
					 @Action VARCHAR(MAX),
					 @consumablecode varchar(max)=null,
					 @currentpage int=1,
					 @recordperpage int=10,
					  @datefrom datetime=null,
					 @dateto datetime=null
)
 AS
BEGIN
      SET NOCOUNT ON;
     Declare @Msg varchar(max)

	  --IF @Action = 'select'
   --   BEGIN
   --         select t1.*, lb.consumablename,lb.Type
   --          from DailyConsumptions_Tb t1 
   --          left join LKP_ConsumableRatePerUnit lb on t1.consumablecode=lb.consumablecode
   --          ;
   --   END
        IF @Action = 'SelectBetweenDate'
      BEGIN
            select t1.*, lb.ConsumableName,lb.Type
             from ssmtbl_DailyConsumptions t1 
             left join LKP_ConsumableRatePerUnit lb on t1.ConsumableCode=lb.ConsumableCode
             where t1.ConsumableDate between   @datefrom and @dateto;
      END
       IF @Action = 'SelectAllConsumableRatePerUnits'
      BEGIN
            select lb .* 
             from   LKP_ConsumableRatePerUnit lb 
             
      END
          IF @Action = 'insert'
      
      BEGIN
     Declare @cnt int 
      Declare @crby varchar(max)  
        Declare @cdate datetime
       SELECT
@consumablecode=[Tbl].[col].value('consumablecode[1]', 'varchar(MAX)')  ,
@crby=[Tbl].[col].value('createdby[1]', 'varchar(MAX)')  
,@cdate=convert(datetime,(Tbl.col.value('consumabledate[1]', 'varchar(50)')),103)
   FROM @xmlData.nodes('/routecarddatas/routecarddata') as [Tbl]([col]);
   
      select @cnt= COUNT(*) from ssmtbl_DailyConsumptions   where consumablecode=@consumablecode and  consumabledate=@cdate;
    --  set @cnt=0;
      if( @cnt=0)
      begin
set @Msg='New  DailyConsumptions No. '+@consumablecode +' is created by '+@crby
  exec  ssmsp_Notification  'DailyConsumptions',@Msg 
         --   select * from WorkOrder_Tb   where Wono=@wonumber ;            
     INSERT INTO  ssmtbl_DailyConsumptions (
	   [consumabledate]
           ,[consumablecode]
           ,[rateperunit]
           ,[startreading]
           ,[endreading]
           ,[totalunit] 
           ,[createdby]
           ,[createddate]
            )
          -- ,[updatedby]
         --  ,[updateddate])
  SELECT
			convert(datetime,(Tbl.col.value('consumabledate[1]', 'varchar(50)')),103) AS 'consumabledate' ,
			[Tbl].[col].value('consumablecode[1]', 'varchar(MAX)') AS 'consumablecode' ,
			[Tbl].[col].value('rateperunit[1]', 'float') AS 'rateperunit' ,
			[Tbl].[col].value('startreading[1]', 'float') AS 'startreading' ,
			[Tbl].[col].value('endreading[1]', 'float') AS 'endreading' ,
			[Tbl].[col].value('totalunit[1]', 'float') AS 'totalunit' , 
			[Tbl].[col].value('createdby[1]', 'varchar(MAX)') AS 'createdby' ,
			convert(datetime,(Tbl.col.value('createddate[1]', 'varchar(50)')),103) AS 'createddate'

   FROM @xmlData.nodes('/routecarddatas/routecarddata') as [Tbl]([col])
  end
  else
  begin 
 set  @Action = 'update';
  end
      END 
         IF @Action = 'update'
      BEGIN
        declare @consumabledate  datetime
        declare @consumablecode1 varchar(max)
        declare @rateperunit float
        declare @startreading float 
        declare @endreading float
        declare @totalunit float 
        declare @createdby varchar(max)
        declare @createddate datetime
  SELECT
        @consumabledate=convert(datetime,(Tbl.col.value('consumabledate[1]', 'varchar(50)')),103)  , 
        @consumablecode1=[Tbl].[col].value('consumablecode[1]', 'varchar(MAX)')   ,
        @rateperunit = [Tbl].[col].value('rateperunit[1]', 'float') ,
		@startreading=	[Tbl].[col].value('startreading[1]', 'float') ,
		@endreading	=[Tbl].[col].value('endreading[1]', 'float') ,
		@totalunit	=[Tbl].[col].value('totalunit[1]', 'float') , 
		@createdby=[Tbl].[col].value('createdby[1]', 'varchar(MAX)')   ,
		@createddate=convert(datetime,(Tbl.col.value('createddate[1]', 'varchar(50)')),103)   
   FROM @xmlData.nodes('/routecarddatas/routecarddata') as [Tbl]([col]);
   UPDATE ssmtbl_DailyConsumptions SET
        consumabledate=@consumabledate
	    ,consumablecode=@consumablecode1 
       ,rateperunit=@rateperunit 
       ,startreading=@startreading
       ,endreading=@endreading  
       ,totalunit=@totalunit 
      ,updatedby=@createdby
      ,updateddate=@createddate 
           WHERE consumablecode = @consumablecode and consumabledate=@consumabledate
      set @Msg=' DailyConsumptions  No. '+@consumablecode +' is updated by '+@createdby
        exec  ssmsp_Notification  'DailyConsumptions',@Msg 
      END 
END
GO
/****** Object:  Default [DF_WorkOrder_Tb_RMQty]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[ssmtbl_WorkOrder] ADD  CONSTRAINT [DF_WorkOrder_Tb_RMQty]  DEFAULT ((0)) FOR [AllocatedRMQty]
GO
/****** Object:  Default [DF__ssmtbl_Qu__Versi__20C1E124]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[ssmtbl_Quotation] ADD  DEFAULT (newid()) FOR [VersionNo]
GO
/****** Object:  Default [DF_ssmtbl_Notification_createdDate]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[ssmtbl_Notification] ADD  CONSTRAINT [DF_ssmtbl_Notification_createdDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_ssmtbl_Notification_Flag]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[ssmtbl_Notification] ADD  CONSTRAINT [DF_ssmtbl_Notification_Flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_ssmtbl_DeliveryChallan_createddate]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[ssmtbl_DeliveryChallan] ADD  CONSTRAINT [DF_ssmtbl_DeliveryChallan_createddate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_ssmtbl_DeliveryChallan_flag]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[ssmtbl_DeliveryChallan] ADD  CONSTRAINT [DF_ssmtbl_DeliveryChallan_flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF__ssmtbl_De__isRet__73BA3083]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[ssmtbl_DeliveryChallan] ADD  DEFAULT ((0)) FOR [isReturned]
GO
/****** Object:  Default [DF_ssmtbl_DailyConsumptions_flag]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[ssmtbl_DailyConsumptions] ADD  CONSTRAINT [DF_ssmtbl_DailyConsumptions_flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_ssmtbl_DailyConsumptions_createddate]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[ssmtbl_DailyConsumptions] ADD  CONSTRAINT [DF_ssmtbl_DailyConsumptions_createddate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_LKP_CostCenter_flag]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[LKP_CostCenter] ADD  CONSTRAINT [DF_LKP_CostCenter_flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_LKP_CostCenter_type]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[LKP_CostCenter] ADD  CONSTRAINT [DF_LKP_CostCenter_type]  DEFAULT ('Maintenance') FOR [Type]
GO
/****** Object:  Default [DF_LKP_ConsumableRatePerUnit_flag]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[LKP_ConsumableRatePerUnit] ADD  CONSTRAINT [DF_LKP_ConsumableRatePerUnit_flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_LKP_ConsumableRatePerUnit_Type]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[LKP_ConsumableRatePerUnit] ADD  CONSTRAINT [DF_LKP_ConsumableRatePerUnit_Type]  DEFAULT ('dailyconsumptions') FOR [Type]
GO
/****** Object:  Default [DF_LKP_Consumable_flag]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[LKP_Consumable] ADD  CONSTRAINT [DF_LKP_Consumable_flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_LKP_Consumable_createddate]    Script Date: 05/07/2018 16:08:28 ******/
ALTER TABLE [dbo].[LKP_Consumable] ADD  CONSTRAINT [DF_LKP_Consumable_createddate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
