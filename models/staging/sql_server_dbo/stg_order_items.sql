{{
    config(
        materialized='table'
    )
}}

with order_items as (
    select *
    from {{ source ('sql_server_dbo', 'order_items') }}
)

select * from order_items