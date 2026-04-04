-- Create readonly user
CREATE USER readonly_user WITH PASSWORD 'readonly1234';

-- Allow connection
GRANT CONNECT ON DATABASE ecommerce TO readonly_user;

-- Allow usage of schema
GRANT USAGE ON SCHEMA public TO readonly_user;

-- Allow SELECT on all existing tables
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly_user;

-- Allow SELECT on future tables
ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT SELECT ON TABLES TO readonly_user;