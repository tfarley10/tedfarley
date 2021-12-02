

  create or replace table `pluto-panel`.`dbt_ted`.`stg_puma_geos`
  
  
  OPTIONS()
  as (
    

select 
    '360' || puma2010 as puma_geo_id,
    pumaname10 as puma_name,
    st_geogfromtext(geometry) as puma_geometry

from `pluto-panel.metadata.puma_geography`
  );
    