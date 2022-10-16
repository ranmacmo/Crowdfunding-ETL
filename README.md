# Crowdfunding-ETL

## Purpose
Exercise challenge two demonstrate extracting data cleaning data creating an ERD and table schema and loading data. 

## Files
### Output Data Files (data) 
- backers_extract.csv 
- backers.csv 
- campaign.csv 
- category.csv 
- subcategory.csv 
- contacts.csv 
- email_backers_remaining_goal_amount.csv 
- email_contacts_remaining_goal_amount.csv 

### Input Data Files (resource) 
- backer_info.csv 
- contacts_string_data.csv 
- crowdfunding.xlsx 
 
 ### Code Files 
 - crowdfunding_db_relationships.png 
 - crowdfunding_db_schema.sql 
 - crowdfuning_SQL_Analysis.sql 
 - Extract-Transform_final_code.ipybn 

## Issues to note - SQL challenge - directions not clear 

The SQL exercise  for the email_backers_remaining_goal_amount asks for a sort of `email address of each backer in descending order`. The example shown clearly does not have sort of that. It appears to have a sort of: 
- last name 
- first name 

BUT even that is not completely accurate - see the markup up below... 
 
![Sort Order Issue](Sort%20Order%20Backers%20Example.png)