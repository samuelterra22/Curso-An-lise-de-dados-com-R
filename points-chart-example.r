attach(mtcars)
plot(wt, mpg, type='n')

menor3 <- mtcars[which(wt < 3), ]
menor34 <- mtcars[which(wt >= 3 & wt <= 4), ]
menor4 <- mtcars[which(wt > 4), ]

points(menor3$wt, menor3$mpg, col='blue', pch=19)
points(menor34$wt, menor34$mpg, col='green', pch=19)
points(menor4$wt, menor4$mpg, col='red', pch=19)

detach(mtcars)