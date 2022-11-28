


select Team.team_name, Team.country from Team, Matches where wteam_id =
team_id AND Matches.stadium_name = 'R. Premadasa Stadium';

select Player.fname, Player.surname from Player, Team where Team.country = 'Sri Lanka';

select Player.fname, Player.surname, Player.role from Player, Team where Team.country = 'Sri Lanka' and Player.role = 'ball';

select Matches.wteam_runs, Team.team_name from Matches, Team where Team.country = 'England' and Matches.wteam_id = Team.team_id;


