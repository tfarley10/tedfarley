

with prep as (
    select 
        *
    from `pluto-panel`.`dbt_ted`.`stg_acris_legals` as legals
    where 
        document_id in (select document_id from `pluto-panel`.`dbt_ted`.`fact_deed_transfer`)
)

select * from prep