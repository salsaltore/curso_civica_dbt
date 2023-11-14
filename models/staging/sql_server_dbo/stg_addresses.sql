{{
    config(
        materialized='table'
    )
}}

with addresses as (
    select *
    from {{ source ('sql_server_dbo', 'addresses') }}
)

select * from addresses