select
    seq4() AS id,
    SPLIT_PART(player.player, ' ', 1) as first_name,
    SPLIT_PART(player.player, ' ', 2) as last_name,
    player.team,
    team.teamid,
    team.team_name,
    player.jersey
from (
    select distinct player, team, jersey
    from RAW.ESPN.NCAAM_DAILY_STATS
) player
