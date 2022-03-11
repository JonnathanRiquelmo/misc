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
	boxplot(GraphicT, TextualT, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Time (minutes)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5, outline=FALSE)
#	FSCORE (EFFECTIVENESS)
	boxplot(GraphicFS, TextualFS, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Percentage (%)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5, outline=FALSE)
	
# ==============================================================================

# 	+ PLOTS
	qqnorm(NormalityT,main=NULL, xlab = "",ylab = "",cex = 2, pch = 1,cex.lab= 1.5, cex.axis= 1.5)
	qqline(NormalityT, col=4, lwd=2,lty=1)
	qqnorm(NormalityFS,main=NULL, xlab = "",ylab = "",cex = 2, pch = 1,cex.lab= 1.5, cex.axis= 1.5)
	qqline(NormalityFS, col=4, lwd=2,lty=1,)
	boxplot(GraphicT, TextualT, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Time (minutes)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5, outline=FALSE)
	boxplot(GraphicFS, TextualFS, col=(c("darkgreen","darkorange")), names=c("Graphical Treatment","Textual Treatment"), ylab="Percentage (%)", cex=1.5, cex.lab= 1.5, cex.axis= 1.5, outline=FALSE)
	
# ============================================================================== 

# PAIRED T TEST (DEPENDENT SAMPELS)

#	TIME (EFFORT)
	rm(list = ls())
	x1 <- c(50,30,30,32,55,74,43,40,25,31,29,171,44,47,55,21,35,55,23,36,40,50,67,93,93)
	x2 <- c(28,70,35,30,30,44,46,33,45,28,46,102,90,38,46,30,53,74,24,61,31,38,24,58,29)
	t.test(x1, x2, alternative = "two.sided", paired = TRUE, mu = 0, conf.level = 0.95)
	shapiro.test(x1)
	shapiro.test(x2)
	

#	FSCORE (EFFECTIVENESS)
	rm(list = ls())
	x1 <- c(87.06,71.7,87.76,89.74,83.87,77.11,88.31,85.33,84.62,82.47,86.08,91.14,86.32,78.72,84.71,86.42,77.78,85.37,69.47,71.29,88.89,81.25,89.16,73.12,82.57)
	x2 <- c(80.43,78.65,83.33,87.23,89.16,73.17,86.6,83.87,86.02,81.08,79.12,87.23,87.8,76.92,82.98,81.32,81.58,80.41,68.66,73.81,80.46,83.78,91.67,79.49,78.65)
	t.test(x1, x2, alternative = "two.sided", paired = TRUE, mu = 0, conf.level = 0.95)
	shapiro.test(x1)
	shapiro.test(x2)
	
