# Joe Changes Changes Lines 5 - 7-----------------------------------------------------------
diamonds <- ggplot2::diamonds %>% #extract diamonds from package
  mutate(Depth_Price_Ratio = price/depth)



# Average price by color --------------------------------------------------

diamonds %>% group_by(color) %>% summarize(Price = mean(price),
                                           Depth_Price_Ratio = mean(Depth_Price_Ratio))