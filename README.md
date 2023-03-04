# Data_Analysis_case_study


## Ask phases

### (Bellabeat)_How-Can-a-Wellness-Technology-Company-Play-It-Smart?
Company: Bellabeat is a high-tech manufacturer of health-focused products for women.. Urška Sršen, cofounder and Chief Creative Officer of Bellabeat, believes that analyzing smart
device fitness data could help unlock new growth opportunities for the company.

My role: As a data analyst who responsible for collecting, analyzing, and reporting data that helps guide Bellabeat’s marketing strategy. 

### Business_task:
 analyze smart device usage data in order to gain insight into how people are already using their smart devices.and provide recommendations for how these trends can inform Bellabeat marketing strategyby answering the following questions:

  1. What are some trends in smart device usage?
  2. How could these trends apply to Bellabeat customers?
  3. How could these trends help influence Bellabeat marketing strategy?

## Prepare phase
### Data usage: FitBit Fitness Tracker Data (CC0: Public Domain, dataset made available through Mobius)

### Data License: 
this data is public under CC0: Public Domain in which The person who associated a work with this deed has dedicated the work to the public domain by waiving all of his or her rights to the work worldwide under copyright law, including all related and neighboring rights, to the extent allowed by law.

### Data summary
fitBit fitness tracker data : this is public dataset on kaggle include 18 csv files generated between March 12,2016 and May 12,2016  made available through Mobius. its stored in a folder on computer devise . it may include bias and credability as it has  some limitation (only from thirty to thirtyfour eligible Fitbit users), ther is no geographicall data about users and short time period that data covers.

Data files were sorted ocoarding to activities timeframe into subfolders (Day, Hours, and Mintes). dailyActivity_merged, dailyCalories_merged, dailyIntensities_merged, dailySteps_merged, sleepDay_merged, and weightLogInfo_merged were stored in day's folder, hourlyCalories_merged, hourlyIntensities_merged, and hourlySteps_merged were stored in hour's folder, and heartrate_seconds_merged, minuteCaloriesNarrow_merged, minuteIntensitiesNarrow_merged, minuteMETsNarrow_merged, minuteSleep_merged, and minuteStepsNarrow_merged were stored in minutes' folder. 


## Data Processing

### Google spreadsheets 
 - make sure that data is free from duplicated
 - the number of id partisipants are the same (33) except heartrate_seconds_merged and weightLogInfo_merged files have less number of partisipants
 - convert the type of numerical data into float with 2 digits after point in ailyActivity_merged and dailyIntensities_merged files

### Sql
 - build average summary table for each id using this sql code 

```
 select   id, avg(TotalSteps) as avg_step ,
 count(id) as total_login,
 avg(TotalDistance) as avg_distance, 
 avg(Calories) as avg_calories
from `case_study.dailyActivities`
group by Id

```
