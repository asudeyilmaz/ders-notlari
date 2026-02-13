SELECT CURRENT_DATE,
      EXTRACT(CENTURY FROM CURRENT_DATE) as century_,
      EXTRACT(QUARTER FROM CURRENT_DATE) as quarter_,
      EXTRACT(DECADE FROM CURRENT_DATE) as decade_,
      EXTRACT(YEAR FROM CURRENT_DATE) as year_,
      EXTRACT(MONTH FROM CURRENT_DATE) as month_,
      EXTRACT(DAY FROM CURRENT_DATE) as day_,
      EXTRACT(HOUR FROM CURRENT_TIME) as hour_,
      EXTRACT(MINUTE FROM CURRENT_TIME) as minute_,
      EXTRACT(DOW FROM CURRENT_DATE) as dow_,
      EXTRACT(DOY FROM CURRENT_DATE) as doy_,
      EXTRACT(TIMEZONE FROM CURRENT_TIME) as timezone_;


SELECT 
       DATE_TRUNC('quarter', TIMESTAMP '2023-04-17 06:12:38') as quarter_,
       DATE_TRUNC('year',    TIMESTAMP '2023-04-17 06:12:38') as year_,
       DATE_TRUNC('month',   TIMESTAMP '2023-04-17 06:12:38') as month_,
       DATE_TRUNC('day',     TIMESTAMP '2023-04-17 06:12:38') as day_,
       DATE_TRUNC('hour',    TIMESTAMP '2023-04-17 06:12:38') as hour_,
       DATE_TRUNC('minute',  TIMESTAMP '2023-04-17 06:12:38') as minute_,
       DATE_TRUNC('second',  TIMESTAMP '2023-04-17 06:12:38') as second_