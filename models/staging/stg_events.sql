select
    payload:event_id::string        as event_id,
    payload:user_id::int            as user_id,
    payload:movie_id::int           as movie_id,
    to_timestamp_ntz(payload:event_ts::string, 'YYYY-MM-DD"T"HH24:MI:SS') as event_ts,
    payload:device::string          as device,
    payload:country::string         as country,
    payload:runtime_seconds::int    as runtime_seconds,
    payload:watch_seconds::int      as watch_seconds,
    payload:completion_pct::float   as completion_pct,
    payload:event_type::string      as event_type
from {{ source('raw','events') }}
