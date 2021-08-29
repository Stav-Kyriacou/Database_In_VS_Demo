CREATE TABLE [dbo].[Office]
(
	[LocCode] INT NOT NULL, 
    [Address] NCHAR(200) NULL, 
    [Description] NCHAR(100) NULL, 
    CONSTRAINT [PK_Office] PRIMARY KEY ([LocCode])
)
