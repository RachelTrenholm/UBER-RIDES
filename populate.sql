INSERT INTO [User] (UserID, FName,LName,Current_Location,Role) VALUES
(1,'Alice','Smith', 101,'Driver'),
(2,'Bob', 'Johnson', 102,'Passenger'),
(3,'Charlie', 'Brown', 103,'Passenger');

INSERT INTO Location (LocationID, Address, Latitude, Longitude) VALUES
(101, '123 Main St', 40.7128, -74.0868),
(102,'456 Elm St', 34.0522, -118.2437),
(103, '789 Pine St', 37.7749, -122.4194);

INSERT INTO Vehicle (VehicleID, LicencePlate, Make, Model, Year) VALUES
(1, 'ABC1234', 'Toyota', 'Canry', 2020),
(2, 'XYZ5678', 'Honda', 'Civic', 2019);

INSERT INTO Paynent (PaynentID, PaynentMethod, FareAnount, Status, Date) VALUES
(1, 'Credit Card', 25.50, 'Conpleted', '2025-03-15'),
(2, 'Cash', 15.75, 'Completed', '2025-03-16');

INSERT INTO Ride (RideID, UserID, VehicleID, PaymentID, StartTime, EndTime, Fare, StartLocation,EndLocation) VALUES
(1, 2, 1, 1, '2025-03-15 08:00:00', '2025-83-1588:30:00', 25.50,'123 Main St','456 Elm st'),
(2, 3,2, 2,'2025-03-16 18:08:00', '2025-03-16 10:20:80', 15.75,'456 Elm St', '789 Pine St');
