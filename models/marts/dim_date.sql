select
    d as date_key,
    year(d)              as year,
    month(d)             as month,
    monthname(d)         as month_name,
    to_char(d,'YYYY-MM') as year_month,
    dayname(d)           as day_name,
    weekofyear(d)        as week_of_year,
    quarter(d)           as quarter
from (
    select dateadd(day, seq4(), '2025-09-01')::date as d
    from table(generator(rowcount => 420))
)
