/*additional tables for v0.2 of API */

CREATE TABLE team_week (
        team_id INTEGER NOT NULL, 
        week_number VARCHAR NOT NULL, 
        fantasy_points FLOAT NOT NULL, 
        last_changed_date DATE NOT NULL,         
        PRIMARY KEY (team_id, week_number), 
        FOREIGN KEY(team_id) REFERENCES team (team_id), 
        FOREIGN KEY(week_number) REFERENCES week (week_number) 
);

DROP TABLE week;
CREATE TABLE week (
        week_number VARCHAR NOT NULL, 
        ppr_8_max_points FLOAT,
        ppr_10_max_points FLOAT,
        ppr_12_max_points FLOAT,
        ppr_14_max_points FLOAT,
        half_ppr_8_max_points FLOAT,
        half_ppr_10_max_points FLOAT,
        half_ppr_12_max_points FLOAT,
        half_ppr_14_max_points FLOAT,
        std_8_max_points FLOAT,
        std_10_max_points FLOAT,
        std_12_max_points FLOAT,
        std_14_max_points FLOAT,
        last_changed_date DATE NOT NULL,         
        PRIMARY KEY (week_number) 
);

ALTER TABLE league
ADD league_size integer;

