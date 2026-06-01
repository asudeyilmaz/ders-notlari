--List Indexes
--------------------------------------------

--List of all indexes
SELECT tablename, indexname, indexdef
FROM pg_indexes
WHERE schemaname = 'public'
ORDER BY 1, 2;

--Usage statistics of indexes

SELECT schemaname, relname, 
       indexrelname, idx_scan 
FROM pg_stat_user_indexes 
ORDER BY idx_scan;