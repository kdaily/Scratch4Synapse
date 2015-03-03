# Summarize myData by calculating the mean width and height
summarizedData <- myData %>% 
  summarize(mean.width=mean(width), mean.height=mean(height))

# Write this to a file
write.csv(summarizedData, file="./summarizedData.csv")

# Save in Synapse in myFolder
summarizedFile <- File(summarizedData, parentId=myFolder$properties$id)
summarizedFile <- synStore(summarizedFile)
