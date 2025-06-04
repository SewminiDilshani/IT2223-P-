S = [1 1 1 2 5 3 6 4 7 8 8 8];
T = [2 3 4 5 3 6 4 7 2 6 7 5];
weight = [100 10 10 10 10 20 10 30 50 10 70 10];
G = digraph(S,T,weight);
plot(G, 'EdgeLabel', G.Edges.Weight, 'NodeColor','r');
title('Weighted-Directed Graph');