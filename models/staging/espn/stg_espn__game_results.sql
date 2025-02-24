select distinct
    d.gameid,
    h.teamid as home_team_id,
    a.teamid as away_team_id,
    d.homescore as home_score,
    d.awayscore as away_score,
    d.winner
from {{ source('espn', 'ncaam_daily_game_results') }} d
    left join {{ ref('stg_seeds__teams') }} h
        on d.home_team = h.school
    left join {{ ref('stg_seeds__teams') }} a
        on d.away_team = a.school


