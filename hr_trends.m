xValues = [1:21]
yValues = [142, 135, 78, 140, 145, 130, 74, 146, 75, 133, 127, 136, 71, 147, 73, 128, 127, 137, 76, 146, 134;
            139, 146, 74, 135, 80, 137, 157, 138, 130, 73, 162, 68, 130, 159, 152, 71, 142, 153, 70, 158, 152; 
            172, 150, 165, 155, 168, 175, 63, 160, 170, 148, 178, 162, 64, 168, 158, 176, 150, 165, 172, 63, 168];
graph = plot(xValues, yValues)
% Creates a line graph 
graph(1).Color = "b";
% Makes the line for beginner data blue
graph(2).Color = 'g';
% Makes the line for the intermediate data green
graph(3).Color = 'y';
% Makes the line for the advanced data yellow
xlabel("Day (1-21)")
ylabel("Post-Workout Heart Rate (bpm)")
title("Post-Workout Heart Rate for Each Athlete Each Day")
legend("Beginner", "Intermediate", "Advanced")
saveas(gcf, fullfile("..", "Results", "Figures", "HR_Trends.png"))
% Saves to the figures directory inside the results directory as a png
