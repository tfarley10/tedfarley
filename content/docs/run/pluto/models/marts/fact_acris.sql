

  create or replace view `pluto-panel`.`dbt_ted`.`fact_acris`
  OPTIONS()
  as 

with prep as (
    select 
        master.* except(party1_type, party2_type, party3_type),
        legals.property_type,
        legals.bbl,
        parties.parties
    from `pluto-panel`.`dbt_ted`.`stg_acris_master`  as master
    left join `pluto-panel`.`dbt_ted`.`stg_acris_legals` as legals using (document_id)
    left join `pluto-panel`.`dbt_ted`.`stg_acris_parties` as parties using (document_id)
)

select * from prep;

