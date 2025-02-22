{{

    config(
        materialized='table'
    )

}}

select p.playerid,t.teamid,s.* 
from {{ ref('stg_fct__player_game_stats') }} s
left join {{ ref('stg_espn__players') }} p 
    on s.player = p.player
left join {{ ref('stg_espn__teams') }} t 
    on s.team = t.team_name
