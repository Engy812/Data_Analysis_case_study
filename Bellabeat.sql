-- build average summary table for each id using this sql code
select id, avg(TotalSteps) as avg_step ,
 count(id) as total_login,
 avg(TotalDistance) as avg_distance, 
 avg(Calories) as avg_calories
from `case_study.daily_activity`
group by Id

-- create summary for each activity in per day in week using this code.
select day_in_week,
 avg(TotalSteps) as avg_step,
 count(id) as total_login,
 avg(TotalDistance) as avg_distance,
 avg(Calories) as avg_calories 
from `case_study.daily_activity`
group by day_in_week



-- collect the averge level of daily intensity in minutes per day
select trim(dayinWeek)  as day,
 avg(SedentaryMinutes) as avg_seden ,variance(distinct SedentaryMinutes) as var_seden,
 avg(LightlyActiveMinutes) as avg_light ,variance(distinct LightlyActiveMinutes) as var_light,
  avg(FairlyActiveMinutes) as avg_fair  ,variance(distinct FairlyActiveMinutes) as var_fair,
   avg(VeryActiveMinutes) as avg_ver, variance(distinct VeryActiveMinutes) as var_ver
from `case_study.daily_intensity`
group  by dayinWeek


-- collect the averge level of daily active distance per day
select trim(dayinWeek)  as day,
 avg(SedentaryActiveDistance) as avg_seden ,variance(DISTINCT SedentaryActiveDistance) as var_des_seden,
  avg(LightActiveDistance) as avg_light ,variance(DISTINCT LightActiveDistance) as var_des_light,
   avg(ModeratelyActiveDistance) as avg_fair ,variance(DISTINCT ModeratelyActiveDistance) as var_des_modera,
    avg(VeryActiveDistance) as avg_ver,variance(DISTINCT VeryActiveDistance) as var_des_ver
from `case_study.daily_intensity`
group  by dayinWeek
