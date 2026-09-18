select
    user_id as user_key,
    gender,
    age_band,
    occupation,
    zip
from {{ ref('stg_users') }}
