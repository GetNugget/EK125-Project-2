run("main_analysis.m")
xValues = ["Beginner", "Intermediate", "Advanced"]
yValues = [Resting, Light, Moderate, Vigorous];
graph = bar(xValues, yValues)
% Makes a bar graph that has anywhere from 0 - 4 bars within each athlete section representing the different zones
graph(1).FaceColor = "b";
% Makes the resting bars blue
graph(2).FaceColor = "g";
% Makes the light bars green
graph(3).FaceColor = "r";
% Makes the moderate bars red
graph(4).FaceColor = "y";
% Makes the vigorous bars yellow
xlabel("Athletes")
ylabel("Duration")
title("Heart Rate Duration for Each Athlete in Each Heart Rate Zone")
legend("Resting", "Light", "Moderate", "Vigorous")
% Makes a legend labeling what colors correspond to what zone
saveas(gcf, fullfile("..", "Results", "Figures", "Zone_Comparison.png"))
% Saves to the figures directory inside the results directory as a png
