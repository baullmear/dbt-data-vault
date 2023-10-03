
with source as (

    select * from {{ source('in.c-DBT_SALESFORCE', 'leads') }}

),

renamed as (

    select
    
        BATCHID,
        LEADID,
        CONTACTID,
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        COMPANY,
        LEAD_STATUS,
        DATECREATED,
        MODIFIEDDATE

    from source

)

select * from renamed