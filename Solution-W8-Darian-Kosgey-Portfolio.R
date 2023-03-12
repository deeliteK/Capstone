Sys.time()
MIS470housingtesting_460x25_
Sys.time()
AmesHousing

Sys.time()
min(MIS470housingtesting_460x25_$SalePrice)
max(MIS470housingtesting_460x25_$SalePrice)
mean(MIS470housingtesting_460x25_$SalePrice)
median(MIS470housingtesting_460x25_$SalePrice)
sd(MIS470housingtesting_460x25_$SalePrice)

Sys.time()
options(scipen = 100000)
hist(MIS470housingtesting_460x25_$SalePrice, breaks = 8,
     main = "Ames, IA Housing Prices- Testing",
     xlab = "Sale Price (USD)",
     xlim = c(34900, 755000), ylim = NULL,
     axes = TRUE, plot = TRUE, labels = TRUE, 
     col = "light blue"
     )

Sys.time()
CombinedHousing <- rbind(AmesHousing,  MIS470housingtesting_460x25_)
summary(CombinedHousing$SalePrice)

Sys.time()
options(scipen = 100000)
hist(CombinedHousing$SalePrice, breaks = ,
     main = "Ames, IA Housing Prices",
     xlab = "Sale Price (USD)",
     xlim = c(34900, 755000), ylim = NULL,
     axes = TRUE, plot = TRUE, labels = TRUE, 
     col = "light green"
)

Sys.time()
plot(AmesHousing$YrSold, AmesHousing$SalePrice,
     main = "Sale Price Vs. Year Sold",
     xlab = "Year Sold",
     ylab = "Sale Price",
     pch = 15)

Sys.time()
training_model <- lm(SalePrice ~ YrSold + MoSold + MSSubClass + LotFrontage + LotArea + OverallQual + OverallCond + YearBuilt + YearRemodAdd + MasVnrArea + TotalBsmtSF + GrLivArea + FullBath + HalfBath + BedroomAbvGr + KitchenAbvGr + TotRmsAbvGrd + Fireplaces + GarageYrBlt + GarageCars + GarageArea + WoodDeckSF + OpenPorchSF, data = AmesHousing)
training_model

Sys.time()
summary(training_model)

Sys.time()
training.graph <- ggplot(training_model, aes(x=SalePrice, y=YrSold)) + geom_point()

Sys.time()
training.graph

Sys.time()
training.graph <- training.graph + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph + 
  theme_classic() +
  labs(title = "Sales Price vs Year Sold",
       x = "Sales Price (USD)",
       y = "Year Sold")


Sys.time()
training.graph1 <- ggplot(training_model, aes(x=SalePrice, y=MoSold)) + geom_point()

Sys.time()
training.graph1

Sys.time()
training.graph1 <- training.graph1 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph1 + 
  theme_classic() +
  labs(title = "Sales Price vs Month Sold",
       x = "Sales Price (USD)",
       y = "Month Sold")

Sys.time()
training.graph2 <- ggplot(training_model, aes(x = SalePrice, y = MSSubClass)) + geom_point()

Sys.time()
training.graph2

Sys.time()
training.graph2 <- training.graph2 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph2 + 
  theme_classic() +
  labs(title = "Sales Price vs Year Sold",
       x = "Sales Price (USD)",
       y = "Neighborhood Subclass")

Sys.time()
training.graph3 <- ggplot(training_model, aes(x=SalePrice, y=LotFrontage)) + geom_point()

Sys.time()
training.graph3

Sys.time()
training.graph3 <- training.graph3 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph3 + 
  theme_classic() +
  labs(title = "Sales Price vs Lot Frontage",
       x = "Sales Price (USD)",
       y = "Lot Frontage (ft)")

Sys.time()
training.graph4 <- ggplot(training_model, aes(x=SalePrice, y=LotArea)) + geom_point()

Sys.time()
training.graph4

Sys.time()
training.graph4 <- training.graph4 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph4 + 
  theme_classic() +
  labs(title = "Sales Price vs Lot Area",
       x = "Sales Price (USD)",
       y = "Lot Area (sq ft)")

Sys.time()
training.graph5 <- ggplot(training_model, aes(x=SalePrice, y=OverallQual)) + geom_point()

Sys.time()
training.graph5

Sys.time()
training.graph5 <- training.graph5 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph5 + 
  theme_classic() +
  labs(title = "Sales Price vs Overall Quality of Materials",
       x = "Sales Price (USD)",
       y = "Overall Quality Rating (1-10)")

Sys.time()
training.graph6 <- ggplot(training_model, aes(x=SalePrice, y=OverallCond)) + geom_point()

Sys.time()
training.graph6

Sys.time()
training.graph6 <- training.graph6 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph6 + 
  theme_classic() +
  labs(title = "Sales Price vs Overall Condition",
       x = "Sales Price (USD)",
       y = "Overall Condition (1-10)")

Sys.time()
training.graph7 <- ggplot(training_model, aes(x=SalePrice, y=YearBuilt)) + geom_point()

Sys.time()
training.graph7

Sys.time()
training.graph7 <- training.graph7 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph7 + 
  theme_classic() +
  labs(title = "Sales Price vs Year Built",
       x = "Sales Price (USD)",
       y = "Year Built")

Sys.time()
training.graph8 <- ggplot(training_model, aes(x=SalePrice, y=YearRemodAdd)) + geom_point()

Sys.time()
training.graph8

Sys.time()
training.graph8 <- training.graph8 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph8 + 
  theme_classic() +
  labs(title = "Sales Price vs Year Remodeled",
       x = "Sales Price (USD)",
       y = "Year Remodeled")

Sys.time()
training.graph9 <- ggplot(training_model, aes(x=SalePrice, y=MasVnrArea)) + geom_point()

Sys.time()
training.graph9

Sys.time()
training.graph9 <- training.graph9 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph9 + 
  theme_classic() +
  labs(title = "Sales Price vs Masonry Veneer Area",
       x = "Sales Price (USD)",
       y = "Masonry Veneer Area (sq ft")

Sys.time()
training.graph10 <- ggplot(training_model, aes(x=SalePrice, y=TotalBsmtSF)) + geom_point()

Sys.time()
training.graph10

Sys.time()
training.graph10 <- training.graph10 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph10 + 
  theme_classic() +
  labs(title = "Sales Price vs Total Basement Square Footage",
       x = "Sales Price (USD)",
       y = "Total Basement Sq Ft")

Sys.time()
training.graph11 <- ggplot(training_model, aes(x=SalePrice, y=GrLivArea)) + geom_point()

Sys.time()
training.graph11

Sys.time()
training.graph11 <- training.graph11 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph11 + 
  theme_classic() +
  labs(title = "Sales Price vs Above Ground Living Area",
       x = "Sales Price (USD)",
       y = "Above Ground Living Area (sq ft)")

Sys.time()
training.graph12 <- ggplot(training_model, aes(x=SalePrice, y=FullBath)) + geom_point()

Sys.time()
training.graph12

Sys.time()
training.graph12 <- training.graph12 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph12 + 
  theme_classic() +
  labs(title = "Sales Price vs Full Bathrooms",
       x = "Sales Price (USD)",
       y = "Number of Full Bathrooms")

Sys.time()
training.graph13 <- ggplot(training_model, aes(x=SalePrice, y=HalfBath)) + geom_point()

Sys.time()
training.graph13

Sys.time()
training.graph13 <- training.graph2 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph13 + 
  theme_classic() +
  labs(title = "Sales Price vs Half Bathrooms",
       x = "Sales Price (USD)",
       y = "Number of Half Bathrooms")

Sys.time()
training.graph14 <- ggplot(training_model, aes(x=SalePrice, y=BedroomAbvGr)) + geom_point()

Sys.time()
training.graph14

Sys.time()
training.graph14 <- training.graph14 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph14 + 
  theme_classic() +
  labs(title = "Sales Price vs Bedrooms Above Ground",
       x = "Sales Price (USD)",
       y = "Number of Bedrooms Above Ground")

Sys.time()
training.graph15 <- ggplot(training_model, aes(x=SalePrice, y=KitchenAbvGr)) + geom_point()

Sys.time()
training.graph15

Sys.time()
training.graph15 <- training.graph15 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph15 + 
  theme_classic() +
  labs(title = "Sales Price vs Kitchens Above Ground",
       x = "Sales Price (USD)",
       y = "Number of Kitchen Above Ground")

Sys.time()
training.graph16 <- ggplot(training_model, aes(x=SalePrice, y=TotRmsAbvGrd)) + geom_point()

Sys.time()
training.graph16

Sys.time()
training.graph16 <- training.graph16 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph16 + 
  theme_classic() +
  labs(title = "Sales Price vs Total Rooms Above Ground",
       x = "Sales Price (USD)",
       y = "Total Rooms Above Ground (not including bathrooms)")

Sys.time()
training.graph17 <- ggplot(training_model, aes(x=SalePrice, y=Fireplaces)) + geom_point()

Sys.time()
training.graph17

Sys.time()
training.graph17 <- training.graph17 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph17 + 
  theme_classic() +
  labs(title = "Sales Price vs Fireplaces",
       x = "Sales Price (USD)",
       y = "Number of Fireplaces")

Sys.time()
training.graph18 <- ggplot(training_model, aes(x=SalePrice, y=GarageYrBlt)) + geom_point()

Sys.time()
training.graph18

Sys.time()
training.graph18 <- training.graph18 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph18 + 
  theme_classic() +
  labs(title = "Sales Price vs Year Garage Built",
       x = "Sales Price (USD)",
       y = "Year Garage Built")

Sys.time()
training.graph19 <- ggplot(training_model, aes(x=SalePrice, y=GarageCars)) + geom_point()

Sys.time()
training.graph19

Sys.time()
training.graph19 <- training.graph19 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph19 + 
  theme_classic() +
  labs(title = "Sales Price vs Garage Size",
       x = "Sales Price (USD)",
       y = "Garage Size (number of cars)")

Sys.time()
training.graph20 <- ggplot(training_model, aes(x=SalePrice, y=GarageArea)) + geom_point()

Sys.time()
training.graph20

Sys.time()
training.graph20 <- training.graph20 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph20 + 
  theme_classic() +
  labs(title = "Sales Price vs Garage Area",
       x = "Sales Price (USD)",
       y = "Garage Area (sq ft)")

Sys.time()
training.graph21 <- ggplot(training_model, aes(x=SalePrice, y=WoodDeckSF)) + geom_point()

Sys.time()
training.graph21

Sys.time()
training.graph21 <- training.graph21 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph21 + 
  theme_classic() +
  labs(title = "Sales Price vs Wood Deck Square Footage",
       x = "Sales Price (USD)",
       y = "Wood Deck (sq ft)")

Sys.time()
training.graph22 <- ggplot(training_model, aes(x=SalePrice, y=OpenPorchSF)) + geom_point()

Sys.time()
training.graph22

Sys.time()
training.graph22 <- training.graph22 + geom_smooth(method = "lm", col = "purple")

Sys.time()
training.graph22 + 
  theme_classic() +
  labs(title = "Sales Price vs Open Porch Area",
       x = "Sales Price (USD)",
       y = "Open Porch (sq ft)")

Sys.time()
AmesTesting <- complete.cases(MIS470housingtesting_460x25_)
AmesTesting

Sys.time()
AmesTesting20 <- head(MIS470housingtesting_460x25_$SalePrice, 20)
AmesTesting20

Sys.time()
AmesTesting20 <- data.frame(SalesPrice = c(82000, 86000,232000,136905,181000,149900,163500,88000, 240000,102000,135000,100000,165000,85000,119200, 227000,203000,187500,160000,213490))
model <- lm(SalePrice~OverallQual, data = MIS470housingtesting_460x25_)
model
AmesTesting.Predict <- predict(model, newdata = MIS470housingtesting_460x25_)

Sys.time()
head(AmesTesting.Predict,20)
