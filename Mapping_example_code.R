bioko <- readOGR("/bioko", "bioko_admin1")
areas_inh <- readOGR("/areas_inh", "areas_inh")
areasf <- fortify(areas_inh, region = "areaId")

p1 = ggplot(data = plot.data, aes(x=long, y=lat.x, group = group))
p2 = p1 + geom_polygon(data = bioko, aes(x = long, y = lat, group = group), color = "black", fill="grey", size = 0.25)
map <- p2 + geom_polygon(data = plot.data, aes(x = long, y = lat.x, group = group, fill = pop), color = NA, size = 0.25) +
  scale_fill_gradient(name="(Covariate)", low="yellow", high="red", limits=c(0,5)) +
  geom_polygon(data = bioko, aes(x = long, y = lat, group = group), color = "black", fill=NA, size = 0.25) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(), axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(), panel.background=element_blank(), legend.position=c(0.2, 0.8))
map