id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

# data frame
employee <- data.frame(id, name, job_title)

print(employee)

# separate
employee <- separate(employee, name, into=c('first_name', 'last_name'), sep=" ") 

# unite
unite(employee, 'name', first_name, last_name, sep=" ")

ggplot(data=penguins)
+ geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, shape=species, color=species, size=species))

# geom_smooth
ggplot(data=penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))
  
ggplot(data=penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g, linetype = species))

# geom_jitter
ggplot(data=penguins) +
  geom_jitter(mapping = aes(x=flipper_length_mm, y=body_mass_g, linetype = species))

# geom_bar
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x=cut, fill=clarity))

# facet wrap
ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(aes(color=species)) +
  facet_wrap(~species)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x=color, fill=cut)) +
  facet_wrap(~cut)

# facet grid
ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  facet_grid(species~sex)

# labels and annotations
p <- ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", 
       subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman") 
  
p + annotate("text", x=210, y=3500, label="Gentoos are the largest", 
           color="purple",
           fontface="bold",
           size=4.5, angle = 25)

ggsave("Three Penguin Species.png")







