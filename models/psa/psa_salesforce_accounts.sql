with source as (

    select * from {{ source('in.c-DBT_SALESFORCE', 'accounts') }}

),

renamed as (

    select
    
        BATCHID,
        COMPANYEXTID as ACCOUNTID,
        COMPANY_NAME,
        CITY,
        STATE,
        DATECREATED,
        MODIFIEDDATE

    from source

)

select * from renamed