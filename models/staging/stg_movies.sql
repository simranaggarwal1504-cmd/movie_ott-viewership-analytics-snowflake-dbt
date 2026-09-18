select
    movie_id,
    regexp_replace(title, '\\s*\\(\\d{4}\\)\\s*$', '')                  as title,
    try_to_number(regexp_substr(title, '\\((\\d{4})\\)', 1, 1, 'e', 1)) as release_year,
    genres,
    split_part(genres, '|', 1)                                          as primary_genre
from {{ source('raw','movies') }}
