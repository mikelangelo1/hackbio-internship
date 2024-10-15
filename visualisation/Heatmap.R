# Load necessary libraries
library(ggplot2)
library(reshape2)

# Load the dataset
data <- read.csv("/Users/mac/Desktop/hackbio-internship/stage-4/Phase-2/2vqj.csv")

data$Ligand_Index <- as.numeric(as.factor(data$Ligand))

# Create a heatmap using ggplot2
ggplot(data, aes(x = Ligand_Index, y = 1, fill = `Binding_Affinity`)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Heatmap of Docking Scores", x = "Ligands", y = "") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1),
        axis.ticks.y = element_blank(),
        axis.text.y = element_blank())

