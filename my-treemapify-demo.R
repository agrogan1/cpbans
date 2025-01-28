library(ggrepel) # repelling labels

mytreemapdata <- treemapify(WorldBankData_cpbans, 
                            area = "SP.POP.0014.TO")

ggplot(mytreemapdata,
       aes(xmin = xmin,
           xmax = xmax,
           ymin = ymin,
           ymax = ymax,
           x = (xmax + xmin) / 2,
           y = (ymax + ymin) / 2,
           fill = continent,
           label = country.x)) +
  geom_rect(color = "black") +
  geom_label_repel(max.overlaps = 500,
                   xlim = c(-2, 4),
                   ylim = c(-2, 4),
                   size = .5) +
  xlim(-2,4) +
  ylim(-2,4) 




