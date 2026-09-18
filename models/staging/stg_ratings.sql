select
    user_id,
    movie_id,
    rating,
    to_timestamp_ntz(rated_ts) as rated_at
from {{ source('raw','ratings') }}
