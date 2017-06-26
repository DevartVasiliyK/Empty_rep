CREATE TABLE [dbo].[Employee_1] (
  [BusinessEntityID] [int] NOT NULL,
  [NationalIDNumber] [nvarchar](15) NOT NULL,
  [LoginID] [nvarchar](256) NOT NULL,
  [JobTitle] [nvarchar](50) NOT NULL,
  [BirthDate] [date] NOT NULL,
  [MaritalStatus] [nchar](1) NOT NULL,
  [Gender] [nchar](1) NOT NULL,
  [HireDate] [date] NOT NULL,
  [VacationHours] [smallint] NOT NULL CONSTRAINT [DF_Employee_VacationHours_copy] DEFAULT (0),
  [SickLeaveHours] [smallint] NOT NULL CONSTRAINT [DF_Employee_SickLeaveHours_copy] DEFAULT (0),
  [rowguid] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Employee_rowguid_copy] DEFAULT (newid()) ROWGUIDCOL,
  [ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Employee_ModifiedDate_copy] DEFAULT (getdate()),
  CONSTRAINT [PK_Employee_BusinessEntityID_copy] PRIMARY KEY NONCLUSTERED ([BusinessEntityID]),
  CONSTRAINT [CK_Employee_BirthDate_copy] CHECK ([BirthDate]>='1930-01-01' AND [BirthDate]<=dateadd(year,(18),getdate()))
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employee_1]
  ADD CONSTRAINT [FK_Employee_Person_BusinessEntityID_1] FOREIGN KEY ([BusinessEntityID]) REFERENCES [dbo].[Person_1] ([BusinessEntityID])
GO