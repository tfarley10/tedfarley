
    
    

with dbt_test__target as (
  
  select bbl_year_hash_id as unique_field
  from `pluto-panel`.`dbt_ted`.`stg_lot_year`
  where bbl_year_hash_id is not null
  
)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


