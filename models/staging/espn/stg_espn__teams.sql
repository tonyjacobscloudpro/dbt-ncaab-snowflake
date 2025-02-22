select
    seq4() AS teamid,
    player.team as team_name
from (
    select distinct team
    from {{ source('espn', 'ncaam_daily_stats') }}
) player