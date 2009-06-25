-- Resets the entire database
TRUNCATE clients;
TRUNCATE jobs;
TRUNCATE run_client;
TRUNCATE run_useragent;
TRUNCATE runs;
TRUNCATE users; -- Optional

-- Resets just the results from clients
UPDATE jobs SET `status`=0 WHERE 1=1;
UPDATE run_useragent SET `runs`=0, `completed`=0, `status`=0 WHERE 1=1;
UPDATE runs SET `status`=0 WHERE 1=1;
DELETE FROM run_client WHERE 1=1;
