# File Name: TPPF.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  df <- as.double(readline(prompt = "Enter df: "))
  while (df <= 0.0) {
    df <- as.double(readline(prompt = "Enter df: "))
  }
  
  p <- seq(0.0, 1.0, 0.01)
  PPF <- qt(p, df)
  
  plot(p, PPF, main = "T-Distribution PPF", type = "l")
  mtext(paste("df =", df), side = 3)
}
