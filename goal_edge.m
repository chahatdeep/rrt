
function [edge_goal] = goal_edge(nearest_point, new_point, goal)
V = double(double(new_point) - double(nearest_point));
D = norm(V);
U = V / D;
% Distance from Q to Goal:
D_Q2goal = norm(double(goal) - double(nearest_point));

if D_Q2goal > D
    edge_goal = 0;
    return;
end

goal = double(nearest_point) + (D_Q2goal * U);
edge_goal = isequal(int32(goal), goal);
end
