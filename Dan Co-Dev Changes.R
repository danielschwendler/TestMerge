# Dan 2 Changes Lines 5 - 7-----------------------------------------------------------
diamonds <- ggplot2::diamonds %>% #extract diamonds from package
  mutate(Carat_Price_Ratio = price/carat)

summary(diamonds) #print summary of diamonds to console



# Carat_Price_Ratio -------------------------------------------------------

p <- ggplot(diamonds, aes(x=price)) +
  geom_density()
p
# Add mean line
p+ geom_vline(aes(xintercept=mean(price)),
              color="blue", linetype="dashed", size=1)