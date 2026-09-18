select
    movie_id as content_key,
    title,
    release_year,
    primary_genre,
    genres
from {{ ref('stg_movies') }}
