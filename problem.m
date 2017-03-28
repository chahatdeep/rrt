%% Defining all nodes, goal and other properties in the space:

function [start_node, goal, r_goal, epsilon] = problem(problem_no)

if problem_no == 1
    start_node = [75,85];
    goal = [100 0];
    r_goal = 20;
    epsilon = 10;
end

if problem_no == 2
    start_node = [20, 10];
    goal = [75 85];
    r_goal = 10;
    epsilon = 5;
end

if problem_no == 3
    start_node = [60, 60];
    goal = [90 100];
    r_goal = 20;
    epsilon = 5;
end

if problem_no == 4
    start_node = [60 80];
    goal = [60 60];
    r_goal = 5;
    epsilon = 5;
end

if problem_no == 5
    start_node = [1 99];
    goal = [100 0];
    r_goal = 20;
    epsilon = 1;
end

end
