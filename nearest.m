% nearest point from already existing vertices to a random point
function [nearest_point, indx_nearest_point] = nearest (random_point, vertices)

[num_vertices,~] = size(vertices);
euclidean_distance = zeros(num_vertices,1);

for n = 1:num_vertices
    euclidean_distance(n,1) = pdist2(double(random_point), double(vertices(n, :)), 'euclidean');
end

least_distance = min(euclidean_distance);

indx_nearest_point = find(euclidean_distance == least_distance,1);
nearest_point = vertices(indx_nearest_point,:);
%     disp('Nearest Point');
%     nearest_point
%     indx_nearest_point
%     disp(' ');


end