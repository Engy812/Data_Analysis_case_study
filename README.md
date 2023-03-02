# Data_Analysis_case_study
## (Bellabeat)_How-Can-a-Wellness-Technology-Company-Play-It-Smart?
Company: Bellabeat is a high-tech manufacturer of health-focused products for women.. Urška Sršen, cofounder and Chief Creative Officer of Bellabeat, believes that analyzing smart
device fitness data could help unlock new growth opportunities for the company.

My role: As a data analyst who responsible for collecting, analyzing, and reporting data that helps guide Bellabeat’s marketing strategy. 

## Business_task:
 analyze smart device usage data in order to gain insight into how people are already using their smart devices.and provide recommendations for how these trends can inform Bellabeat marketing strategyby answering the following questions:

  1. What are some trends in smart device usage?
  2. How could these trends apply to Bellabeat customers?
  3. How could these trends help influence Bellabeat marketing strategy?

## Data_Source
fitBit fitness tracker data : this is public dataset on kaggle include 18 csv files generated between March 12,2016 and May 12,2016  made available through Mobius. its stored in a folder on computer devise . it may include bias and credability as it has  some limitation (only from thirty to thirtyfour eligible Fitbit users), ther is no geographicall data about users and short time period that data covers.


## Data Process & Cleaning

Data files were devided ocoarding to activities time into (Day, Hours, and Mintes), than using Google sheets, Bigquery, Tablue, and python alongside with data analysis phases (ask, prepare, proces, analyze, act, and share) .


### Google spreadsheets & SQL
- first seperate daily activities data into one folder then importing it into google sheets and ensuring that data in merged file are matcheing with data in individual files.
- using functions like sum(), len(), and vlookup(), as well as tools like conditional formating to make sure that data are free from dublicate.
- collect activities data measured in mintes into one folder than importing them to bigquery into database called "case_study"
- collect activities data measured in hours into one folder than importing them to bigquery into database called "case_study"


