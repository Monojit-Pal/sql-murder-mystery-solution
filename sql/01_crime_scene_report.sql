-- Step 01: Retrieve the Crime Scene Report

-- Backstory:
-- A crime has taken place and the detective needs your help.
-- The original crime scene report is missing, but some details are remembered:
-- - The crime was a murder
-- - It occurred on January 15, 2018
-- - Location: SQL City
--
-- Objective:
-- Retrieve the corresponding crime scene report from the database
-- using the known details.

SELECT *
FROM crime_scene_report
WHERE type = 'murder'
AND city = 'SQL City'
AND date = 20180115;
