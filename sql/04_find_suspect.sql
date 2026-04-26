-- Step 04: Track Down the Suspect Using Witness Clues

-- Backstory:
-- The witness interviews provide key clues about the suspect:
-- - The suspect has a "Get Fit Now Gym" bag
-- - Membership ID starts with "48Z"
-- - Only gold members have such bags
-- - The suspect's car plate includes "H42W"
-- - The suspect was at the gym on January 9, 2018

-- Objective:
-- Use these clues to identify the suspect by joining relevant tables.

-- Strategy:
-- 1. Join gym membership data with person details
-- 2. Match membership ID pattern ("48Z%")
-- 3. Filter gold members only
-- 4. Match check-in date (Jan 9, 2018)
-- 5. Match car plate pattern ("H42W")

SELECT p.*, ci.*
FROM drivers_license AS dl
INNER JOIN person AS p ON dl.id = p.license_id
INNER JOIN get_fit_now_member AS gf ON p.id = gf.person_id
INNER JOIN get_fit_now_check_in AS ci ON gf.id = ci.membership_id
WHERE gf.id LIKE '48Z%'
AND gf.membership_status = 'gold'
AND ci.check_in_date = 20180109
AND dl.plate_number LIKE '%H42W%';
