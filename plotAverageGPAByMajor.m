% Author Name: Ethan Warminsky
% Email: warmin16@rowan.edu 
% Created On: 11/11/2024
% Updated On: 11/13/2024
% Updated By: Ethan Warminsky 
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Student Database 
% Submission Date: [11/13/24]
% All rights are reserved - GNU License

% Start of Average GPA Plot Code

% Generates an average GPA plot by major
function plotAverageGPAByMajor(students)
    majors = unique({students.Major});
    avgGPA = arrayfun(@(m) mean([students(strcmp({students.Major}, m)).GPA]), majors);

    % Creates and defines the plot
    bar(avgGPA);
    set(gca, 'XTickLabel', majors);
    title('Average GPA by Major');
    xlabel('Major');
    ylabel('Average GPA');
end

% End of Average GPA Plot Code
