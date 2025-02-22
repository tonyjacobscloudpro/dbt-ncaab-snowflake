select distinct gameid
    ,team 
    ,player
    ,role
    ,jersey
    ,min
    ,fg
    ,threept
    ,oreb
    ,dreb
    ,reb
    ,ast
    ,stl 
    ,blk
    ,turnover
    ,pf
    ,pts
from {{ source('espn', 'ncaam_daily_stats') }}



