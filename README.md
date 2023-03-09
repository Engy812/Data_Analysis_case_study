# Data_Analysis_case_study

   ![download](https://user-images.githubusercontent.com/107117693/223338806-497f771b-4d59-4d2c-bf29-7cfff12620fe.png)


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
 - calculate the number of id partisipants in each file by pavoit table and make sure that is a consistant number in all files '33' except heartrate_seconds_merged and weightLogInfo_merged files that have less number of partisipants
 - convert the type of numerical data into float with 2 digits after point in ailyActivity_merged and dailyIntensities_merged files.
 - convert the 'ActivityHour' column in hourlyCalories_merged, hourlyIntensities_merged, and hourlySteps_merged files into hour formate to compare  activities to each hour in day.
 - convert the 'ActivityDay' column in dailyActivity_merged, dailyCalories_merged, dailyIntensities_merged, dailySteps_merged, and sleepDay_merged files into the name of day in the week formate to compare  activities to each day in week.
 - insert 'day in week ' in both dailyActivity_merged and dailyIntensities_merged and apply day's name formate.

![Screenshot 2023-03-07 134815](https://user-images.githubusercontent.com/107117693/223413814-a3e1077f-adb4-4494-8772-809c595daf1d.png)


## Analyze and Share Phases

### Googlesheets

- using pivote table in hourlyCalories_merged, hourlyIntensities_merged, and hourlySteps_merged to summaries total activities (calories, steps, and intensity) per evry hour in day and collect the number of hours per evry id.


![Screenshot 2023-03-09 112112](https://user-images.githubusercontent.com/107117693/223977460-24473c13-3ac5-48c7-85ea-2d51324b1a7b.png)




### Sql

 - calculate the average  table for each daily activity and the total number of id login record using this sql code. 

```
 select id, avg(TotalSteps) as avg_step ,
 count(id) as total_login,
 avg(TotalDistance) as avg_distance, 
 avg(Calories) as avg_calories
from `case_study.dailyActivities`
group by Id

```

![Screenshot 2023-03-07 075356](https://user-images.githubusercontent.com/107117693/223336614-3d7455a9-970a-44d3-85a8-51e45a37151a.png)


- calculate the average of each activity in per day of week using this code.


```
select day_in_week,
 avg(TotalSteps) as avg_step  
 count(id) as total_login,
 avg(TotalDistance) as avg_distance,
 avg(Calories) as avg_calories 
from `case_study.daily_activity`
group by day_in_week,
```
![Screenshot 2023-03-07 075258](https://user-images.githubusercontent.com/107117693/223336764-de96e1fb-fd78-42a7-b083-1d14476b6971.png)


- calculate the averge and varience of daily intensity level  in minutes per day, aalso, you will find the varience of each level is bigger as the result of the difference between users activities, and the number of duration they take in each level.
- calculate the total average intencity by sum the average of each level and devide it by 4 (the number of level) to get the average intnsity number for each day in week.
```
select trim(dayinWeek)  as day,
 avg(SedentaryMinutes) as avg_seden ,variance(distinct SedentaryMinutes) as var_seden,
 avg(LightlyActiveMinutes) as avg_light ,variance(distinct LightlyActiveMinutes) as var_light,
  avg(FairlyActiveMinutes) as avg_fair  ,variance(distinct FairlyActiveMinutes) as var_fair,
   avg(VeryActiveMinutes) as avg_ver, variance(distinct VeryActiveMinutes) as var_ver
from `case_study.daily_intensity`
group  by dayinWeek
```


![Screenshot 2023-03-09 115144](https://user-images.githubusercontent.com/107117693/223985220-527a7acf-4f66-4e3d-92e0-e0874dd4a90b.png)


- calculate the averge and varience of daily active level distance per day
 ```
select trim(dayinWeek)  as day,
 avg(SedentaryActiveDistance) as avg_seden ,variance(DISTINCT SedentaryActiveDistance) as var_des_seden,
  avg(LightActiveDistance) as avg_light ,variance(DISTINCT LightActiveDistance) as var_des_light,
   avg(ModeratelyActiveDistance) as avg_fair ,variance(DISTINCT ModeratelyActiveDistance) as var_des_modera,
    avg(VeryActiveDistance) as avg_ver,variance(DISTINCT VeryActiveDistance) as var_des_ver
from `case_study.daily_intensity`
group  by dayinWeek

```
![Screenshot 2023-03-07 164212](https://user-images.githubusercontent.com/107117693/223455488-367fbef9-076f-4355-a6ca-41556500c63d.png)



### Sharing phases summary

because of the shortage of data and lack of sum information , i analyzed data debends on weekdays and hours to understand the patterns that user make every day, and this what i have found:

  -the most total number of hours when user consume to monitor there activities are lay between from 600 to 800 hours.


![number of hours per id](https://user-images.githubusercontent.com/107117693/223977508-a63e89f5-5599-4324-98f5-afc445ce3b15.png)


 - despite the low number of intensity and less activity from 12:00 am to 4:00 am m there are still large number of calories 
![SUM of Calories Per Hour (1)](https://user-images.githubusercontent.com/107117693/223221304-69ff0637-a4f9-4059-a902-723751044d33.png)



![SUM of Total Intensity Per Hour](https://user-images.githubusercontent.com/107117693/223220258-cd1fa7a2-cf72-4282-90b0-c6112365bf73.png)



![Total Steps Per Hour](https://user-images.githubusercontent.com/107117693/223220379-12ec5629-64fa-4f4c-a2ef-3cfdd67bf8ef.png)


