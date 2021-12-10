

  create or replace table `pluto-panel`.`dbt_ted`.`acs_nyc`
  
  
  OPTIONS()
  as (
    
with acs as (
    select * replace(cast(year as integer) as year) from `pluto-panel`.`dbt_ted`.`stg_acs_agg`
),

nyc_pumas as (
    select 
        puma_name,
        puma_geo_id as geo_id
    from `pluto-panel`.`dbt_ted`.`stg_puma_geos`
)

select 
    *
from acs 
inner join nyc_pumas using (geo_id)
  );
  