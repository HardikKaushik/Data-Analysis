select * from sales;

select SaleDate,Amount,Boxes from sales;

select SaleDate,Amount,Customers  from sales;
select SaleDate,Amount,Boxes, Amount/Boxes from sales;
select SaleDate,Amount,Boxes, Amount/Boxes 'Amount per box' from sales;

select * from sales
where Amount>10000;

select * from sales
where Amount>10000
order by Amount;

select * from sales
where GeoID='G1' 
order by PID,Amount;

select * from sales
where Amount>10000 and SaleDate>='2020/01/01';

select SaleDate, Amount from sales
where Amount>10000 and year(SaleDate)=2022
order by Amount desc;

select * from sales
where Boxes between 0 and 50
order by Boxes desc;

select * from people;

select * from people
where Team='Jucies' or Team='Delish';

select * from people
where Team in ('Jucies','Delish');

select * from people 
where Salesperson like 'B%';

select * from sales;

select  SaleDate,Amount,
		case	when amount<1000 then 'under 1k'
				when amount<5000 then 'under 5k'
				when amount<10000 then 'under 10k'
             else '10k or more' 
        end  'Amount Category'
from sales;

        
        





