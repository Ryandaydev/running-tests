
/*populate the week table*/

INSERT INTO WEEK (week_number, last_changed_date)
SELECT DISTINCT week_number, DATE('now')
FROM PERFORMANCE;

UPDATE week
SET
    ppr_8_max_points = 8 * (80 + ABS(RANDOM() % 61)),   
    ppr_10_max_points = 10 * (80 + ABS(RANDOM() % 61)),
    ppr_12_max_points = 12 * (80 + ABS(RANDOM() % 61)),
    ppr_14_max_points = 14 * (80 + ABS(RANDOM() % 61)),
    half_ppr_8_max_points = 8 * (75 + ABS(RANDOM() % 61)),  
    half_ppr_10_max_points = 10 * (75 + ABS(RANDOM() % 61)),
    half_ppr_12_max_points = 12 * (75 + ABS(RANDOM() % 61)),
    half_ppr_14_max_points = 14 * (75 + ABS(RANDOM() % 61)),
    std_8_max_points = 8 * (70 + ABS(RANDOM() % 61)),  
    std_10_max_points = 10 * (70 + ABS(RANDOM() % 61)),
    std_12_max_points = 12 * (70 + ABS(RANDOM() % 61)),
    std_14_max_points = 14 * (70 + ABS(RANDOM() % 61));

INSERT INTO WEEK
VALUES ('202318',970.0,1030.0,1522.0,1664.0,601.0,940.0,1115.0,1360.0,719.0,1299.0,1148.0,1732.0,'2024-09-06');



/*get count of teams in leagues*/

SELECT league.league_id, count(*)
FROM league
LEFT JOIN team on league.league_id = team.league_id
GROUP BY team.league_id;

/*get a count just on the team table*/

SELECT league_id, count(*)
from team
GROUP BY league_id;

/* set values in league table */
update league set league_size = 12;

update league set league_size = 8
where league_id = 5002;

/*populate team_week*/

INSERT INTO team_week (team_id, week_number, fantasy_points, last_changed_date)
SELECT 
    team.team_id, 
    week.week_number, 
    80 + (RANDOM() % 61),  -- Generate a random number between 80 and 140
    DATE('now')
FROM team
CROSS JOIN week;

/* insert league_id 5003 */
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1021, 'Team 1a', 5003, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1022, 'Team 2a', 5003, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1023, 'Team 3a', 5003, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1024, 'Team 4a', 5003, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1025, 'Team 5a', 5003, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1026, 'Team 6a', 5003, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1027, 'Team 7a', 5003, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1028, 'Team 8a', 5003, '2024-09-01');


/*insert league_id 5004 */
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1033, 'Team 1b', 5004, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1034, 'Team 2b', 5004, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1035, 'Team 3b', 5004, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1036, 'Team 4b', 5004, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1037, 'Team 5b', 5004, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1038, 'Team 6b', 5004, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1039, 'Team 7b', 5004, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1040, 'Team 8b', 5004, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1041, 'Team 9b', 5004, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1042, 'Team 10b', 5004, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1043, 'Team 11b', 5004, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1044, 'Team 12b', 5004, '2024-09-01');

/*insert league_id 5005*/
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1045, 'Team 1c', 5005, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1046, 'Team 2c', 5005, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1047, 'Team 3c', 5005, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1048, 'Team 4c', 5005, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1049, 'Team 5c', 5005, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1050, 'Team 6c', 5005, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1051, 'Team 7c', 5005, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1052, 'Team 8c', 5005, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1053, 'Team 9c', 5005, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1054, 'Team 10c', 5005, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1055, 'Team 11c', 5005, '2024-09-01');
INSERT INTO team (team_id, team_name, league_id, last_changed_date) VALUES (1056, 'Team 12c', 5005, '2024-09-01');

update league set scoring_type = 'Half-PPR', league_size = 8 where league_id = 5003;