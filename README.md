# RRT Algorithm: 
## Rapidly-Exploring Random Tree

## Author: Chahat Deep Singh
### March 27 2017
### University of Maryland College Park
 -----------------------------------
 
### Instructions: 
 1. Run the file RunMe.m in Matlab (R2010b+)
 2. Make sure the files:
 	a. create_map (Not required for the RunMe file)
 	b. draw
 	c. edge_fn
 	d. find_new_node
 	e. goal_edge
 	f. map.mat
 	g. nearest
 	h. RRT 
 	are in the same folder.
 	
 3. If there is no map.mat, run create_map file to generate
 	the map with obstacles. (it will generate map.mat)
 4. To update the map, run create_map.m and then Run RunMe.m for RRT.

### Input Arguments: (All in [x,y])
##### 1. Start Node: start_node
##### 2. End Goal: goal
##### 3. r_goal: Radius of the End Goal region
##### 4. Epsilon: Minimum Step size for the RRT
