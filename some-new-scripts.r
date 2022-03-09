# ==============================================================================
# ==============================================================================
#		 SCRIPTS TO GENERATE SOME OF MY \new GRAPHICS IN R
# ==============================================================================
# ==============================================================================

# DATASETS
# 	TIME (EFFORT)
	NormalityT<-c(-69,-64,-43,-35,-30,-25,-22,-12,-9,-9,-9,-7,-3,-2,1,5,9,17,18,19,20,25,3,40,46)
	GraphicT<-c(24,24,28,28,29,30,30,30,31,33,35,38,38,44,45,46,46,46,53,58,61,70,74,90,102)
	TextualT<-c(21,23,25,29,30,30,31,32,35,36,40,40,43,44,47,50,50,55,55,55,67,74,93,93,171)
# 	FSCORE (EFFECTIVENESS)
	NormalityFS<-c(-6.95,-6.37,-5.29,-3.80,-2.53,-2.52,-2.51,-1.49,-1.41,0.82,1.39,1.46,1.71,1.73,1.80,2.51,3.91,3.92,3.94,4.42,4.95,5.10,6.62,6.96,8.43)
	GraphicFS<-c(68.66,73.17,73.81,76.92,78.65,78.65,79.12,79.49,80.41,80.43,80.46,81.08,81.32,81.58,82.98,83.33,83.78,83.87,86.02,86.60,87.23,87.23,87.80,89.16,91.67)
	TextualFS<-c(69.47,71.29,71.70,73.12,77.11,77.78,78.72,81.25,82.47,82.57,83.87,84.62,84.71,85.33,85.37,86.08,86.32,86.42,87.06,87.76,88.31,88.89,89.16,89.74,91.14)

# ==============================================================================

# DISTRIBUTION
#	TIME (EFFORT)
	qqnorm(NormalityT,main=NULL, xlab = "",ylab = "",cex = 2, pch = 1,cex.lab= 1.5, cex.axis= 1.5)
	qqline(NormalityT, col=4, lwd=2,lty=1)
#	FSCORE (EFFECTIVENESS)
	qqnorm(NormalityFS,main=NULL, xlab = "",ylab = "",cex = 2, pch = 1,cex.lab= 1.5, cex.axis= 1.5)
	qqline(NormalityFS, col=4, lwd=2,lty=1,)

# ==============================================================================

# BOXPLOT
#	TIME (EFFORT)
	boxplot(GraphicT, TextualT, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Time (minutes)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5)
#	FSCORE (EFFECTIVENESS)
	boxplot(GraphicFS, TextualFS, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Percentage (%)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5)
	
# ==============================================================================

# 	+ PLOTS
	qqnorm(NormalityT,main=NULL, xlab = "",ylab = "",cex = 2, pch = 1,cex.lab= 1.5, cex.axis= 1.5)
	qqline(NormalityT, col=4, lwd=2,lty=1)
	qqnorm(NormalityFS,main=NULL, xlab = "",ylab = "",cex = 2, pch = 1,cex.lab= 1.5, cex.axis= 1.5)
	qqline(NormalityFS, col=4, lwd=2,lty=1,)
	boxplot(GraphicT, TextualT, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Time (minutes)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5)
	boxplot(GraphicFS, TextualFS, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Percentage (%)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5)
