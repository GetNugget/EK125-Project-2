Fitness Tracker Analysis - Option 1

Roles:

Cody Phothisane - Data Manager
Jason Nguyen - Algorithm Developer
Albert Liu - Visualization Specialist

Directory Structure:

We have a main directory for our project. Inside, we have 3 sub directories. The first sub directory contains all of our data for each of the three athletes. There will be three spreadsheets containing the exercise type, pre workout heart rate, post workout heart rate, duration, and intensity. There will also be a file that explains what each profile is (the beginner, intermediate, and advanced athlete). The second sub directory contains all the scripts which is essentially all of our code. The main script will contain the calculations needed for the plots as well as the summary table, including average heart rate, average intensity, etc. The code for creating all the plots is also in the scripts sub directory. They include importing the main script for the variables calculated there and the formatting for the plots. The third sub directory contains the results which basically means all the outputs of whatever code is run from the script subdirectory. This includes all the plots in png format, and all the tables created from the main script such as the summary table. 

Run Instructions:

Make sure to run the main_analysis.m file first. Run each script separately. Make sure the script fully runs, and before running the next figure, make sure to close the plot that was previously generated so that it doesn't simply get overwritten by the current plot.

Key Findings:

The advanced and intermediate athletes had higher standard deviations for their consistencies compared to the beginner which means that while they may have had higher intensities, the intensities varied while the beginner may have had lower intensities, but they were more consistent
The beginner had the least workout duration, the intermediate athlete had higher workout duration, and the advanced athlete had the highest workout duration
The beginner had the lowest average heart rate, the intermediate athlete had a higher average heart rate, and the advanced athlete had the highest workout duration
The beginner had the highest number of light workouts, the intermediate athlete had the highest moderate workouts, and the advanced athlete had the highest vigorous workouts

Workspace Contents:
	

Reflection Questions:

1. File management was challenging due to having to create directories and knowing how to move files into the newly created directories. Once the files were properly organized, the outputs were going more smoothly and the code was able to produce the outputs we wanted. We used many files types in the project that all had different purposes. Files with .csv were used as the raw data input which can be imported into MATLAB easier, files with .m were MATLAB files that can run code and produce outputs, and .png files for the graph pictures. 

2. There was a lot of repetition from doing the same thing with the three different leveled athletes so I found just copying and pasting previous code and then changing the variable names to match was efficient instead of having to write everything over and over again. Also just sectioning my code so that I could just debug a small section was helpful for fixing bugs. Many comments were added and a header to ensure it was well documented.

3. I made sure to use different colors to represent different categories whether it would be athletes, heart rate trends, or the different work out zones. A legend was also very important to make it very quick and easy for the person looking at the graphs to see what each color or what each bar represented. A clear and concise title and axis labels were also very important to quickly convey the meaning of a graph and what each axis represented. The differing charts were also useful to clearly convey what the graphs represented. For example for the duration distribution graph, I needed to use a histogram which is very useful for showing distributions. For the graphs comparing different categories such as the zone comparison, bar graphs were most useful since bar graphs make it easy to quickly compare the different categories to see which bars are higher or lower than the others. For the heart rate trends, a line graph was most useful since they are useful for seeing the trends (the spikes and dips) of the heart rates over a period of time (the 21 days).

4. The coding skills are very useful. Many times you will have to organize many documents and files like we have had to. Being able to use directories to organize, and being able to plot data sets to figure out trends are very important engineering skills. The modular design is very common in real engineering workflows. For example to send a rocket to space there needs to be multiple teams that work on different tasks that are intertwined with each other. Similarly to how the algorithm developer needed the data from the data manager, the visualization specialist needed the algorithm developer’s calculations and variables, a real engineering team would have people that need to work on the code that can send the ship to space and then people that need to make the physical rocket ship. Then, the code and math has to fit the physical limitations of the rocket ship built.
