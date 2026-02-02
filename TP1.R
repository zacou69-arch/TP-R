#liste iris
iris
#class de l'object
class(iris)
# affiche dans vue la fonction
View(iris)
# affiche le nombre de ligne
nrow(iris)
# affiche le nombre de colonne
ncol(iris)
# affiche le nom des colonnes
colnames(iris)
# affiche un résumé du dataframe
summary(iris)
# affiche seulement la contence  des collones siter entre guillement
iris[c("Sepal.Length","Species")]
# affiche les ligne entre parenthèse (iris["ligne","colonne"])"
iris[c(100,103,105),]
# affiche lesligne de 50 a 100 c'est pour cela que l'on ajoute deux point entre les deux chiffre pour indiquer la porté et nom une virgule 
iris[c(50:100),]
#le dollars permet d'acceder a une variable du dataframe citer juste avant celui-ci
mean(iris$Sepal.Length)
# de même qu'avant sauf que l'on souhaite la mediane
median(iris$Sepal.Width)
#ecart-type
sd(iris$Petal.Length)
#déciles
quantile(iris$Petal.Width)



#exo2

#importation et lecture du fichier csv
dfAnime = read.csv(file = "C:/Users/ikraouchi/Documents/anime csv/anime.csv",header=TRUE,sep= ",",dec=".")


View(dfAnime)

dim(dfAnime)

moy_score = mean(dfAnime$Score)
nb_total_vote = sum(dfAnime$Vote)
ecart_score = sd(dfAnime$Score)
decile_score = quantile(dfAnime$Score)



sup_neuf = subset(dfAnime,Score > 9)
nrow(sup_neuf)
subset(dfAnime,Vote > 200000)
subset(dfAnime,Vote > 200000 & Score > 8 )


