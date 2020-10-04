data("Adult")
head(Adult)
itemFrequencyPlot(Adult,topN=20,type="absolute")
itemFrequencyPlot(Adult, 
                  population = Adult, support = 0.2, 
                  lift = TRUE, horiz = TRUE)
rules <- apriori(Adult, 
                 parameter = list(supp = 0.5, conf = 0.9))

inspect(rules)
