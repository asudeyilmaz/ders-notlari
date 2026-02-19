SELECT current_date, current_time,
	   current_date + 10 as f1,
	   current_date - 5 as f2,
	   current_date - TO_DATE('01022022', 'DDMMYYYY') as f3,
	   current_time + interval '2 hour 10 minutes' as f4,
	   NOW() - interval '1 year 2 months 3 hours 20 minutes' as f5