{{

    config(
        materialized='table'
    )

}}

with teams as (

    select *
    from {{ ref('stg_kaggle__teams') }}

)

select * from teams