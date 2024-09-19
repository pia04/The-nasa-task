CREATE DATABASE ghg_emissions_db;

use ghg_emissions_db;

CREATE TABLE emissions_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Location VARCHAR(255),
    CO2_Emissions FLOAT,
    CH4_Emissions FLOAT,
    N2O_Emissions FLOAT,
    Population INT,
    Land_Use VARCHAR(255),
    Date DATE
);

show tables;

select * from emissions_data;

select * from preprocessed_emissions_data;

-- Connect to MySQL and set timeout and packet size
SET GLOBAL wait_timeout = 28800;
SET GLOBAL interactive_timeout = 28800;
SET GLOBAL max_allowed_packet = 67108864; -- 64MB

DESCRIBE preprocessed_emissions_data;

CREATE TABLE preprocessed_emissions_data1 (
    Location VARCHAR(255),
    CO2_Emissions DECIMAL(10, 2),
    CH4_Emissions DECIMAL(10, 2),
    N2O_Emissions DECIMAL(10, 2),
    Population INT,
    Land_Use VARCHAR(255),
    Date DATE
);

select * from preprocessed_emissions_data1;





