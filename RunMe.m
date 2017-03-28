%% Author: Chahat Deep Singh
% RRT Implementation:
% March 27 2017
% University of Maryland College Park
% -----------------------------------
% 
% Instructions: 
% 1. Run the file RunMe.m in Matlab (R2010b+)
% 2. Make sure the files:
% 	a. create_map (Not required for the RunMe file)
% 	b. draw
% 	c. edge_fn
% 	d. find_new_node
% 	e. goal_edge
% 	f. map.mat
% 	g. nearest
% 	h. RRT 
% 	are in the same folder.
% 	
% 3. If there is no map.mat, run create_map file to generate
% 	the map with obstacles. (it will generate map.mat)
% 4. To update the map, run create_map.m and then Run RunMe.m for RRT.

%% Input Arguments: (All in [x,y])
% Start Node: start_node
% End Goal: goal
% r_goal: Radius of the End Goal region
% Epsilon: Minimum Step size for the RRT

% Code begins here:----------------------------------------------------

clc; clear all;

% Load the map:
map = load('map.mat');

% Problem Statement:
problem_no = 1;

% Starting pt; End pt; Radius of the goal region; Step Size;
[start_node, end_node, r_goal, epsilon] =  problem(problem_no);

% Edges and vertices of the map:
[edge, vertice] = RRT(map.obstacle_grid, start_node, end_node, ...
                                 epsilon, r_goal);

                             
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
