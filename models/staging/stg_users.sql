select
    user_id,
    gender,
    case age
        when 1 then 'Under 18' when 18 then '18-24' when 25 then '25-34'
        when 35 then '35-44' when 45 then '45-49' when 50 then '50-55'
        when 56 then '56+' else 'Unknown' end as age_band,
    case occupation
        when 0 then 'Other' when 1 then 'Academic/Educator' when 2 then 'Artist'
        when 3 then 'Clerical/Admin' when 4 then 'College/Grad Student' when 5 then 'Customer Service'
        when 6 then 'Doctor/Health Care' when 7 then 'Executive/Managerial' when 8 then 'Farmer'
        when 9 then 'Homemaker' when 10 then 'K-12 Student' when 11 then 'Lawyer'
        when 12 then 'Programmer' when 13 then 'Retired' when 14 then 'Sales/Marketing'
        when 15 then 'Scientist' when 16 then 'Self-Employed' when 17 then 'Technician/Engineer'
        when 18 then 'Tradesman/Craftsman' when 19 then 'Unemployed' when 20 then 'Writer'
        else 'Unknown' end as occupation,
    zip
from {{ source('raw','users') }}
