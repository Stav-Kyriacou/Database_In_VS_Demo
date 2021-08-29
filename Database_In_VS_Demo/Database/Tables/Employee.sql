CREATE TABLE [dbo].[Employee]
(
	[StaffID] INT, 
    [GivenName] NCHAR(100) NULL, 
    [SurName] NCHAR(100) NULL, 
    CONSTRAINT [PK_Employee] PRIMARY KEY ([StaffID]) 
)
