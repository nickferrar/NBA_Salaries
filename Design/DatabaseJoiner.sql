/* Check tables for column names/data to know which tables to merge with which tables */
SELECT * FROM playerbio;
SELECT * FROM playersalaries;
SELECT * FROM seasonstats;
SELECT * FROM teamstats;
SELECT * FROM teamshortform;

/* Joining tables teamstats with teamShortForm to be create a table to join with player/season stats */
/* The other tables report the team names as the full name so we need to create a table with the short form to be able to join the other tables together */
SELECT 
ts.seasonyear,
ts.team,
ts.record,
ts.wins,
ts.losses,
ts.win_percentage,
tsf.teamshort
/* join into a new table to merge */ 
INTO teamstatsRevised
FROM teamstats as ts
LEFT JOIN teamShortForm as tsf
ON ts.team = tsf.team

/* Create the table contianing player stats and salaries */
SELECT * 
INTO playerdatasalaries
/* select the columns from the seasonstats table */ 
from seasonstats as ss
/* create the join to obtain player's salaries */
LEFT JOIN playersalaries as ps
/* we need to join on the player's name and year since each player is paid annually */
ON ss.playername = ps.salaryname and ss.year = ps.seasonstart

/* Finally to create our final table join in the team stats with the joined player data */
SELECT * 
INTO playerdataFinal
FROM playerdatasalaries as pds
/* join on the revised teamstats table we created before */
LEFT JOIN teamstatsrevised as tsr
/* we need to join where the team names and years match to capture the player's team record for that year */
ON pds.teamabb = tsr.teamshort and pds.year = tsr.seasonyear
;

