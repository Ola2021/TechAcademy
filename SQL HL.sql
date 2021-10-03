create database clients;
use clients;
create table client_details(
client_id  int not null PRIMARY KEY,
referal_date DATE NOT NULL,
all_sessions int not null,
eligible_session int not null,
gender TEXT
);
create table client_sessions(
client_id  int not null PRIMARY KEY,
session_type TEXT not null,
MTR_date DATE NOT NULL,
discharge_date DATE NOT NULL,
client_region TEXT
);
SELECT 
all_sessions, 
session_type, 
MTR_date
FROM client_details
INNER JOIN client_sessions
ON client_details.client_id =
client_sessions.client_id;