SElECT * FROM publishers ;

SElECT ((hirange - lorange) / ((hirange + lorange) / 2)) * 100 as percentage FROM roysched;

SElECT concat(title , ' ' , price)  "description" FROM titles ;

SElECT distinct type FROM titles ;

SElECT title FROM titles
where type = 'business';

SElECT title FROM titles
where type = 'trad_cook' OR type = 'mod_cook' ;

SElECT city FROM stores
where state = 'CA';

SElECT * FROM publishers 
where state is null ;

SElECT title FROM titles 
where price >= 19 and price <= 22 ;

SElECT title FROM titles 
where price >= 19 and price <= 22 and royalty >=10;

SElECT * FROM publishers 
where country != 'USA';

SElECT qty , case 
when qty <=5 then 'low' 
when qty <=50 then 'med'
when qty >50 then 'high' end newQty FROM sales ;

SElECT qty, ord_date FROM sales
order by qty desc, ord_date desc ;

SElECT round (discount,0) FROM discounts ;

SElECT stor_id,datediff(week, min(ord_date), max(ord_date)) as Weeks_Of_Order
FROM sales group by stor_id ;

SElECT coalesce (state,'No state','null') as newSate FROM publishers;

SElECT coalesce (royalty,0) " newRoyalty " FROM titles ;

SElECT type , sum(price) SumOfPrice FROM titles group by type  
order by SumOfPrice desc ;

SElECT Count(state) numOfstates FROM stores ;