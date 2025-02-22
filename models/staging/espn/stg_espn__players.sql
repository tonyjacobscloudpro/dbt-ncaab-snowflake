select
    seq4() AS playerid,
    SPLIT_PART(player.player, ' ', 1) as first_name,
    SPLIT_PART(player.player, ' ', 2) as last_name,
    player,
    team,
    jersey
from (
    select distinct player, team, jersey
    from RAW.ESPN.NCAAM_DAILY_STATS
) player
