# Read in file using the read_xlsx module
a =read_xlsx('CD14 AM practice.xlsx')
# Isolate "Region" column as its own variable to be used in the matrix downstream
a$Region
y = a$Region
#Create a matrix for the xlsx data
B=as.matrix(a,ncol=2)
#Getting rid of region from the matrix, to avoid addition of indices to the final matrix and allow conversion to nunmeric
B<-B[,colnames(B)!="Region"]
#To allow Cerebroviz to run, we to convert matrix into numeric
B = matrix(as.numeric(B),ncol=2)
#Add row names to the matrix that comprise of selective regions
rownames(B)=y
#Confirm final as matrix and numeric
is.numeric(B)
is.matrix(B)
#If true for both, confirm statistical variables for B
summary(as.vector(B)) 
#Install Cerebroviz package
install.packages("XML")
#Download Cerobroviz package: https://github.com/ethanbahl/cerebroViz/blob/master/release/cerebroViz_1.0.tar.gz
#Install package from downloads folder in R studio using tools>install packages>install from package archive
library("cerebroViz")
summary(as.vector(B)) 
#Timepoint = c(1:2), 1 = Morphine and 2 = Saline
#For additional description of code: Refer to https://github.com/ethanbahl/cerebroViz/blob/master/README.md
cerebroViz(B, timePoint = c(1:2), regLabel = TRUE, divData = TRUE, filePrefix = 'regLabel', naHatch = TRUE,clamp = 3)


