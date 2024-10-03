# Consulting HW 6

rawdat <- read.csv("DataRaw/lead-iq-01.csv")

clean_dat <- rawdat

clean_dat[clean_dat$IQ == 999, "IQ"] <- 99
write.csv(clean_dat, "DataProcessed/lead-iq-01.clean.csv",
          row.names = FALSE)

boxplot(IQ ~ Smelter,
        data=rawdat,
        main = "Boxplot of IQ Scores by Smelter Group", 
        xlab = "Smelter", 
        ylab = "IQ", 
        col = "lightblue", 
        border = "darkblue")

far_mean <- mean(rawdat$IQ[rawdat$Smelter == "Far"])
near_mean <- mean(rawdat$IQ[rawdat$Smelter == "Near"])