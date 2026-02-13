SELECT CURRENT_DATE, -- tarih formatında döner
		CURRENT_TIME, -- zamanı time zone ile birlikte döner
		LOCALTIME, -- time zonu olmadan zaman
		NOW(),
		TIMEOFDAY(); -- text olarak döner
		--- tablo adlarının altında ne formatta old. yazıryor bu postresql e özeldir


SELECT first_name,
		last_name,
		hire_date,
		AGE(hire_date) as age_of_hire --- hire dateden bugunun tarihini çıkartarak aradaki süreyi buluyor
FROM employees