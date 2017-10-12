#!/bin/Rscript

library(plot3D)
library(Cairo)

main <- function(args) {
  rgb_values = read.csv(args[1], sep=" ")
  colours = apply(rgb_values, 1, function(x) rgb(x[1], x[2], x[3], max=255))
  
  # png(filename=paste(args[2], '.png', sep=''), type='cairo-png')
  Cairo(file=paste(args[2], '.png', sep=''), type='png', units='in', width=20, height=20, dpi=96)
  scatter3D(rgb_values$r, rgb_values$g, rgb_values$b, colvar=NULL,
            col=colours, clab=c('R', 'G', 'B'), pch=16, bty='b2', xlab='R', ylab='G', zlab='B')
  dev.off()
}

main(commandArgs(T))
  
# x <- seq(-4, 4, length=100)
# hx <- dnorm(x, mean=0, sd=0.5)
# hx2 <- dnorm(x, mean=1, sd=0.5)
# 
# plot(x, hx, type="l")
# lines(x, hx2)
# abline(v=0.5)
# 
# rgb_values = read.csv("c:/Users/Samuel/Desktop/rgb_values.txt", sep=" ")
# s3d2 <- scatterplot3d(rgb_values$r, rgb_values$g, rgb_values$b, color=colours, xlab='R', ylab='G', zlab='B', main="RGB-colour values of image pixels", pch=16)
# 
# lapply(rgb_values, function(x) print(x[]))
# colours = apply(rgb_values, 1, function(x) rgb(x[1], x[2], x[3], max=255))
# 
# Cairo(file="c:/Users/Samuel/Desktop/kekketje.png", type='png', units='in', width=20, height=20, dpi=96)
# scatter3D(rgb_values$r, rgb_values$g, rgb_values$b, colvar=NULL, col=colours, clab=c('R', 'G', 'B'), pch=16, bty='b2', xlab='R', ylab='G', zlab='B')
# dev.off()
