getwd() 

setwd( "C:/Users/ikraouchi/Documents/dataset")
getwd()



bodies_karts = read.csv(file = "bodies_karts.csv", header = TRUE, sep = ";", dec = ",")
tires = read.csv(file = "tires.csv", header = TRUE, sep = "\t", dec = ",")
gliders = read.csv(file = "gliders.csv", header = TRUE, sep = "|", dec = ".")
drivers = read.csv(file = "drivers.csv", header = TRUE, sep = ";", dec = ",")



dimension = dim(bodies_karts)


resume = summary(bodies_karts)


plot(drivers$Weight,drivers$Acceleration)
cor(drivers$Weight,drivers$Acceleration)
coeff_cor = cor(drivers$Weight,drivers$Acceleration)
print(coeff_cor^2)
class(drivers$Acceleration)

matriceCor = cor(drivers[ , - 1])
matriceCor = round(matriceCor , 2)
View(matriceCor)

install.packages("corrplot")


library(corrplot) #je charge mon package pour pouvoir utiliser ses fonctionalités
corrplot(matriceCor, method="circle")

matriceCor = round(cor(tires[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE 
)


resultat = drivers[,c("Driver","Weight")]
View(resultat)

resultat = drivers[ , -c(2,3)]


resultat = drivers[ , c("Driver", "Acceleration", "Weight")]
View(resultat)



resultat = drivers[ c(3,12,32) , ]
View(resultat)

resultat = drivers[ c(32,3,12) , ]
View(resultat)



rang = order(drivers$Weight)
resultat = drivers[ rang  , c("Driver", "Weight") ]


rang = order(drivers$Acceleration, decreasing = TRUE)
resultat = drivers[ rang  , c("Driver", "Acceleration") ]
View(resultat)



rang = order(drivers$Acceleration, drivers$Weight, decreasing = c(TRUE,FALSE))
resultat = drivers[ rang  , c("Driver", "Acceleration","Weight") ]
View(resultat)

help(subset)
topDriver = subset(x = drivers,
                   subset = Acceleration == max(Acceleration), 
                   select = c("Driver","Acceleration"))
