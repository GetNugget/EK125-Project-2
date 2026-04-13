run("main_analysis.m")
xValues = ["Beginner", "Intermediate", "Advanced"]
yValues = [Resting, Light, Moderate, Vigorous];
graph = bar(xValues, yValues)
graph(1).FaceColor = "b";
graph(2).FaceColor = "g";
graph(3).FaceColor = "r";
graph(4).FaceColor = "y";
xlabel("Athletes")
ylabel("Duration")
title("Heart Rate Duration for Each Athlete in Each Heart Rate Zone")
legend("Resting", "Light", "Moderate", "Vigorous")
saveas(gcf, fullfile("..", "Results", "Figures", "Zone_Comparison"))
