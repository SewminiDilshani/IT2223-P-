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
    % If graph is undirected, uncomment the line below:
    % adjMatrix(t(i), s(i)) = weights(i);
end

% Call BFS function starting from node 1 (i.e., 'A')
visited = bfs(1, adjMatrix, nodes);

% --- BFS FUNCTION DEFINITION ---
function visited = bfs(startNode, adjacencyMatrix, nodeLabels)
    numNodes = size(adjacencyMatrix, 1);
    visited = false(1, numNodes);    % Track visited nodes
    queue = [];                      % Initialize empty queue

    % Enqueue the start node and mark it visited
    queue(end+1) = startNode;
    visited(startNode) = true;

    fprintf('BFS traversal starting from node %s:\n', nodeLabels{startNode});

    while ~isempty(queue)
        % Dequeue the first node in the queue
        currentNode = queue(1);
        queue(1) = [];

        fprintf('%s ', nodeLabels{currentNode}); % Print visited node label

        % Find neighbors of the current node
        neighbors = find(adjacencyMatrix(currentNode, :) > 0);

        % For each neighbor, if not visited, mark visited and enqueue
        for i = 1:length(neighbors)
            neighbor = neighbors(i);
            if ~visited(neighbor)
                visited(neighbor) = true;
                queue(end+1) = neighbor;  % Enqueue neighbor
            end
        end
    end

    fprintf('\n'); % Newline after traversal
end
