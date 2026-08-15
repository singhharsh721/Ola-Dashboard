Create Database Ola;
Use Ola;
#1. Retrieve all successful bookings:
create view successful_booking as
select*from bookings
where booking_status = 'success';

#2. Find the average ride distance for each vehicle type:
select vehicle_type, avg(ride_distance) from bookings
group by vehicle_type;

#3. Get the total number of cancelled rides by customers:
select count(*) from bookings
where booking_status = 'Canceled by Customer';

#4. List the top 5 customers who booked the highest number of rides:
select customer_id, count(*) from bookings
group by customer_id
order by count(*) desc
limit 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*) from bookings
where Canceled_Rides_by_Driver  = 'Personal & Car related issue';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select min(driver_ratings), max(driver_ratings), vehicle_type from bookings
where vehicle_type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
select * from bookings
where Payment_method = 'upi';

#8. Find the average customer rating per vehicle type:
select avg(customer_rating), vehicle_type from bookings
group by vehicle_type;

#9. Calculate the total booking value of rides completed successfully:
select sum(booking_value) from bookings
where booking_status = 'success';

#10. List all incomplete rides along with the reason:
select Incomplete_Rides_Reason, booking_id from bookings
where Incomplete_Rides = 'yes';