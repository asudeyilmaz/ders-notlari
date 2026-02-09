select distinct bcolor, fcolor
from distinct_demo
order by bcolor, fcolor

select distinct on (bcolor) bcolor, fcolor
from distinct_demo
order by bcolor, fcolor