-- Step 03: Analyze Witness Interviews

-- Backstory:
-- Two witnesses have been identified:
-- - Morty Schapiro (lives on Northwestern Dr)
-- - Annabel Miller (lives on Franklin Ave)
--
-- These witnesses may have seen something related to the crime.

-- Objective:
-- Retrieve the interview transcripts of both witnesses
-- to gather clues about the suspect.

-- Strategy:
-- Use the person_id values obtained earlier to fetch their interviews

SELECT *
FROM interview
WHERE person_id IN (14887, 16371);
