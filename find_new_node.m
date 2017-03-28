
function next_node = find_new_node(nearest_node, random_node, epsilon)

s1 = size(random_node);
s2 = size(nearest_node);

d1 = double(random_node(1)) - double(nearest_node(1));
d2 = double(random_node(2)) - double(nearest_node(2));

vert = [d1, d2];

% Unit:
U = vert / norm(vert);

% New 
next_node = (int32(double(nearest_node) + epsilon * U));

end