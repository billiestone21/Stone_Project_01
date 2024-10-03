# Consulting HW 6

rawdat <- read.csv("DataRaw/lead-iq-01.csv")

boxplot(IQ ~ Smelter,
        data=rawdat,
        main = "Boxplot of IQ Scores by Smelter Group", 
        xlab = "Smelter", 
        ylab = "IQ", 
        col = "lightblue", 
        border = "darkblue")

far_mean <- mean(rawdat$IQ[rawdat$Smelter == "Far"])
near_mean <- mean(rawdat$IQ[rawdat$Smelter == "Near"])