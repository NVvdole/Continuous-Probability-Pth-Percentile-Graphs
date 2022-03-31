# File Name: ChiSquarePPF.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  df <- as.integer(readline(prompt = "Enter df: "))
  while (df < 1) {
    df <- as.integer(readline(prompt = "Enter df: "))
  }
  
  p <- seq(0.0, 1.0, 0.01)
  PPF <- qchisq(p, df)
  
  plot(p, PPF, main = "Chi-Square Distribution PPF", type = "l")
  mtext(paste("df =", df), side = 3)
}
