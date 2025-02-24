select distinct
    gameid
    ,line
    ,overunder
    from {{ source('espn', 'ncaam_daily_game_results') }}