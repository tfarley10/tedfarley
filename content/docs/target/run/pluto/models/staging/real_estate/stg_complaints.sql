

  create or replace view `pluto-panel`.`dbt_ted`.`stg_complaints`
  OPTIONS()
  as with a as (
    select 
        complaint_number,
        trim(bin) as bin,
        status,
        safe.parse_date('%m/%d/%Y', date_entered) as complaint_date,
        date_entered as date_entered_raw,
        disposition_code,
        trim(complaint_category) as code
    from real_estate.raw_dob_complaints
)

select 
    * 
from a 
left join `pluto-panel`.`dbt_ted_seed_data`.`complaint_codes` using (code);

