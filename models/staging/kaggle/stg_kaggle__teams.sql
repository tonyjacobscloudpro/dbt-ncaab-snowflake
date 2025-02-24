select teamid
        ,teamname as team_name
    from {{ source('kaggle', 'MTEAMS') }}