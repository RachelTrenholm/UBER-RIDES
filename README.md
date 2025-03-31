## UBER-RIDES
#### Operational Database
This database is designed to **optimize Uber's backend functionality** by efficiently managing ride-sharing data, including riders, drivers, trips, and transactions. The User table stores details about individuals identified by a **unique UserID**. Each user can be a **rider, a driver, or both**, and their profile includes information such as name, payment preferences, vehicle, and address details.

**Drivers** are associated with the Vehicle table, which records vehicle details such as license plate number (LPN), make, model, and year. The **VehicleID** links drivers to their vehicles.Ride data, captured in the Ride table captures key details such as trip start and end locations, timestamps, fare amounts, and trip statuses.** Each trip is associated with a rider and a driver, ensuring seamless tracking** of completed, cancelled, and ongoing trips. The FareCalculation system ensures accurate pricing based on distance, and time.Thus, Uber can monitor driver performance and improve customer experience. 

Additionally, the **PaymentTransactions table records all financial interactions**, including ride payments, payment types, and transaction statuses.
By structuring the data this way, the database **enables efficient real-time transaction processing, supports business analytics, and ensures scalable operations for Uber's ride-sharing platform.** It allows for enhanced tracking of trips, user interactions, and financial records, ensuring a seamless and optimized experience for riders and drivers.

## Entity Relational Model
![ER Model](https://github.com/user-attachments/assets/30139c31-02bc-4b3a-9021-d5de3c3e45f0)

## Relational Model
<img width="898" alt="REL MODEL  NEW" src="https://github.com/user-attachments/assets/695f1e22-5930-4240-ad95-91e5da0e9f92" />

## Source Code
+ [Create Script](https://github.com/RachelTrenholm/UBER-RIDES/commit/85afed0ce60752143e9b845464636e5bc3b61239)
+ [Populate Script](https://github.com/RachelTrenholm/UBER-RIDES/commit/9d601b11af6593b325d3ca1d04ef912b767bae88)

## Sample Queries

### Query 1

**For each ride, what is the corresponding user's first name, ride start time, and ride end time?**

```SELECT R.RideID, U.FName, R.StartTime, R.EndTime FROM Ride R Inner join [User] U  ON R.UserID = U.UserID;

###Query 2

**What is the total revenue from completed payments?**

```SELECT SUM(FareAmount) AS TotalRevenue FROM Payment WHERE Status = 'Completed' ;

### Query 3

**What is the average from rides?**

```SELECT AVG (Fare) AS AverageFare FROM Ride;

### Query 4

**What are the first names, last names, vehicle makes, models, and license plates of all drivers and their associated vehicles?**

```SELECT U.FName, U.LName, V.Make, V.Model, V.LicencePlate
FROM [User] U
JOIN Ride R ON U.UserID = R.UserID
JOIN Vehicle V ON R.VehicleID = V.VehicleID
WHERE U.Role = 'Driver';

### Query 5

**How many rides has each user taken, including users who haven't taken any rides?**

```SELECT U.FName, U.LName, COUNT(R.RideID) AS TotalRides
FROM [User] U
LEFT JOIN Ride R ON U.UserID = R.UserID
GROUP BY U.FName, U.LName;
