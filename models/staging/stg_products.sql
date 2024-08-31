select
ID,
COST,
CATEGORY,
NAME,
BRAND,
RETAIL_PRICE,
DEPARTMENT,
SKU,
DISTRIBUTION_CENTER_ID

    
from {{ source('raw', 'products') }}