theme_chelsey <- function(){

  theme_bw() %+replace%    # we start with theme_bw() and replace what we want based on theme_pepe_2.R
        
    theme(
          
          text = element_text(          # Set up the default for ALL text elements (unless they are over-written in theme_bw())
            size = 9 ,                  # set up size, smaller than default (11)
            colour = "lightsteelblue4"),          # Set up colour 
          
          line = element_line(          # set up the default for ALL lines (unless they are over-written in theme_bw())
            size = 0.25,                # Set line thickness
            colour = "lightsteelblue4"),        # Set line colour 
          
          plot.title = element_text(    # specific details for plot title
            hjust = 0,                  # Make sure it is left-aligned
            size = 12,                  # We make it a bit bigger than the default
            face = 'bold',
            margin = margin(b = 5)),    # I added this to make a bit of space between the plot.title and the plot   
          
          plot.subtitle = element_text(    # specific details for plot title
            hjust = 0,                     # Make sure it is left-aligned
            colour = "lightsteelblue4",    # Set colour 
            margin = margin(5,0,10,0)),    # add a bit of margin top and bottom to separate from title and plot
          # margins are specified as top, right, bottom and left
          
          panel.grid.minor = element_blank(),
          
          panel.grid.major = element_blank(),
          
          # backgrounds      
          
          plot.background = element_blank(),    # remove the background for the whole plotting area
          
          # panel.background = element_blank(),   # remove the background for the plot itself
          panel.background = element_rect(colour = "lightsteelblue4"),  # change colour of the border of the plot (panel background under data) 
          
          panel.border = element_blank(),       # remove the border of the plot
          
          
          # Work the axis a bit
          
          axis.line = element_line(             # details specific for axis
            size = 0.6),
          
          axis.ticks = element_line(            # Details specific to axis ticks
            size = 0.6),
          
          # A few changes on legends 
          # you dont want to "hardcode" too much on legends as these are very plot-speciffic
          
          legend.title = element_blank(),            # remove legend title
          legend.background = element_blank(),       # remove background on legend itself
          legend.box.background = element_blank(),   # remove background on legend box
          
          # margin around the plot
          
          plot.margin = unit(c(0.5,0.5,0.5,0.5), "cm" )  # margin around the plot (top, right, bottom, left)
    )
}