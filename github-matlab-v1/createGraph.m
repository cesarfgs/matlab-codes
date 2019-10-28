%nodes coordinates into graph


function [ graph ] = createGraph()

% to create the graph and calculate the distances betweeen each node
x = [ 0.09, 0.16, 0.84, 0.70 ]; % 4 nodes (put more values here for more nodes)
y = [ 0.17, 0.52, 0.92, 0.16 ]; % 4 nodes (do the same here!)

graph.n = length(x);

for i = 1 : graph.n % code block to create nodes
    graph.node(i).x = x(i);
    graph.node(i).y = y(i);
end

% matrix creation full of zeros (initializing matrix)

graph.edges = zeros ( graph.n,graph.n);

% creating edges

for i = 1 : graph.n
    for j = 1 : graph.n
        
        x1 = graph.node(i).x;
        x2 = graph.node(j).x;
        y1 = graph.node(i).y;
        y2 = graph.node(j).y;
        
        graph.edges(i,j) = sqrt( (x1 - x2)^2 + (y1 - y2)^2 );
        
    end
    
end

end