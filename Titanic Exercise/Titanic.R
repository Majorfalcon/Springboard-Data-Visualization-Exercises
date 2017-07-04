# 1 - Check the structure of titanic
str(titanic)

# 2 - Use ggplot() for the first instruction
ggplot(titanic, aes(x = Pclass, fill = Sex)) + 
  geom_bar(position = "dodge")

# 3 - Plot 2, add facet_grid() layer to predict survival rate based on sex and class variables
ggplot(titanic, aes(x = Pclass, fill = Sex)) + 
  geom_bar(position = "dodge") +
  facet_grid(. ~ Survived)

# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Plot 3, but use the position object from instruction 4
# Age set to the y axis to compare the addtional effects Age had on survival rate
ggplot(titanic, aes(x = Pclass, y = Age, col = Sex)) + 
  geom_point(size = 3, alpha = 0.5, position = posn.jd) +
  facet_grid(. ~ Survived)