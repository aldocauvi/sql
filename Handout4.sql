use AdventureWorks2017;
select ABS(-7.23);
select ABS(0.23);
/*The Abs funtion returns the absolute value of a given number. For example, a bank account has positive transactions (deposits) and negative transactions (withdrawals)
and we want to know the average transaction amount. We'll use absolute value in order to have all positive numbers and be able to calculate the average transaction amount*/
select ABS(1000);
select ABS(-500);
select ABS(1500);
select ABS(-1000);

Select ceiling(-4.01);
Select ceiling(4.01);
/*The ceiling function returns a value that is equal or greater to the specified expression. It can be useful if we have sold units with decimals
and it's not possible to sell a fraction of an item, it has to be an integer number of units.*/
Select ceiling(2.99);
Select ceiling(5.98);
Select ceiling(10.5);
Select ceiling(4.4);

select exp(-0.001);
select exp(-1);
select exp(2);
select exp(1);
/*Is a mathematical funcion that returns the exponential value of a given expression, the exponent number is the constant e (2.7182...) raised to the power of the specified number. 
For example if we have that the population of a given country is e^t where t is year 2000, and we want to calculate the population for one decade we'll use exp(0),exp(1),exp(2)... exp(10) */
select exp(1);
select exp(2);
select exp(3);
select exp(4);
select exp(5);
select exp(6);
select exp(7);
select exp(8);
select exp(9);
select exp(10);


select floor(9.99);
select floor(0.009);
select floor(-9.99);
/*Calculates the largest integer value less than or equal to the specified value n.For example,if it's not possible to half a fraction of units of an item, we only can have integers
we can use the floor function*/
select floor(4.4);
select floor(10.3);
select floor(9.8);
select floor(15.1);
select floor(5.7);

select log(1);
select log10(1);
/*The function log calculates the natural logarith of n, and log 10 calculates the logarith (base 10) for n. For example, if youn want to calculate the growth of a country you can use logarithms,
You look at the GDP one year and the GDP the next, and take the logarithm to find the implicit growth rate.Assuming 100% growth,
how long do you need to grow to get to 1.5? (.405, less than half the time period) */
select log(1);
select log(1.5);


select POWER(2.367,0);
select POWER(4,2);
select POWER(4,2);
select POWER(4,2);
select POWER(4,2);
select POWER(4,2);
/*The output means that means that the number 2.367 has been raised to the power of 0, the result is 1.
A system administrator wants to upgrade the RAM of all the servers and personal computers, to calculate the amount of ram needed it’s to use a power function. In this case he wants to double the memory of each system. Each system memory amount will be raised to the power of 2. The output is twice the amount.
*/


select sqrt(49);
/*The sqrt function returns the square root of a given number in the argument. The difference between SQRT and POWER functions is that SQRT calculates the square root, meanwhile the 
POWER function raises the number to a power, both funcionts are the opposite of one another.*/

select getdate();
select getdate();
select getdate();
select getdate();
select getdate();
select getdate();

/*We can use getdate function to get the current system date and time that a new transaction happens ir or database*/


select datepart(weekday,'01.04.2020');
select datepart(quarter,'01.04.2019');
select datepart(quarter,'10.04.2019');
select datepart(quarter,'02.20.2019');
select datepart(quarter,'05.04.2019');
select datepart(quarter,'04.04.2019');
select datepart(quarter,'03.04.2019');
/*With datepart function we have extracted the number that represents the weekday in the date 01.04.2000, the result is 7. 
For example, in a real world scenario we can use this function to separate information by quarters, 
let’s say we have a database and we want to filter the transactions that occurred in the first quarter of the year.
We’ll separate the ones that have output 1, which represents the first quarter of the year.*/

select datediff(day,'01.02.2005','02.01.2009');

select datediff(hour,'01.01.2020','01.02.2020');
select datediff(hour,'01.02.2020','01.04.2020');
select datediff(hour,'01.01.2020','01.03.2020');
select datediff(hour,'01.03.2020','01.04.2020');
select datediff(hour,'01.04.2020','01.06.2020');
select datediff(hour,'01.05.2020','01.10.2020');
/*With datediff function we can calculate the time between two dates. For example, a transport company, has a fleet of trucks and pays drivers by each hour they drive.
With this function, we will calculate the number of hours it takes the drivers to reach their destination, it is represented by the difference between 
the arrival day and the departure day.*/