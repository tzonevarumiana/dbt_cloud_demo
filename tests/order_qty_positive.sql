-- If this query returns a result, the test will fail
select
    *
from {{ ref('stg_campaigns') }}
having not(order_qty >= 0)
