% Define nodes using labels
nodes = {'A', 'B', 'C', 'D', 'E', 'F', 'G'};

% Define edges and weights
s = [1 1 2 2 3 3];
t = [2 3 4 5 6 7];
weights = [5 3 2 4 6 1];

% Number of nodes
numNodes = length(nodes);

% Create adjacency matrix
adjMatrix = zeros(numNodes);
for i = 1:length(s)
    adjMatrix(s(i), t(i)) = weights(i);
    % Uncomment for undirected graph
    % adjMatrix(t(i), s(i)) = weights(i);
end

% Call DFS function starting from node 1 (i.e., 'A')
visited = dfs(1, adjMatrix, nodes);

% --- DFS FUNCTION ---
function visited = dfs(startNode, adjacencyMatrix, nodeLabels)
    numNodes = size(adjacencyMatrix, 1);
    visited = false(1, numNodes);

    fprintf('DFS traversal starting from node %s:\n', nodeLabels{startNode});
    visited = dfsHelper(startNode, adjacencyMatrix, visited, nodeLabels);
    fprintf('\n');
end

% --- DFS HELPER FUNCTION (recursive) ---
function visited = dfsHelper(node, adjacencyMatrix, visited, nodeLabels)
    visited(node) = true;
    fprintf('%s ', nodeLabels{node});  % Print node label

    adjacentNodes = find(adjacencyMatrix(node, :) > 0);
    for i = 1:length(adjacentNodes)
        if ~visited(adjacentNodes(i))
            visited = dfsHelper(adjacentNodes(i), adjacencyMatrix, visited, nodeLabels);
        end
    end
end
