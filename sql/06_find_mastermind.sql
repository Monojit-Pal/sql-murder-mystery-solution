-- Step 06: Uncover the Mastermind

-- Backstory:
-- The killer (Jeremy Bowers) revealed key details about the person who hired him:
-- - A wealthy woman
-- - Height between 65" and 67"
-- - Red hair
-- - Drives a Tesla Model S
-- - Attended the SQL Symphony Concert 3 times in December 2017

-- Objective:
-- Identify the mastermind by combining physical traits,
-- vehicle information, and event attendance data.

-- Strategy:
-- 1. Identify people who attended the SQL Symphony Concert 3+ times in Dec 2017
-- 2. Join with person and drivers_license tables
-- 3. Apply filters based on appearance and car details

WITH concert_attendees AS (
    SELECT 
        person_id,
        COUNT(*) AS visits
    FROM facebook_event_checkin
    WHERE date BETWEEN 20171201 AND 20171231
    AND event_name = 'SQL Symphony Concert'
    GROUP BY person_id
    HAVING COUNT(*) >= 3
)

SELECT p.*, ca.visits
FROM drivers_license AS dl
INNER JOIN person AS p ON dl.id = p.license_id
INNER JOIN concert_attendees AS ca ON ca.person_id = p.id
WHERE dl.hair_color = 'red'
AND dl.height BETWEEN 65 AND 67
AND dl.car_make = 'Tesla'
AND dl.car_model = 'Model S'
AND dl.gender = 'female';
