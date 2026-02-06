setwd("C:/Users/ikraouchi/Documents/TP2")

df = read.csv(file ="fao.csv",header = TRUE,sep = ";",dec = "," )

nbr = nrow(df)

resume = summary(df)

disponibilité = mean(df$Dispo_alim,na.rm=TRUE)


nbr_habitant = sum(df$Population,na.rm=TRUE)


ecart_type_exp = sd(df$Export_viande,na.rm=TRUE)
ecart_type_imp = sd(df$Import_viande,na.rm=TRUE)
quantile_exp = quantile(df$Export_viande,na.rm=TRUE)
quantile_imp = quantile(df$Import_viande,na.rm=TRUE)


median_volume_prod_viande = median(df$Prod_viande,na.rm = TRUE)

quartile = quantile(df$Dispo_alim,na.rm = TRUE)

centile = quantile(df$Import_viande,seq(0,1,0.01))

rang = order(df$Nom)
resultat = head(df[rang,], n = 5)
View(resultat)

rang2 = order(df$Nom,decreasing = TRUE)
resultat2 = head(df[rang2,], n = 5)
View(resultat2)


rang_viande2 = order(df$Prod_viande,decreasing = TRUE)
resultat_viande2 = head(df[rang_viande2,], n = 5)
View(resultat_viande2)


res1 = subset(df,df$Dispo_alim>2300)
view(res1)
res2 = subset(df, df$Dispo_alim>3500 & df$Import_viande >1000)
view(res2)

fr_bel = subset(df,df$Nom %in% c("France","Belgique"))
View(fr_bel)


