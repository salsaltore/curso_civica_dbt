{{
    config(
        materialized='table'
    )
}}

with products as (
    select *
    from {{ source ('sql_server_dbo', 'products') }}
)

select * from products