select
ID
,
FIRST_NAME
,
LAST_NAME
,
EMAIL
,
AGE
,
GENDER
,
STATE
,
STREET_ADDRESS
,
POSTAL_CODE
,
CITY
,
COUNTRY
,
LATITUDE
,
LONGITUDE
,
TRAFFIC_SOURCE
,
replace(lower(CREATED_AT),'UTC','') as CREATED_AT


    
from {{ source('raw', 'users') }}