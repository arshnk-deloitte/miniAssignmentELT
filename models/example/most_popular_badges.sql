select Name, count(*) as count_users
from {{ ref('badges_table') }}
group by Name 
order by count_users limit 10
