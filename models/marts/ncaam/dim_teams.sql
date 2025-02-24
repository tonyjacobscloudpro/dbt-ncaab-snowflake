with teams as (

    select *
    from {{ ref('stg_seeds__teams') }}

)

select * from teams