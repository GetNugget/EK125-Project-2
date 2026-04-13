%{
main_analysis - the main analysis script that has all the calculations
for the summary table and plots 

Cody Phothisane - Data Manager (Part 1)
Jason Nguyen - Algorithm Developer (Part 2)
Albert Liu - Vizualization Specialist (Part 3) 

Date: April 2026

Description: The script sets everything up by using clear and clc. It then
loads the data from the csv files of the workouts the athletes did. After
that, it sets up the variables used for the later calculations. It then
loops through each workout to find the zone it is placed under as well as
finding the resting time of each workout. Further calculations were made
for the plots and then a summary, time table, and workspace variable analysis 
sheet based off the workouts was made and exported to the results directory. 

Inputs: The 3 athlete csv files that contains their workouts
(Athlete_Beginner.csv, Athlete_Intermediate.csv, Athlete_Advanced.csv)

Outputs: The Summary Table (the athletes and their average heart rate,
total minutes working out, and consistency), the time table (Athletes and 
how much time they put into each workout zone), and the workspace variable
analysis (all the calculations and variables with values)

%}

%{
Setup Section 
%}

clear; clc;

%{
Data Loading Section
%}

beginner_data = readtable(fullfile('..','Data','Athletes','Athlete_Beginner.csv'));
intermediate_data = readtable(fullfile('..','Data','Athletes','Athlete_Intermediate.csv'));
advanced_data = readtable(fullfile('..','Data','Athletes','Athlete_Advanced.csv'));

%{
Analysis Section
%}

%Variable Set Up for Later Calculations
beginner_zones = [];
intermediate_zones = [];
advanced_zones = [];

beginner_resting_time = 0;
beginner_light_time = 0;
beginner_moderate_time = 0;
beginner_vigorous_time = 0;

intermediate_resting_time = 0;
intermediate_light_time = 0;
intermediate_moderate_time = 0;
intermediate_vigorous_time = 0;

advanced_resting_time = 0;
advanced_light_time = 0;
advanced_moderate_time = 0;
advanced_vigorous_time = 0;

beginner_recovery_rates = [];
intermediate_recovery_rates = [];
advanced_recovery_rates = [];


%Looping through each workout in the beginner data
for i = 1:height(beginner_data)
    
    %Calculating the zones each workout falls under and finding the resting
    %time of each workout
    if beginner_data.PostWorkoutHR(i) == beginner_data.PreWorkoutHR(i)
        beginner_zones = [beginner_zones; "Resting"];
        beginner_resting_time = beginner_resting_time + beginner_data.Duration(i);

    elseif beginner_data.PostWorkoutHR(i) > 100 && beginner_data.PostWorkoutHR(i) <= 130
        beginner_zones = [beginner_zones; "Light"];
        beginner_light_time = beginner_light_time + beginner_data.Duration(i);

    elseif beginner_data.PostWorkoutHR(i) > 130 && beginner_data.PostWorkoutHR(i) <= 160
        beginner_zones = [beginner_zones; "Moderate"];
        beginner_moderate_time = beginner_moderate_time + beginner_data.Duration(i);
        
    else 
        beginner_zones = [beginner_zones; "Vigorous"];
        beginner_vigorous_time = beginner_vigorous_time + beginner_data.Duration(i);
    end

    %Finding recovery rates of each beginner workout (excluding rest days)
    if beginner_data.PostWorkoutHR(i) ~= beginner_data.PreWorkoutHR(i)
        beginner_recovery_rates = [beginner_recovery_rates; beginner_data.PostWorkoutHR(i) - beginner_data.PreWorkoutHR(i)];
    end

end

%Looping through each workout in the intermediate data
for i = 1:height(intermediate_data)

    %Calculating the zones each workout falls under and finding the resting
    %time of each workout
    if intermediate_data.PostWorkoutHR(i) == intermediate_data.PreWorkoutHR(i)
        intermediate_zones = [intermediate_zones; "Resting"];
        intermediate_resting_time = intermediate_resting_time + intermediate_data.Duration(i);

    elseif intermediate_data.PostWorkoutHR(i) > 100 && intermediate_data.PostWorkoutHR(i) <= 130
        intermediate_zones = [intermediate_zones; "Light"];
        intermediate_light_time = intermediate_light_time + intermediate_data.Duration(i);
    
    elseif intermediate_data.PostWorkoutHR(i) > 130 && intermediate_data.PostWorkoutHR(i) <= 160
        intermediate_zones = [intermediate_zones; "Moderate"];
        intermediate_moderate_time = intermediate_moderate_time + intermediate_data.Duration(i);
    
    else 
        intermediate_zones = [intermediate_zones; "Vigorous"];
        intermediate_vigorous_time = intermediate_vigorous_time + intermediate_data.Duration(i);
    end

    %Finding recovery rates of each intermediate workout (excluding rest days)
    if intermediate_data.PostWorkoutHR(i) ~= intermediate_data.PreWorkoutHR(i)
        intermediate_recovery_rates = [intermediate_recovery_rates; intermediate_data.PostWorkoutHR(i) - intermediate_data.PreWorkoutHR(i)];
    end

end

%Looping through each workout in the advanced data
for i = 1:height(advanced_data)

    %Calculating the zones each workout falls under and finding the resting
    %time of each workout
    if advanced_data.PostWorkoutHR(i) == advanced_data.PreWorkoutHR(i)
        advanced_zones = [advanced_zones; "Resting"];
        advanced_resting_time = advanced_resting_time + advanced_data.Duration(i);

    elseif advanced_data.PostWorkoutHR(i) > 100 && advanced_data.PostWorkoutHR(i) <= 130
        advanced_zones = [advanced_zones; "Light"];
        advanced_light_time = advanced_light_time + advanced_data.Duration(i);
    
    elseif advanced_data.PostWorkoutHR(i) > 130 && advanced_data.PostWorkoutHR(i) <= 160
        advanced_zones = [advanced_zones; "Moderate"];
        advanced_moderate_time = advanced_moderate_time + advanced_data.Duration(i);

    else 
        advanced_zones = [advanced_zones; "Vigorous"];
        advanced_vigorous_time = advanced_vigorous_time + advanced_data.Duration(i);
    end

    %Finding recovery rates of each intermediate workout (excluding rest days)
    if advanced_data.PostWorkoutHR(i) ~= advanced_data.PreWorkoutHR(i)
        advanced_recovery_rates = [advanced_recovery_rates; advanced_data.PostWorkoutHR(i) - advanced_data.PreWorkoutHR(i)];
    end

end


%Creating the time table for the workouts by creating the columns first and
%then using table()
Athletes = ["Athlete 1"; "Athlete 2"; "Athlete 3"];
Resting = [beginner_resting_time; intermediate_resting_time; advanced_resting_time];
Light = [beginner_light_time; intermediate_light_time; advanced_light_time];
Moderate = [beginner_moderate_time; intermediate_moderate_time; advanced_moderate_time];
Vigorous = [beginner_vigorous_time; intermediate_vigorous_time; advanced_vigorous_time];
time_table = table(Athletes, Resting, Light, Moderate, Vigorous)

%Getting the indices of each workout that's not a rest day for accurate
%results
valid_B = beginner_data.Duration > 0;
valid_I = intermediate_data.Duration > 0;
valid_A = advanced_data.Duration > 0;

%Average post workout HR using the mean of the valid data
beginner_avg_HR = round(mean(beginner_data.PostWorkoutHR(valid_B)));
intermediate_avg_HR = round(mean(intermediate_data.PostWorkoutHR(valid_I)));
advanced_avg_HR = round(mean(advanced_data.PostWorkoutHR(valid_A)));

%Duration of the workouts in total using the sum of the duration column
beginner_duration = sum(beginner_data.Duration);
intermediate_duration = sum(intermediate_data.Duration);
advanced_duration = sum(advanced_data.Duration);

%Mean of the recovery rates calculated in the loop for each level 
beginner_mean_recovery_rate = mean(beginner_recovery_rates);
intermediate_mean_recovery_rate = mean(intermediate_recovery_rates);
advanced_mean_recovery_rate = mean(advanced_recovery_rates);

%The mean duration of the workouts
beginner_mean_duration = mean(beginner_data.Duration(valid_B));
intermediate_mean_duration = mean(intermediate_data.Duration(valid_I));
advanced_mean_duration = mean(advanced_data.Duration(valid_A));

%The standard deviation of the valid intensity values in the data
beginner_std_intensity = round(std(beginner_data.Intensity(valid_B)),1);
intermediate_std_intensity = round(std(intermediate_data.Intensity(valid_I)),1);
advanced_std_intensity = round(std(advanced_data.Intensity(valid_A)),1);

%The total amound of workouts (excluding rest)
beginner_total_workouts = sum(valid_B);
intermediate_total_workouts = sum(valid_I);
advanced_total_workouts = sum(valid_A);

summary_table = table(["Beginner"; "Intermediate"; "Advanced"], [beginner_avg_HR; intermediate_avg_HR; advanced_avg_HR], [beginner_duration; intermediate_duration; advanced_duration], [beginner_std_intensity; intermediate_std_intensity; advanced_std_intensity], 'VariableNames', {'Athlete', 'AvgHeartRate', 'TotalMinutes', 'Consistency'});

%{
Results Saving Section
%}
writetable(summary_table, fullfile('..','Results','summary_statistics.csv'))
save(fullfile('..','Results','analysis_results.mat'))
