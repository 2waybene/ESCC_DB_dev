##	Assess_ESCC_trial.R
##	Jianying Li
##	03/17/2015


# directory sensitive
setwd("X:/myGit/ESCC_DB_dev/workingDir/")
file.dir <- "X:/myGit/ESCC_DB_dev/DB_downloaded/"
file.name <- "ESCC_trial_CN_47.txt"




dt <- read.table ( paste (file.dir, file.name, sep=""),  quote="\"",comment.char = "", fill = TRUE, header = TRUE, sep = "\t")
str(dt)

summary(dt$Age.Groups)
dt$NCT.Number

dt$Sponsor.Collaborators
plot(dt$Phase, main = "ESCC trail phases")
mtext ("Source: www.clinicaltrials.gov")


 plot(dt$Acronym , main = "ESCC trail acronym")

dt[dt$NCT.Number=="NCT02033538",]