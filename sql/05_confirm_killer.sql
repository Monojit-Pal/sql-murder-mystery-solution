-- Step 05: Confirm the Killer

-- Backstory:
-- The previous step narrowed down the suspect to Jeremy Bowers.
-- To confirm whether he is the actual killer, we need to check
-- his interview for additional details.

-- Objective:
-- Retrieve the interview of the identified suspect to confirm involvement
-- and gather information about who hired him.

-- Strategy:
-- Use the person_id obtained from the previous step (67318)
-- to fetch the corresponding interview record.

SELECT *
FROM interview
WHERE person_id = 67318;
