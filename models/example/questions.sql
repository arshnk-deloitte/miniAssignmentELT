select p.Body
from {{ ref('users_table') }} u join {{ ref('posts_table') }} p
on u.Id = p.OwnerUserId
where u.DisplayName = 'alexandrul' and p.PostTypeId = 1
