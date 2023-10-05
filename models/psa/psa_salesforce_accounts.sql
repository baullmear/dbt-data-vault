with source as (

    select * from {{ source('salesforce', 'accounts') }}

),

renamed as (

    select
    
        CreatedById AS BATCHID,
        Id as ACCOUNTID,
        Name as COMPANY_NAME,
        BillingCity as CITY,
        BillingState as STATE,
        CreatedDate as DATECREATED,
        LastModifiedDate as MODIFIEDDATE

    from source

)

select * from renamed