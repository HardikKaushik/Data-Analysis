select geoID, sum(Amount)
from sales
group by geoID;

select geoID, sum(Amount), avg(amount)
from sales
group by geoID;

select g.Geo , sum(Amount), avg(amount)
	from sales s
    join geo g on s.GeoID=g.GeoID
    group by g.Geo;
    
select p.Team, pr.Category , sum(Amount), avg(amount)
	from sales s
    join people p on s.SPID=p.SPID
    join products pr on s.PID=pr.PID
	where p.Team <> ''
    group by p.Team, pr.Category;
    
    
select pr.product , sum(Amount) as 'total amount'
	from sales s
    join products pr on s.PID=pr.PID
    
    group by pr.Product
    order by `total amount` desc;
    
select count(Product) as 's.no' ,pr.product , sum(Amount) as 'total amount'
	from sales s
    join products pr on s.PID=pr.PID
    
    group by pr.Product
    order by `total amount` desc
    limit 10;