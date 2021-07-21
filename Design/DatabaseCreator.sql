/*Create PlayersSalaries table from Salaries csv file */
CREATE TABLE PlayerSalaries (
PlayerID int, 
PlayerName varchar,
Salary float,
SeasonStart int,
SeasonEnd int,
teamAbbrevated varchar,
FullTeam varchar
);

/*Create PlayerBio table from players csv file*/
CREATE TABLE PlayerBio (
PlayerID int,
PlayerName varchar,
Height int,
Weght int,
College varchar,
BirthYear int,
BirthCity varchar,
BirthState varchar
);

/*Create SeasonStats table from season stats csv*/
CREATE TABLE SeasonStats (
PlayerID int,
Year int,
PlayerName varchar,
Position varchar,
Age int,
Team varchar, 
Games int,
GameStarted int,
MP float,
PER float,
TS_percentage float,
ThreePAr float,
FTr float,
ORB_percentage float,
DRB_percentage float,
TRB_percentage float,
AST_percentage float,
STL_percentage float,
BLK_percentage float,
TOV_percentage float,
USG_percentage float,
blank1 varchar,
OWS float,
DWS float,
WS float,
WSPer48 float,
blank2 varchar,
OBPM float,
DBPM float,
BPM float,
VORP float,
FG float,
FGA float,
FG_percentage float,
ThreeP float,
ThreePA float,
ThreeP_percentage float,
TwoP float,
TwoPA float,
TwoP_percentage float,
eFG_percentage float,
FT float,
FTA float,
FT_percentage float,
ORB float,
DRB float,
TRB float,
AST float,
STL float,
BLK float,
TOV float,
PF float,
PTS float
);

/* Create table for team stats */
CREATE TABLE TeamStats (
seasonYear int,
team varchar,
record varchar,
wins int,
losses int,
win_percentage float
);

/* create table to obtain short form for team names */
CREATE TABLE teamShortForm (
team varchar,
teamShort varchar
)

/* Select and view tables to check that data uploaded correctly */
SELECT * FROM playerbio;
SELECT * FROM playersalaries;
SELECT * FROM seasonstats;
SELECT * FROM teamstats;

