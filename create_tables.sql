-- Team table
create table Team(
	team_id char(6) not null primary key,
	team_name varchar(25) not null,
	country varchar(25) not null,
	coach varchar(25));

-- Player table
create table Player(
	p_id char(6) not null primary key,
	team_id char(6),
	fname varchar(25) not null,
	surname varchar(25) not null,
	role varchar(25) not null,
	foreign key (team_id) references Team(team_id));

-- Stadium table
create table Stadium(
	stadium_name varchar(25) primary key,
	country varchar(25) not null,
	location varchar(25) not null,
	capacity int(6) not null);

 
-- Match table
create table Matches(
	match_id char(6) not null primary key,
	wteam_id char(6),
	lteam_id char(6),
	wteam_runs int(3) not null,
	wteam_overs int(2) not null,
	wteam_wickets int(2) not null,
	lteam_runs int(3) not null,
	lteam_overs int(2) not null,
	lteam_wickets int(2) not null,
	match_date varchar(10) not null,
	stadium_name varchar(25),
	foreign key (wteam_id) references Team(team_id),
	foreign key (lteam_id) references Team(team_id),
	foreign key (stadium_name) references Stadium(stadium_name));
	
	
	
