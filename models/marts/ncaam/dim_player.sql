with player_data as (
    select * from {{ ref('stg_espn__players') }}
),

team_data as (
    select teamid, school, nickname
    from {{ ref('stg_seeds__teams') }}
)

select p.playerid
, t.teamid
, p.first_name
, p.last_name
, p.player as full_name
, p.jersey
from player_data p
left join team_data t
    on p.team = t.school || ' ' || t.nickname