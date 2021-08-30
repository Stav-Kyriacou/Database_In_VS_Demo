/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
DELETE FROM Employee;
DELETE FROM Office;
DELETE FROM Assignment;
-- employee
INSERT INTO Employee (StaffID, GivenName, SurName) VALUES
(1, 'Meme', 'Machine'),
(2, 'Bibius', 'Maximus'),
(3, 'Person', 'Person');

-- office
INSERT INTO Office (LocCode, Address, Description) VALUES
(101, '123 Street St', 'Something'),
(102, '345 Street St', 'Somewhere'),
(103, '567 Street St', 'Elsewhere');

-- assignment
INSERT INTO Assignment (StaffID, LocCode, DateAssigned) VALUES
(1, 101, CONVERT(DATE, '3/21/2021', 101)),
(2, 102, CONVERT(DATE, '8/30/2021', 101)),
(3, 103, CONVERT(DATE, '6/1/2021', 101));