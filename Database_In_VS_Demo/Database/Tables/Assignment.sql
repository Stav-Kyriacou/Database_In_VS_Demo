CREATE TABLE [dbo].[Assignment]
(
	[StaffID] INT NOT NULL, 
    [LocCode] INT NOT NULL, 
    [DateAssigned] DATE NOT NULL, 
    CONSTRAINT [PK_Assignment] PRIMARY KEY ([StaffID], [DateAssigned], [LocCode]), 
    CONSTRAINT [FK_Assignment_ToEmployee] FOREIGN KEY ([StaffID]) REFERENCES [Employee]([StaffID]), 
    CONSTRAINT [FK_Assignment_ToOffice] FOREIGN KEY ([LocCode]) REFERENCES [Office]([LocCode])
)
