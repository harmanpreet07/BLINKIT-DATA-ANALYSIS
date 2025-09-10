select * from blinkit_data


--cleaning of data
update blinkit_data
set Item_Fat_Content =
case when Item_Fat_Content in ('low fat','LF') 
then 'Low Fat'
when Item_Fat_Content = 'reg' then 'Regular'
else Item_Fat_Content
end

select (cast(sum(Total_Sales)/1000000 as decimal (8,2)) from blinkit_data

select cast(avg(Total_Sales) as decimal(10,2)) as avg_sales from blinkit_data


--for only low fat
select (cast(sum(Total_Sales)/1000000 as decimal (5,2)))
from blinkit_data
where Item_Fat_Content = 'Low Fat'

--avg rating
select cast(avg(Rating) as decimal(10,2))  from blinkit_data

--next query
select Item_Fat_Content, cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales
from blinkit_data
group by Item_Fat_Content