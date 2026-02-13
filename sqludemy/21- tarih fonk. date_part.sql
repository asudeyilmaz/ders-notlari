/*
DATE_PART(field,source)
*century               hangi yuzyıl
quarter					hangi quartırdayız	()
decade				hangi onyıl
year
month
day
hour
minute
second
microseconds
milliseconds
dow         DAY OF WEEK PAZAR 1. GÜN
doy
epoch
isodow  PAZARTESİ1. GÜN
isoyear
timezone
timezone_hour
timezone_minute
millenium
*/


SELECT CURRENT_DATE,
      DATE_PART('century', CURRENT_DATE) as century_,
      DATE_PART('quarter', CURRENT_DATE) as quarter_,
      DATE_PART('decade', CURRENT_DATE) as decade_,
      DATE_PART('year', CURRENT_DATE) as year_,
      DATE_PART('month', CURRENT_DATE) as month_,
      DATE_PART('day', CURRENT_DATE) as day_,
      DATE_PART('hour', CURRENT_DATE) as hour_,
      DATE_PART('minute', CURRENT_DATE) as minute_,
      DATE_PART('dow', CURRENT_DATE) as dow_,
      DATE_PART('doy', CURRENT_DATE) as doy_,
      DATE_PART('timezone', CURRENT_TIME) as timezone_;