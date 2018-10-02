library(igraph)

g <- make_empty_graph() +
	vertices('BostonComp', 'Vancouver', 'Tanks', 'Calgary', 'Chicago', 'DragonTigers', 'BostonRec', 
	'Wolfpack', 'Trillium', 'Reloaded', 'Goodfellas', 'NYBodega', 'NYJaywalkers', 'BlackTans')
games <- c(
	paste('Game#1', 'Fri 7pm', sep='\n'),
	paste('Game#2', 'Fri 8pm', sep='\n'),
	paste('Game#3', 'Fri 9pm', sep='\n'),
	paste('Game#4', 'Fri 10pm', sep='\n'),
	paste('Game#5', 'Fri 11pm', sep='\n'),
	paste('Game#6', 'Sat 8am', sep='\n'),
	paste('Game#7', 'Sat 9am', sep='\n'),
	paste('Game#8', 'Sat 10am', sep='\n'),
	paste('Game#9', 'Sat 11am', sep='\n'),
	paste('Game#10', 'Sat Noon', sep='\n'),
	paste('Game#11', 'Sat 1pm', sep='\n'),
	paste('Game#12', 'Sat 2pm', sep='\n'),
	paste('Game#13', 'Sat 3pm', sep='\n'),
	paste('Game#14', 'Sat 4pm', sep='\n'),
	paste('Game#15', 'Sun 8am', sep='\n'),
	paste('Game#16', 'Sun 9am', sep='\n'),
	paste('Game#17', 'Sun 10am', sep='\n'),
	paste('Game#18', 'Sun 10am', '(Varsity)', sep='\n'),
	paste('Game#19', 'Sun 11am', '(Varsity)', sep='\n'),
	paste('Game#20', 'Sun Noon', '(Varsity)', sep='\n'),
	paste('Game#21', 'Sun 1pm', '(Varsity)', sep='\n'),
	paste('Game#22', 'Sun 11am', sep='\n'),
	paste('Game#23', 'Sun Noon', sep='\n'),
	paste('Game#24', 'Sun 1pm', sep='\n'),
	paste('Game#25', 'Sun 2pm', sep='\n'),
	paste('Game#26', 'Sun 3pm', sep='\n'),
	paste('Game#27', 'Sun 4pm', sep='\n'),
	paste('Game#28', 'Sun 5pm', sep='\n'),
	paste('Game#29', 'Sun 6pm', sep='\n')
	)
g <- add_vertices(g, length(games), name=games)

g <- g + edge('BostonComp',   games[1], color='grey')
g <- g + edge('Vancouver',    games[1], color='grey')
g <- g + edge('Tanks',        games[2], color='grey')
g <- g + edge('Calgary',      games[2], color='grey')
g <- g + edge('Chicago',      games[3], color='grey')
g <- g + edge('DragonTigers', games[3], color='grey')
g <- g + edge('BostonRec',    games[4], color='grey')
g <- g + edge('Wolfpack',     games[4], color='grey')
g <- g + edge('Trillium',     games[5], color='grey')
g <- g + edge('Reloaded',     games[5], color='grey')
g <- g + edge('Goodfellas',   games[6], color='grey')
g <- g + edge('NYBodega',     games[6], color='grey')
g <- g + edge(games[1],       games[7], color='red')
g <- g + edge(games[2],       games[7], color='blue')
g <- g + edge(games[5],       games[8], color='red')
g <- g + edge(games[3],       games[8], color='blue')
g <- g + edge('NYJaywalkers', games[9], color='grey')
g <- g + edge(games[2],       games[9], color='red')
g <- g + edge(games[3],       games[10], color='red')
g <- g + edge('BlackTans',    games[10], color='grey')
g <- g + edge(games[5],       games[11], color='blue')
g <- g + edge(games[7],       games[11], color='blue')
g <- g + edge(games[8],       games[12], color='blue')
g <- g + edge(games[1],       games[12], color='blue')
g <- g + edge(games[9],       games[13], color='red')
g <- g + edge(games[6],       games[13], color='red')
g <- g + edge(games[10],      games[14], color='red')
g <- g + edge(games[4],       games[14], color='red')
g <- g + edge(games[9],       games[15], color='blue')
g <- g + edge(games[4],       games[15], color='blue')
g <- g + edge(games[6],       games[16], color='blue')
g <- g + edge(games[10],      games[16], color='blue')
g <- g + edge(games[12],      games[17], color='blue')
g <- g + edge(games[11],      games[17], color='red')
g <- g + edge(games[11],      games[18], color='blue')
g <- g + edge(games[12],      games[18], color='red')
g <- g + edge(games[13],      games[19], color='red')
g <- g + edge(games[14],      games[19], color='red')
g <- g + edge(games[16],      games[20], color='red')
g <- g + edge(games[13],      games[20], color='blue')
g <- g + edge(games[14],      games[21], color='blue')
g <- g + edge(games[15],      games[21], color='red')
g <- g + edge(games[8],       games[22], color='red')
g <- g + edge(games[15],      games[22], color='blue')
g <- g + edge(games[16],      games[23], color='blue')
g <- g + edge(games[7],       games[23], color='red')
g <- g + edge(games[17],      games[24], color='red')
g <- g + edge(games[18],      games[24], color='red')
g <- g + edge(games[22],      games[25], color='red')
g <- g + edge(games[23],      games[25], color='red')
g <- g + edge(games[17],      games[26], color='blue')
g <- g + edge(games[18],      games[26], color='blue')
g <- g + edge(games[22],      games[27], color='blue')
g <- g + edge(games[23],      games[27], color='blue')
g <- g + edge(games[20],      games[28], color='red')
g <- g + edge(games[21],      games[28], color='red')
g <- g + edge(games[20],      games[29], color='blue')
g <- g + edge(games[21],      games[29], color='blue')

V(g)$label.color <- 'black'
V(g)$label.color[1:14] <- 'grey'
V(g)$size <- 18
V(g)$size2 <- 18
V(g)$label.cex <- 0.7
V(g)$shape <- 'none'

pdf('~/CoupeCanadaCup_Graphs.pdf', width=10, height=10)
plot(g, edge.arrow.size=0.5, layout=layout_with_gem(g))
legend('topleft', legend=c('winner','loser'), fill=c('blue','red'))
dev.off()
