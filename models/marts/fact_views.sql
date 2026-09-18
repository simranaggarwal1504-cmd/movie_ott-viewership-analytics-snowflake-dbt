select
    event_id,
    user_id  as user_key,
    movie_id as content_key,
    cast(event_ts as date) as date_key,
    event_ts,
    device,
    country,
    watch_seconds,
    completion_pct,
    event_type
from {{ ref('stg_events') }}
