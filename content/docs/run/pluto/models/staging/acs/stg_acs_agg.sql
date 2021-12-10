

  create or replace table `pluto-panel`.`dbt_ted`.`stg_acs_agg`
  
  
  OPTIONS()
  as (
    



select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2012_5yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2012_5yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2012_5yr`
union all

select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2010_5yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2010_5yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2010_5yr`
union all

select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2013_5yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2013_5yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2013_5yr`
union all

select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2018_5yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2018_5yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2018_5yr`
union all

select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2016_5yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2016_5yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2016_5yr`
union all

select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2009_3yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2009_3yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2009_3yr`
union all

select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2017_5yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2017_5yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2017_5yr`
union all

select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2008_3yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2008_3yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2008_3yr`
union all

select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2015_5yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2015_5yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2015_5yr`
union all

select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2007_3yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2007_3yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2007_3yr`
union all

select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2014_5yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2014_5yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2014_5yr`
union all

select 
    geo_id,
    total_pop,
    pop_25_64,
    family_households,
    households,
    median_income,
    housing_units,
    median_rent,
    mortgaged_housing_units,
    gini_index,
    
    no_cars,
    not_us_citizen_pop,
    masters_degree,
    bachelors_degree,
    white_pop,
    black_pop,
    asian_pop,
    hispanic_pop,
    regexp_extract('puma_2011_5yr', r'.+(\d{4}).+$') as year,
    regexp_extract('puma_2011_5yr', r'.+(\d{1})yr$') as estimate_length,
from `bigquery-public-data.census_bureau_acs.puma_2011_5yr`


  );
  