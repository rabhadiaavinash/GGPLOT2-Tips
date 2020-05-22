

library(ggplot2)



data <- read.csv("tips.csv")

tips <- as.data.frame(data)

View(tips)
str(tips)

# SCATTER PLOT


ggplot(tips , aes(total_bill , tip )) + geom_point() 

ggplot(tips , aes(total_bill , tip , color = sex )) + geom_point() 

ggplot(tips , aes(total_bill , tip , color = sex )) +
  geom_point() +
  facet_wrap(~sex)


ggplot(tips , aes(total_bill , tip , color = sex )) +
  geom_point() +
  facet_grid(.~sex)


ggplot(tips , aes(total_bill , tip , color = sex )) +
  geom_point() +
  facet_grid(sex~.)


ggplot(tips , aes(total_bill , tip , color = sex )) +
  geom_point() +
  facet_grid(.~sex) +
  theme_bw()

ggplot(tips , aes(total_bill , tip , color = sex ,fill = smoker)) +
  geom_point() +
  facet_wrap(~sex)


ggplot(tips , aes(total_bill , tip , color = sex ,size = smoker)) +
  geom_point() +
  facet_wrap(~sex)


ggplot(tips , aes(total_bill , tip , color = sex ,shape = smoker)) +
  geom_point() +
  facet_wrap(~sex) +
  labs(x = "Total Bill" ,y = "Tips") +
  ggtitle("Total Bills Vs Tips") +
  theme_bw()



  
ggplot(tips , aes(total_bill , tip , color = sex ,shape = smoker)) +
  geom_point() +
  geom_smooth() +
  facet_wrap(~sex) +
  labs(x = "Total Bill" ,y = "Tips") +
  ggtitle("Total Bills Vs Tips") +
  theme_bw()

ggplot(tips , aes(total_bill , tip , color = sex ,shape = smoker)) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(~sex) +
  labs(x = "Total Bill" ,y = "Tips") +
  ggtitle("Total Bills Vs Tips") +
  theme_bw()

ggplot(tips , aes(total_bill , tip , color = sex ,shape = smoker)) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(smoker~sex) +
  labs(x = "Total Bill" ,y = "Tips") +
  ggtitle("Total Bills Vs Tips") +
  theme_bw()


# BAR PLOT

ggplot(tips , aes(time , tip )) +
  geom_bar(stat = "identity") +
  theme_bw()


ggplot(tips , aes(time , tip , fill = sex )) +
  geom_bar(stat = "identity") +
  theme_bw()

ggplot(tips , aes(time , tip , fill = sex )) +
  geom_bar(stat = "identity") +
  theme_bw() +
  facet_wrap(~sex)


# BOX PLOT


ggplot(tips , aes(time , tip )) +
  geom_boxplot(fill = "burlywood") +
  theme_bw()


ggplot(tips , aes(time , tip , fill = sex )) +
  geom_boxplot() +
  theme_bw()

# HISTOGRAM

ggplot(tips , aes(tip)) +
  geom_histogram() +
  theme_bw()

ggplot(tips , aes(tip , fill = sex)) +
  geom_histogram() +
  theme_bw()

# PANEL BACKGROUND 

ggplot(tips , aes(tip , fill = sex)) +
  geom_histogram() +
  facet_wrap(~sex) +
  theme(panel.background = element_rect(fill = "palegreen1"))
  

# PLOT BACKGROUND

ggplot(tips , aes(tip , fill = sex)) +
  geom_histogram() +
  facet_wrap(~sex) +
  theme(plot.background = element_rect(fill = "palegreen1"))


# PLOT AND PANEL BACKGROUND COLOR

ggplot(tips , aes(tip , fill = sex)) +
  geom_histogram(color = "red") +
  facet_wrap(~sex) +
  theme(plot.background = element_rect(fill = "burlywood")) +
  theme(panel.background = element_rect(fill = "palegreen"))




