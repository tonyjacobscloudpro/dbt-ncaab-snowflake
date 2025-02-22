select
    seq4() AS teamid,
    player.team as team_name
from (
    select distinct team
    from RAW.ESPN.NCAAM_DAILY_STATS
) player