function [edge, vertice] = RRT(map, start_node, end_node, epsilon, r_goal)

% X,Y defines the size of the map:
[Y, X] = size(map);

% Starting Q = start Node:
vertice = start_node; 
edge = int32.empty(0,2);

%% Display the map with end node region:
imshow(map);
hold on
r_goalsq = r_goal^2;
for i = int32(end_node(1)-r_goal):int32(end_node(1)+r_goal)
    for j = int32(end_node(2)-r_goal):int32(end_node(2)+r_goal)
        d = (end_node(1)-i)^2 + (end_node(2)-j)^2;
        if d <= r_goal^2 & i<= 100 & j<=100 & i>0 & j>0
            plot( i, j, 'g.');
        end
    end
end

next_node = [1, 1];

%% RRT, finding the nearest neighbors:
for n = 1:(X*Y)
    
    % Break the for loop if end goal region is reached:
    if( (next_node(1) - end_node(1) )^2 + ( next_node(2) - end_node(2) )^2 < r_goal^2)
        break
    end
    
    % Random node:
    rand_node = [randi(X), randi(Y)];
    
    % Finding nearest Neighbor:
    [nearest_neigh, nearest_neigh_Idx] = nearest(rand_node,vertice); % nearest point from veritces to random point
    next_node = find_new_node(nearest_neigh, rand_node, epsilon);

    % Do not search outside the grid area:
    if int32(next_node(1)) > X || int32(next_node(2)) > Y
        continue;
    end
    
    temp_x_node = int32(next_node(1));
    temp_y_node = int32(next_node(2));
    
    if(temp_x_node < 1 || temp_y_node < 1)
        continue;
    end
    
    
    if map(int32(next_node(2)), int32(next_node(1))) == 1
        if edge_fn(map,nearest_neigh, next_node)
            % Display Node on command screen:
            next_node % Don't add the semi colon:
            vertice = [vertice
                       next_node];
            
            [New_Q_Idx, ~] = size(vertice);
            edge = [edge; 
                   [int32(New_Q_Idx), int32(nearest_neigh_Idx)]];
               
            
            draw(map, start_node, end_node, vertice, edge);
            if isequal(next_node, end_node) || ...
                        goal_edge(nearest_neigh, next_node, end_node)
                
                if ~isequal(next_node, end_node)
                    vertice = vertice(1 : (end - 1), :);
                    vertice = [vertice; end_node];
                end
            
                if n == 1
                    draw(map, start_node, end_node, vertice, edge);
                    
                end
                return;
                
            end
        end
    end
end
draw(map, start_node, end_node, vertice, edge);
drawnow
end


