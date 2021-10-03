create database Clients;
use Clients:
create table client_details(
client_id (6) int not null PRIMARY KEY,
referal_date DATE NOT NULL,
all sessions int not null,
eligible_session int not null
);
create table client_sessions(
client_id (6) int not null PRIMARY KEY,
session_type (2) not nullL,
MTR_date DATE NOT NULL,
discharge_date DATE NOT NULL,
);
SELECT client_id (
FROM client_details
INNER JOIN client_sessions
ON client_details.eligible_session =
client_sessions.MTR_date;