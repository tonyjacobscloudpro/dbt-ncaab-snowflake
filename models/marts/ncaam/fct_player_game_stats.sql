select p.playerid
,t.teamid
,s.gameid
,s.role
,s.jersey
,s.min
,s.fg
,s.threept
,s.oreb
,s.dreb
,s.reb
,s.ast
,s.stl 
,s.blk
,s.turnover
,s.pf
,s.pts
from {{ ref('stg_espn_fct__player_game_stats') }} s
left join {{ ref('stg_espn__players') }} p 
    on s.player = p.player
left join {{ ref('stg_seeds__teams') }} t 
    on s.team = t.school || ' ' || t.nickname
