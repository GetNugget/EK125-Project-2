begDuration = [18, 17, 0, 14, 20, 20, 0, 23, 0, 24, 12, 23, 0, 21, 0, 22, 21, 16, 0, 18, 23]
beginner = begDuration(begDuration > 0)
intDuration = [24, 30, 0, 38, 0, 26, 29, 28, 32, 0, 35, 0, 34, 25, 40, 0, 32, 22, 0, 40, 31]
intermediate = intDuration(intDuration > 0)
advDuration = [52, 38, 45, 35, 50, 55, 0, 42, 48, 36, 60, 44, 0, 47, 40, 58, 34, 46, 53, 0, 49]
advanced = advDuration(advDuration > 0)

subplot(3,1,1)
histogram(beginner, 10)
title("Beginner Workout Duration Distribution")
ylabel("Frequency")

subplot(3,1,2)
histogram(intermediate, 10)
title("Intermediate Workout Duration Distribution")
ylabel("Frequency")

subplot(3,1,3)
histogram(advanced, 10)
title("Advanced Workout Duration Distribution")
ylabel("Frequency")
xlabel("Workout Duration (minutes)")

