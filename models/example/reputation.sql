select Id, DisplayName, Reputation 
from {{ ref('users_table') }}
order by Reputation desc 
limit 10
