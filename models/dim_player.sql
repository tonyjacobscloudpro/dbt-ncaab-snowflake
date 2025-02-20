{{

    config(
        materialized='table'
    )

}}

with players as (

    select *
    from {{ ref('stg_espn__players') }}

)

select * from players