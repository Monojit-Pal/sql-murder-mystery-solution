-- Step 02: Identify and Locate Witnesses

-- Backstory:
-- The crime scene report reveals that there are two witnesses:
-- - The first witness lives at the last house on "Northwestern Dr"
-- - The second witness is named Annabel and lives somewhere on "Franklin Ave"

-- Objective:
-- Find the identities and details of both witnesses from the person table.

-- 1st Witness: Last house on Northwestern Dr
-- Strategy: Sort addresses in descending order and pick the highest (last house)
SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1;

-- 2nd Witness: Annabel on Franklin Ave
-- Strategy: Filter by street and match name containing 'Annabel'
SELECT *
FROM person
WHERE address_street_name = 'Franklin Ave'
AND name LIKE 'Annabel%';
