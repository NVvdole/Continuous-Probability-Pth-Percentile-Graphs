# File Name: ExponentialPPF.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  lamb <- as.double(readline(prompt = "Enter lambda: "))
  while (lamb <= 0.0) {
    lamb <- as.double(readline(prompt = "Enter lambda: "))
  }
  
  p <- seq(0.0, 1.0, 0.01)
  PPF <- qexp(p, lamb)
  
  plot(p, PPF, main = "Exponential Distribution PPF", type = "l")
  mtext(paste("lambda =", lamb), side = 3)
}
