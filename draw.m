function draw(map, start_Q, end_Q, vertice, edge)

title('RRT Implementation');
hold on;

[CountRow, ~] = size(edge);

% Plot Edges:
for kk = 1 : CountRow
    plot([vertice(edge(kk, 1), 1), vertice(edge(kk, 2), 1)], ...
        [vertice(edge(kk, 1), 2), vertice(edge(kk, 2), 2)], ...
        'r', 'LineWidth', 0.25);
end

% Plot start and end node:
plot(start_Q(1), start_Q(2), 'bo', 'linewidth', 3);
drawnow
plot(end_Q(1), end_Q(2), 'ro', 'linewidth', 3);
drawnow
end