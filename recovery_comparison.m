run("main_analysis.m")
xValues = categorical(["Beginner","Intermediate","Advanced"]);
xValues = reordercats(xValues, ["Beginner","Intermediate","Advanced"]);
yValues = [beginner_mean_recovery_rate, intermediate_mean_recovery_rate, advanced_mean_recovery_rate];
hold on
b1 = bar(xValues(1), yValues(1), 'b');
b2 = bar(xValues(2), yValues(2), 'g');
b3 = bar(xValues(3), yValues(3), 'r');
hold off
xlabel("Athletes")
ylabel("Average Heart Rate Increase (bpm)")
title("Average Heart Rate Increase for Each Athlete")
legend([b1 b2 b3], "Beginner", "Intermediate", "Advanced")
saveas(gcf, fullfile("..", "Results", "Figures", "Recovery_Comparison"))
