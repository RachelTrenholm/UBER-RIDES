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
+ [Create Script]()
+ [Populate Script]()
