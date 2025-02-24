select
    seq4() AS playerid,
    team,
    SPLIT_PART(player.player, ' ', 1) as first_name,
    SPLIT_PART(player.player, ' ', 2) as last_name,
    player,
    jersey
from (
    select distinct player, team, jersey
    from {{ source('espn', 'ncaam_daily_stats') }}
) player
