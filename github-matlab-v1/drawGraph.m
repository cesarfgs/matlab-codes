function [ ] = drawGraph( graph )

hold on

%  creating connection lines to nodes 

for i = 1 : graph.n -1
    for j = i + 1 : graph.n 
    
        x1 = graph.node(i).x;
        y1 = graph.node(i).y;
        
        x2 = graph.node(j).x;
        y2 = graph.node(j).y;
        
        X = [x1, x2];
        Y = [y1, y2];
        
        plot ( X, Y, '-k' ) % ':' for dotted lines '-' for dashed lines 'k' black colored line 'r' red lines and so on
    
        
    end
    
%  sending nodes connection informations to the plot
    
for i = 1 : graph.n
    X = [ graph.node(:).x ];
    Y = [ graph.node(:).y ];
    plot( X, Y, 'ok', 'MarkerSize', 8, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [1, 0.6, 0.6])
    
end

title ('Nós e rotas')
box('on')




end