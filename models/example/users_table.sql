{{ config(materialized='table') }}

select
value:"@AccountId" as AccountId,
value:"@CreationDate" as CreationDate,
value:"@DisplayName" as DisplayName,
value:"@DownVotes" as DownVotes,
value:"@Id" as Id,
value:"@LastAccessDate" as LastAccessDate,
value:"@ProfileImageUrl" as ProfileImageUrl,
value:"@Reputation" as Reputation,
value:"@UpVotes" as UpVotes,
value:"@Views" as Views,
value:"@WebsiteUrl" as WebsiteUrl
from "MINI_ASSIGNMENT"."MINIASSIGNMENT1"."USERS", 
lateral flatten(to_array("MINI_ASSIGNMENT"."MINIASSIGNMENT1"."USERS".src_xml:"$"))
