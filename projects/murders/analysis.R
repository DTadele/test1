library(tidyverse)

load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>% 
  ggplot(aes(abb, rate, fill = region)) +
  geom_bar(width = 0.5, stat = "identity") +
  coord_flip()
ggsave("figs/barplot.png")
