# Cerbroviz-code
# Importance: The Cerebroviz package was employed for the visualization of spatiotemporal data generated using flow cytometry and displayed as heatmaps
# We used two approaches. A more tedious and manual process involves generation of the matrix by manually entering the data to create a matrix. We acknowledge that while this method works for small datasets, a more robust approach that automatically imports data from excel sheets and is used to create a matrix is needed.
#Manually creating a matrix.
# In the code, we use Timepoint = c(1:2), where 1 = Morphine and 2 = Saline
#Similarly, abbreviations are employed for key words as denoted below:
#Studied phenotypes for microglia: AM = Activated Microglia
#Abbreviations for listed brain regions: CB = Cerebellum, FL = Frontal lobe, HIP = Hippocampus, MED = Medulla Oblongotta, PUT = Putamen, CAU = Caudate Nucleus.
#For visual purposes, CAU was used instead of the Subventricullar zone.


#Installing Cerebroviz Package
install.packages("XML")
install.packages("path_to_downloaded_tarball")
vignette(topic="intro_cerebroViz", package="cerebroViz")
library("cerebroViz")

#Visualizing the expression of CD14 on the surface of activated microglia (AM)

#Generation of a matrix
CD14_AM<-matrix(c(30.2,26.8,20,10.8,44.9,7.63,5.07,8,22.7,9.09,10.3,11.1,10,2.96,7.79,30.9,8.12,46,30,30.8,11.2,27,26.7,25,2.9,2.27,6.76,4.83,9.54,4.12,5.66,3.56,13.9,2.2,7.06,1.24,2.93,1.25,6.88,8.66,7.46,6.31,13.3,10.6,5,4,2,12.1), nrow = 24, dimnames = list(c("CB","FL","HIP","MED","PUT","CAU","FL","HIP","MED","PUT","CAU","CB","HIP","PUT","FL","MED","CAU","CB","HIP","PUT","FL","MED","CAU","CB"), c("1pcw","2pcw")))
#Confirmation of generated matrix
CD14_AM 
#Determination of key statistics of generated matrix
summary(as.vector(CD14_AM))
#Generation of brain heat maps
cerebroViz(CD14_AM, timePoint = c(1:2), regLabel = TRUE, divData = TRUE, filePrefix = 'regLabel', naHatch = TRUE,clamp = 3)
#Timepoint = c(1:2), 1 = Morphine and 2 = Saline

#Visualizing the expression of CD16 on the surface of activated microglia (AM)

#Generation of a matrix
CD16_AM<-matrix(c(20.6,12,52,30.2,24.6,27.5,7.37,28,18.2,50,55.2,2.14,10,10.8,9.97,3.72,3.32,2.66,8.33,13.1,5.4,15.9,33.3,10,1.22,0.3,1.7,3.01,3.74,4.43,2.06,0.75,2.3,0.9,1.73,0.33,1.25,1.65,2.58,1.55,1.6,1.19,8.23,1.89,	2.01,0.89,1.5,0.43), nrow = 24, dimnames = list(c("CB","FL","HIP","MED","PUT","CAU","FL","HIP","MED","PUT","CAU","CB","HIP","PUT","FL","MED","CAU","CB","HIP","PUT","FL","MED","CAU","CB"), c("1pcw","2pcw")))
#Confirmation of generated matrix
CD16_AM
#Determination of key statistics of generated matrix
summary(as.vector(CD16_AM))
#Generation of brain heat maps
cerebroViz(CD16_AM, timePoint = c(1:2), regLabel = TRUE, divData = TRUE, filePrefix = 'regLabel', naHatch = TRUE,clamp = 3)
#Timepoint = c(1:2), 1 = Morphine and 2 = Saline

#Visualizing the expression of CD206 on the surface of activated microglia (AM)

#Generation of a matrix
CD206_AM<-matrix(c(23.8,5.74,10,7.19,29,6.11,2.76,8,22.7,4.55,10.3,4.69,0.56,2.46,2.48,12,4.06,35.4,28.3,17.8,7.19,23.8,16.7,13.4,0.01,0.5,0.2,0.6,0.4,0.8,0.3,0.36,0.8,0.45,0.54,0.51,0.23,1.8,0.74,2.71,5.37,9.47,0.04,0.04,0.8,1.2,2.11,2), nrow = 24, dimnames = list(c("CB","FL","HIP","MED","PUT","CAU","FL","HIP","MED","PUT","CAU","CB","HIP","PUT","FL","MED","CAU","CB","HIP","PUT","FL","MED","CAU","CB"), c("1pcw","2pcw"))) 
#Confirmation of generated matrix
CD206_AM
#Determination of key statistics of generated matrix
summary(as.vector(CD206_AM))
#Generation of brain heat maps
cerebroViz(CD206_AM, timePoint = c(1:2), regLabel = TRUE, divData = TRUE, filePrefix = 'regLabel', naHatch = TRUE,clamp = 3)
#Timepoint = c(1:2), 1 = Morphine and 2 = Saline

