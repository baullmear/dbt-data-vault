
with source as (

    select * from {{ source('in.c-DBT_SALESFORCE', 'contacts') }}

),

renamed as (

    select
    
        BATCHID,
        CONTACTID,
        COMPANYEXTID as ACCOUNTID,
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        COUNTRY,
        DATECREATED,
        MODIFIEDDATE

    from source

)

select * from renamed