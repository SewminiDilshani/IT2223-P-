%1]Write the MATLAB code to import a graph.Use the following source and destination data.
%2]Using the imported data, draw the graph.
%3]Write the MATLAB code to find and display the subgraph for the given nodes.
%4]Identify and display the adjacent vertices for each node.
%5]Label the edges of the graph.
%6]Label the nodes of the graph.
%7]Write the MATLAB code to color the graph(graph coloring).
%8]Write the MATLAB code to find the shortest path from node 1 to node 5.

%source = [1,1,2,3,4];
%destination = [2,3,4,4,5];
%----------------------------------------------------------------------------------------------
% --- Graph Operations in MATLAB ---

% 1. Import Graph Data
source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];

% Create an undirected graph (use digraph() for directed)
G = graph(source, destination);

% 2. Draw the Graph
figure;
p = plot(G);
title('Original Graph');

% 3. Subgraph for Given Nodes (Example: nodes 1 to 4)
subNodes = [1, 2, 3, 4];
subG = subgraph(G, subNodes);

figure;
plot(subG);
title('Subgraph of Nodes 1 to 4');

% 4. Display Adjacent Vertices for Each Node
disp('--- Adjacent Vertices ---');
for i = 1:numnodes(G)
    neighborsList = neighbors(G, i);
    fprintf('Node %d is adjacent to: ', i);
    disp(neighborsList');
end

% 5. Label the Edges
figure;
p = plot(G);
labeledge(p, 1:numedges(G), 1:numedges(G));
title('Graph with Edge Labels');

% 6. Label the Nodes
figure;
p = plot(G, 'NodeLabel', 1:numnodes(G));
title('Graph with Node Labels');

% 7. Graph Coloring (Greedy Algorithm)
coloring = zeros(numnodes(G), 1);
for i = 1:numnodes(G)
    usedColors = coloring(neighbors(G, i));
    newColor = find(~ismember(1:numnodes(G), usedColors), 1);
    coloring(i) = newColor;
end

% Plot with colored nodes
figure;
colors = lines(max(coloring));  % Generate distinguishable colors
p = plot(G);
for i = 1:numnodes(G)
    highlight(p, i, 'NodeColor', colors(coloring(i), :));
end
title('Graph Coloring');

% 8. Shortest Path from Node 1 to Node 5
[startNode, endNode] = deal(1, 5);
[path, dist] = shortestpath(G, startNode, endNode);

fprintf('\n--- Shortest Path from Node %d to Node %d ---\n', startNode, endNode);
fprintf('Path: ');
disp(path);
fprintf('Distance: %d\n', dist);

% Plot the shortest path
figure;
p = plot(G);
highlight(p, path, 'EdgeColor', 'r', 'LineWidth', 2);
highlight(p, path, 'NodeColor', 'r');
title(sprintf('Shortest Path from Node %d to Node %d', startNode, endNode));
