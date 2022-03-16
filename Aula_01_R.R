install.packages('ggplot2')
library(ggplot2)

a <- -10:10;a

f1 <- a+5;f1

f2 <- (a**2)/10 -a -5;f2

df <- data.frame(a,f1,f2);df

head(df)

p <- ggplot (df, aes(x=a));p

p <- p + geom_point(aes(y=f1, colour='f1'));p

p <- p + geom_line(aes(y=f2, colour='f2'));p

p <- p + labs(x='X', y='Y', colour= "Legenda", title="Test");p

p <- p + theme_dark();p 

p <- p + theme(plot.title = element_text(hjust = 0.5));p

p <- p + theme(axis.title = element_text(color='blue'));p

p <- p + theme(legend.position = 'bottom');p

faithful

ggplot(faithful, aes(x= waiting, y=eruptions)) + geom_point()

ggplot(faithful, aes(x= waiting, y=eruptions)) + geom_point() + geom_smooth()

airquality

ggplot(airquality,aes(x=Temp, y=Month)+geom_point(aes(colour=Temp),alpha = 0.5) + scale_color_continuous(low = 'blue', high = 'red'))


ny <- airquality

ny$Month <- factor(month.abb[ny$Month], levels = month.abb, ordered = TRUE)

ggplot(ny, aes(x=Month, y=Temp, group= Month) ) + geom_boxplot()

ny$Windy <- ifelse(ny$Wind > 10, 'Windy', 'notWind')
ny

ggplot(ny, aes(x=Month, y= Temp, group = Month, fill=Month)) + geom_boxplot() + facet_wrap(~ Windy)


ggplot(ny, aes(x=Temp))+ geom_histogram(bins = 5)

ny$TempC <- (ny$Temp -32) * 5/9
ny


Titanic

tdf <- as.data.frame(Titanic)

ggplot(tdf, aes (x= Class, weight = Freq)) + geom_bar()

ggplot(tdf, aes (x= Class, weight = Freq, fill=Survived)) + geom_bar(position = position_dodge())


AirPassengers

Year <- as.numeric(time(AirPassengers))

Passengers <- as.matrix(AirPassengers)
Passengers

air <- data.frame(Year, Passengers)
air

ggplot(air, aes(x=Year, y=Passengers)) + geom_line() 
