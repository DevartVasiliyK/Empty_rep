CREATE TABLE [dbo].[Person_1] (
  [BusinessEntityID] [int] NOT NULL,
  [PersonType] [nchar](2) NOT NULL,
  [Title] [nvarchar](8) NULL,
  [Suffix] [nvarchar](10) NULL,
  [EmailPromotion] [int] NOT NULL CONSTRAINT [DF_Person_EmailPromotion] DEFAULT (0),
  [rowguid] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Person_rowguid] DEFAULT (newid()) ROWGUIDCOL,
  [ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Person_ModifiedDate] DEFAULT (getdate()),
  CONSTRAINT [PK_Person_BusinessEntityID] PRIMARY KEY CLUSTERED ([BusinessEntityID])
)
ON [PRIMARY]
GO