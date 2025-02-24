select
seq4() AS teamid
, school
, nickname
, abrev
, conference
, location
, home_venue
 from {{ source('seeds', 'seed_ncaam_schools') }} seeds 
