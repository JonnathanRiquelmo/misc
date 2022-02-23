# ==============================================================================
# ==============================================================================
#		 SCRIPTS TO GENERATE MY GRAPHICS IN R
# ==============================================================================
# ==============================================================================

#DATASETS

# 	TIME (EFFORT)

NormalityT<-c(-32,-32,-29,-23,-22,-19,-15,-14,-13,-12,-12,-10,-10,-8,-8,-7,-7,-6,-6,-4,2,4,5,5,6,11,16)
GraphicT<-c(12,12,17,18,20,20,21,21,22,22,22,22,25,25,26,26,27,28,28,28,28,28,31,35,42,46,60)
TextualT<-c(15,16,18,18,20,20,26,28,28,28,30,30,32,33,35,36,38,38,38,41,45,48,56,57,58,60,60)


# 	F-Score

NormalityFS<-c(-29,-17.65,-10.57,-10.44,-10.38,-8.93,-7.77,-2.98,-2.38,-1.44,-0.49,-0.04,3.66,4.06,4.58,4.68,4.87,6.22,7.86,10.54,12.26,12.99,13.77,13.87,17.1,17.79,20.29)
GraphicFS<-c(35.62,49.28,51.35,63.29,65.75,66.67,66.67,67.53,67.61,67.61,71.74,72.73,73.24,77.11,77.65,79.01,79.41,79.45,80.49,81.4,81.93,82.5,82.67,85,85.33,85.71,88.61)
TextualFS<-c(46.15,56.72,57.58,61.36,66.67,67.57,69.57,69.88,70.33,70.33,71.79,71.93,72.29,72.46,79.55,80,80.43,80.52,81.08,82.35,83.52,84,84.09,84.71,86.6,92.86,93.48)

# ==============================================================================

# DISTRIBUTION
#	TEMPO (ESFORÇO)
	qqnorm(NormalityT,main=NULL, xlab = "",ylab = "",cex = 2, pch = 1,cex.lab= 1.5, cex.axis= 1.5)
	qqline(NormalityT, col=4, lwd=2,lty=1)

#	FSCORE (EFETIVIDADE)
	qqnorm(NormalityFS,main=NULL, xlab = "",ylab = "",cex = 2, pch = 1,cex.lab= 1.5, cex.axis= 1.5)
	qqline(NormalityFS, col=4, lwd=2,lty=1,)

# ==============================================================================

# BOXPLOT
#	TEMPO (ESFORÇO)
	boxplot(GraphicT, TextualT, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Time (minutes)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5)
	
#	FSCORE (EFETIVIDADE)
	boxplot(GraphicFS, TextualFS, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Percentage (%)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5)
	
# ==============================================================================

qqnorm(NormalityT,main=NULL, xlab = "",ylab = "",cex = 2, pch = 1,cex.lab= 1.5, cex.axis= 1.5)
qqline(NormalityT, col=4, lwd=2,lty=1)
qqnorm(NormalityFS,main=NULL, xlab = "",ylab = "",cex = 2, pch = 1,cex.lab= 1.5, cex.axis= 1.5)
qqline(NormalityFS, col=4, lwd=2,lty=1,)
boxplot(GraphicT, TextualT, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Time (minutes)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5)
boxplot(GraphicFS, TextualFS, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Percentage (%)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5)
