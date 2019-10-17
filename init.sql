-- CREATE USER auth WITH PASSWORD 'auth';
-- CREATE DATABASE auth OWNER auth;
-- GRANT CONNECT ON DATABASE auth TO auth;
-- GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO auth;
DECLARE usr varchar;

usr := 'auth';
CREATE USER usr WITH PASSWORD usr;
CREATE DATABASE usr OWNER usr;
GRANT CONNECT ON DATABASE usr TO usr;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO usr;

usr := 'auth_test';
CREATE USER usr WITH PASSWORD usr;
CREATE DATABASE usr OWNER usr;
GRANT CONNECT ON DATABASE usr TO usr;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO usr;