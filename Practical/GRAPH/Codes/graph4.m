s = [1 2 2];   %start nodes
t = [2 3 4];   %end nodes
weight = [10 5 7];
G = graph(s, t, weight);
plot(G, 'EdgeLabel', G.Edges.Weight);
title('Weighted Undirected Graph');