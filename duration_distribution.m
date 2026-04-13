begDuration = [18, 17, 0, 14, 20, 20, 0, 23, 0, 24, 12, 23, 0, 21, 0, 22, 21, 16, 0, 18, 23]
beginner = begDuration(begDuration > 0)
% Extracts the data from begDuration that is greater than 0 which represents rest days
intDuration = [24, 30, 0, 38, 0, 26, 29, 28, 32, 0, 35, 0, 34, 25, 40, 0, 32, 22, 0, 40, 31]
intermediate = intDuration(intDuration > 0)
% Extracts the data from intDuration that is greater than 0 which represents rest days
advDuration = [52, 38, 45, 35, 50, 55, 0, 42, 48, 36, 60, 44, 0, 47, 40, 58, 34, 46, 53, 0, 49]
advanced = advDuration(advDuration > 0)
% Extracts the data from advDuration that is greater than 0 which represents rest days

subplot(3,1,1)
histogram(beginner, 10)
% Creates a histogram with the beginner data showing the distribution
title("Beginner Workout Duration Distribution")
ylabel("Frequency")

subplot(3,1,2)
histogram(intermediate, 10)
% Creates a histogram with the intermediate data showing the distribution
title("Intermediate Workout Duration Distribution")
ylabel("Frequency")

subplot(3,1,3)
histogram(advanced, 10)
% Creates a histogram with the advanced data showing the distribution
title("Advanced Workout Duration Distribution")
ylabel("Frequency")
xlabel("Workout Duration (minutes)")

saveas(gcf, fullfile("..", "Results", "Figures", "Duration_Distribution.png"))
% Saves to the figures directory inside the results directory as a png
