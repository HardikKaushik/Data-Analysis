select * from sales;

select * from people;

select s.SaleDate, s.Amount,p.Salesperson,p.Location ,s.SPID
	from sales s
    join people p on s.SPID=p.SPID;
    
    
select s.SaleDate, s.Amount,p.Salesperson,p.Location ,s.SPID
	from sales s
    join people p on s.SPID=p.SPID
    where Amount>500 ;
    
    
select s.SaleDate, s.Amount,p.Salesperson,p.Location , pr.Product,pr.Cost_per_box
	from sales s
    join people p on s.SPID=p.SPID
    join products pr on s.PID=pr.PID
    where Amount>500 ;
    
