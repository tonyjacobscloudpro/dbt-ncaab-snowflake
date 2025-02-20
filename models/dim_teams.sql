{{

    config(
        materialized='table'
    )

}}

with teams as (

    select teamid
        ,teamname
    from RAW.KAGGLE.MTEAMS

)

select * from teams