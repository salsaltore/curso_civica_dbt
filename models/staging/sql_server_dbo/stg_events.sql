{{
    config(
        materialized='table'
    )
}}

with events as (
    select *
    from {{ source ('sql_server_dbo', 'events') }}
)

select * from events