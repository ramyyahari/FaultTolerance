install.packages('igraph')
library('igraph')
initial_graph <- read.graph("/Users/rajveersingh/Desktop/power.gml",format = c("gml"))

strength <- strength(initial_graph)
ordered_strenght <- order(strength)
ordered_strenght
which.max(page_rank(initial_graph)$vector)
g  <- graph.adjacency(adjMat)
plot(g)
graph.laplacian(initial_graph,sparse = FALSE)
as_adjacency_matrix(initial_graph)
betweenness.centrality(initial_graph)
#only works for undirected graphs, which this example is fine since symetric
getOption("max.print"=10)


initial_graph
degree(initial_graph)
max(degree(initial_graph))
which.max(degree(initial_graph))
plot(initial_graph)
betweenness(initial_graph)
max(betweenness(initial_graph))
which.max(betweenness(initial_graph))
centralization.degree(initial_graph)
Eigen1 <- evcent(initial_graph)
#modified graph (removing node which has the maximum degree)

graph_modified <- initial_graph - V(initial_graph)[2554]
graph_modified
degree(graph_modified)
max(degree(graph_modified))
plot(graph_modified)
betweenness(graph_modified)
which.max(betweenness(graph_modified))
max(betweenness(graph_modified))

#modified graph (removing node which has the maximum betweenness)

graph_modified2 <- initial_graph - V(initial_graph)[4164]
graph_modified2
degree(graph_modified2)
max(degree(graph_modified))
which.max(degree(graph_modified2))
plot(graph_modified2)
betweenness(graph_modified2)
which.max(edge_betweenness(graph_modified2))
edge.betweenness.community(graph_modified2)
which.max(betweenness(graph_modified2))
max(betweenness(graph_modified2))

#modified graph (removing node which has the second maximum betweenness)
E(graph_modified2)[1528]
graph_modified3 <- graph_modified2 - E(graph_modified2)[1528]
graph_modified3
degree(graph_modified3)
max(degree(graph_modified3))
which.max(degree(graph_modified3))
plot(graph_modified3)
betweenness(graph_modified3)
which.max(edge_betweenness(graph_modified3))
which.max(betweenness(graph_modified3))
max(betweenness(graph_modified3))

#modified graph (removing node which has the third maximum betweenness)
E(graph_modified3)[2908]
graph_modified4 <- graph_modified3 - E(graph_modified3)[2908]
graph_modified4
degree(graph_modified4)
max(degree(graph_modified4))
which.max(degree(graph_modified4))
plot(graph_modified4,vertex.size=1,vertex.label=NA)
betweenness(graph_modified4)
which.max(edge_betweenness(graph_modified4))
which.max(betweenness(graph_modified4))
max(betweenness(graph_modified4))
E(graph_modified3)[3267]


neighbors(graph_modified2, 394, mode = 1)
neighbors(graph_modified2, 2224, mode = 1)
#calculating neighborhood of the edges
edg
neighbors()



which.max(degree(initial_graph))
which.max(edge_connectivity(initial_graph))
neighbors(initial_graph, 2554 , mode = 1)
neighbors(initial_graph, 2871 , mode = 1)
neighbors(initial_graph, 2872 , mode = 1)
install.packages('sna')
library(sna)
data= component.dist(initial_graph,connected = 'strong')
which.max(edge_betweenness(g2))
edge_betweenness(g2)

