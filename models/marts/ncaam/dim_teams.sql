with teams as (

    select *
    from {{ ref('stg_espn__teams') }}

)

select * from teams