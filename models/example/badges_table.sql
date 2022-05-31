{{ config(materialized='table') }}

select
value:"@Class" as Class,
value:"@Date"::Timestamp as Date,
value:"@Id" as Id,
value:"@Name" as Name,
value:"@TagBased"::Boolean as TagBased,
value:"@UserId" as UserId
from "MINI_ASSIGNMENT"."MINIASSIGNMENT1"."BADGES", 
lateral flatten(to_array("MINI_ASSIGNMENT"."MINIASSIGNMENT1"."BADGES".src_xml:"$"))