# File Name: FPPF.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  df1 <- as.integer(readline(prompt = "Enter df1: "))
  while (df1 < 1) {
    df1 <- as.integer(readline(prompt = "Enter df1: "))
  }
  
  df2 <- as.integer(readline(prompt = "Enter df2: "))
  while (df2 < 1) {
    df2 <- as.integer(readline(prompt = "Enter df2: "))
  }
  
  p <- seq(0.0, 1.0, 0.01)
  PPF <- qf(p, df1, df2)
  
  plot(p, PPF, main = "F-Distribution PPF", type = "l")
  mtext(paste("df1 =", df1, " df2 =", df2), side = 3)
}
