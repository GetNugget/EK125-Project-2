run("main_analysis.m")
figure('Position', [100, 100, 1200, 800])

subplot(2,2,1)
xValues = ["Beginner", "Intermediate", "Advanced"]
yValues = [beginner_duration; intermediate_duration; advanced_duration]
graph = bar(xValues, yValues)
graph.FaceColor = 'flat';
graph.CData = [0 0 1; 0 1 0; 1 1 0];
title("Athlete Total Workout Duration")
ylabel("Total Workout Duration (minutes)")
xlabel("Athlete")

subplot(2,2,2)
begIntensity = [3, 3, 0, 5, 4, 3, 0, 6, 0, 4, 5, 6, 0, 6, 0, 3, 4, 5, 0, 6, 4]
beginner = mean(begIntensity(begIntensity > 0))
intIntensity = [6, 7, 0, 6, 0, 6, 5, 7, 8, 0, 7, 0, 5, 6, 8, 0, 5, 8, 0, 7, 6]
intermediate = mean(intIntensity(intIntensity > 0))
advIntensity = [9, 7, 8, 7, 9, 10, 0, 8, 9, 7, 10, 8, 0, 9, 7, 10, 7, 8, 9, 0, 7]
advanced = mean(advIntensity(advIntensity > 0))
xValues = ["Beginner", "Intermediate", "Advanced"]
yValues = [beginner; intermediate; advanced]
graph = bar(xValues, yValues)
graph.FaceColor = 'flat';
graph.CData = [0 0 1; 0 1 0; 1 1 0];
title("Average Workout Intensity")
ylabel("Average Intensity")
xlabel("Athlete")

subplot(2,2,3)
xValues = ["Beginner", "Intermediate", "Advanced"]
yValues = [beginner_total_workouts; intermediate_total_workouts; advanced_total_workouts]
graph = bar(xValues, yValues)
graph.FaceColor = 'flat';
graph.CData = [0 0 1; 0 1 0; 1 1 0];
title("Total Workouts Completed")
ylabel("Total Workouts")
xlabel("Athlete")

subplot(2,2,4)
xValues = ["Beginner", "Intermediate", "Advanced"];
yValues = [beginner_std_intensity; intermediate_std_intensity; advanced_std_intensity];
graph = bar(xValues, yValues);
graph.FaceColor = 'flat';
graph.CData = [0 0 1; 0 1 0; 1 1 0];
title("Athlete Training Consistency")
ylabel("Training Consistency")
xlabel("Athlete")

saveas(gcf, fullfile("..", "Results", "Figures"))