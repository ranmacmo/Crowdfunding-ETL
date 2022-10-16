-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 

SELECT cf_id, backers_count
FROM campaign
WHERE outcome = 'live'
ORDER BY backers_count DESC; 

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT backers.cf_id, count(backers.backer_id) 
FROM campaign 
INNER JOIN backers ON backers.cf_id = campaign.cf_id
WHERE campaign.outcome = 'live'
GROUP BY backers.cf_id
ORDER BY count(*) DESC; 


-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 

SELECT first_name, last_name, email, 
	goal-pledge AS "Remaining Goal Amount"
INTO email_contacts_remaining_goal_amount
FROM contacts
INNER JOIN campaign ON campaign.contact_id = contacts.contact_id
WHERE campaign.outcome = 'live'
ORDER BY "Remaining Goal Amount" DESC; 

-- Check the table
SELECT * 
FROM email_contacts_remaining_goal_amount
ORDER BY "Remaining Goal Amount" DESC; 


-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 

---------------------------------------------
--- NOTE: Instruction are NOT very clear on sort order 
--- in order to match the screenshot in the material 
---  SOMEONE NEEDS TO PROOF THESE EXERCISES
--- The screenshot in material is clearly NOT in email descending order.. 
--- it is in last_name, first_name ASC and even then it has a error where 
--- a row is switched...

SELECT bk.email, bk.first_name, bk.last_name, 
	   cp.cf_id, cp.company_name, cp.description, cp.end_date, (cp.goal - cp.pledge) AS "Left of Goal"
INTO email_backers_remaining_goal_amount
FROM backers bk
INNER JOIN campaign cp ON cp.cf_id = bk.cf_id
WHERE cp.outcome = 'live'
ORDER BY bk.last_name, bk.first_name;  

-- Check the table
SELECT * 
FROM email_backers_remaining_goal_amount
