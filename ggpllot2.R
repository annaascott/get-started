library (ggplot2)

# do cars with big engines use more fuel than cars with small engines?
# this will temporarily assign the mpg dataset 
#to the mpg object in our current session

mpg<-ggplot2::mpg

head(mpg)
# display first few rows of mpg dataframe. displ is vehicle engine size
#hwy is fuel efficiency

View(mpg)
#view the data in a new source pane like a spreadsheet

mpg_plot <- ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(colour = class)) +
  geom_smooth(method = "lm", formula = "y ~ x")
#create a graph

mpg_plot
# display the graph in output pane>plots

ggsave("my-first-plot.png", plot = mpg_plot, height = 4, width = 6)
# save the image (or can use the export button in plot pane)