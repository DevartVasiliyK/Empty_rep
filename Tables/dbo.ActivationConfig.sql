CREATE TABLE [dbo].[ActivationConfig] (
  [Name] [varchar](50) NULL,
  [SiteCode] [varchar](50) NULL,
  [V2ersion] [varchar](50) NULL
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'test', 'SCHEMA', N'dbo', 'TABLE', N'ActivationConfig'
GO