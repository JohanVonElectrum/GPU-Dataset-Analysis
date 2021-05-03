# Import dataset
DATASET <- read.csv("dataset.csv",na.strings=c(""," ","\n- ","\n","NA"))
# Extract useful columns
Architecture <- DATASET$Architecture
Best_Resolution <- DATASET$Best_Resolution
Core_Speed <- as.numeric(gsub(" MHz", "", DATASET$Core_Speed))
Boost_Clock <- as.numeric(gsub(" MHz", "", DATASET$Boost_Clock))
L2_Cache <- as.numeric(gsub("KB", "", DATASET$L2_Cache))
Max_Power <- as.numeric(gsub(" Watts", "", DATASET$Max_Power))
Memory <- as.numeric(gsub(" MB ", "", DATASET$Memory))
Memory_Bandwidth <- as.numeric(gsub("GB/sec", "", DATASET$Memory_Bandwidth))
Memory_Bus <- as.numeric(gsub(" Bit", "", DATASET$Memory_Bus))
Memory_Speed <- as.numeric(gsub(" MHz", "", DATASET$Memory_Speed))
Release_Price <- as.numeric(gsub("\\$", "", DATASET$Release_Price))
Pixel_Rate <- as.numeric(gsub(" GPixel/s", "", DATASET$Pixel_Rate))
Texture_Rate <- as.numeric(gsub(" GTexel/s", "", DATASET$Texture_Rate))
ROPs <- DATASET$ROPs
TMUs <- DATASET$TMUs
HDMI_Connection <- DATASET$HDMI_Connection
# Generate tables
architecture_table <- rev(sort(table(Architecture)))
best_resolution_table <- rev(sort(table(Best_Resolution)))
#core_speed_table <- rev(sort(table(Core_Speed)))
#max_power_table <- rev(sort(table(Max_Power)))
#memory_table <- rev(sort(table(Memory)))
#release_price_table <- rev(sort(table(Release_Price)))

cross_architecture_best_resolution_table <- table(Architecture, Best_Resolution)
# Generate dataframes
cross_architecture_best_resolution_dataframe <- data.frame(cross_architecture_best_resolution_table)
cross_architecture_best_resolution_dataframe <- cross_architecture_best_resolution_dataframe[cross_architecture_best_resolution_dataframe$Freq != 0,]
cross_architecture_best_resolution_dataframe <- cross_architecture_best_resolution_dataframe[rev(order(cross_architecture_best_resolution_dataframe$Freq)),]

cross_architecture_best_resolution_sample <- datasample(cross_architecture_best_resolution_dataframe)