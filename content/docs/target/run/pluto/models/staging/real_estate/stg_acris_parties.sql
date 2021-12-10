

  create or replace view `pluto-panel`.`dbt_ted`.`stg_acris_parties`
  OPTIONS()
  as 


with prep as (
        select 
            document_id,
            party_type,
            name,
            case
                when address_2 is not null then address_1 || ' | ' || address_2 
                else address_1 
            end as address,
            country,
            city,
            state
        from `pluto-panel`.`real_estate`.`raw_acris_parties`
),

agg_parties as (

select 
    document_id,  
    doc_type,
    case  
        when party_type = '1' then party1_type
        when party_type = '2' then party2_type
        when party_type = '3' then party3_type
    end as party_type,
    doc_type_description,
    array_agg(distinct name ignore nulls) as names,
    array_agg(distinct address ignore nulls) as address,
    array_agg(distinct country ignore nulls) as country,
    array_agg(distinct state ignore nulls) as state
from prep 
left join `pluto-panel`.`dbt_ted`.`stg_acris_master` using (document_id)
group by 1,2,3,4

),

agg_docs as (
    select 
        document_id, 
        doc_type, 
        struct<party_type string, 
              names array<string>, 
              address array<string>, 
              country array<string>, 
              state array<string>> (party_type, names, address, country, state) as parties
    from agg_parties
)

select 
    document_id, 
    doc_type, 
    array_agg(parties) as parties 
from agg_docs
group by 1,2;

