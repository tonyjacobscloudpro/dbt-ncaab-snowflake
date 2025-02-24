select distinct
    gameid
    ,home_team
    ,away_team
    ,homescore as home_score
    ,awayscore as away_score
    ,winner
    from {{ source('espn', 'ncaam_daily_game_results') }}
