
function [inFreeSpace] = edge_fn(map, nearest_neigh, next_node)
vert = double(double(next_node) - double(nearest_neigh));
D = norm(vert);
U = vert / D;
point_count = 10;
epsilon_Q = D / point_count;
now_location = double(nearest_neigh);


for ii = 1 : point_count    
    now_location = now_location + (epsilon_Q * U);
    if map(int32(now_location(2)), int32(now_location(1))) == 0
        inFreeSpace = 0;
        disp('Obstacle Detected!');
        return;
    end
end
inFreeSpace = 1;
end

