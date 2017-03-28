% Size of the map:
y = 100;
x = 100;

obstacle_grid = ones(x, y);

% Obstacle Radius:
r = 8;

% Obstacles: 
c{1} = [50,50];
c{2} = [50,60];
c{3} = [55,70];
c{4} = [68,70];
c{5} = [75,60];
c{6} = [50,80];
c{7} = [75,50];
c{8} = [85,50];
c{9} = [80,40];
c{10} = [73,30];
c{11} = [63,25];
c{12} = [53,25];
c{13} = [43,26];
c{14} = [55,90];
c{15} = [55,98];
c{16} = [33,25];
c{17} = [28,35];
c{18} = [25,47];
c{19} = [25,57];
c{20} = [25,67];
c{21} = [25,77];
c{22} = [100,100];
c{23} = [95,95];
c{24} = [95,85];

% Forming Circles (Obstacles):
for k = 1:24
    for i = int32(c{k}(2)-r):int32(c{k}(2)+r) 
        for j = int32(c{k}(1)-r):int32(c{k}(1)+r)
            d = (c{k}(2)-i)^2 + (c{k}(1)-j)^2;
            if d <= r^2 & i<= 100 & j<=100
                obstacle_grid(i,j) = 0;
            end
        end
    end
end

%for k = 1:24
%    for i = int32(c{k}(1)-r):int32(c{k}(1)+r) 
%        for j = int32(c{k}(2)-r):int32(c{k}(2)+r)
%            d = (c{k}(1)-i)^2 + (c{k}(2)-j)^2;
%            if d < r^2 & i<= 100 & j<=100
% obstacle_grid(i,j) = 0;
                %            end
                %        end
                % end
                %end



save map
imshow(obstacle_grid);
axis on; grid on; grid minor