# Dan 2 Changes Lines 5 - 7-----------------------------------------------------------
diamonds <- ggplot2::diamonds %>% #extract diamonds from package
  mutate(Carat_Price_Ratio = price/carat)
  
summary(diamonds) #print summary of diamonds to console