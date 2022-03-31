# File Name: GammaPPF.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  alpha <- as.double(readline(prompt = "Enter alpha: "))
  while (alpha <= 0.0) {
    alpha <- as.double(readline(prompt = "Enter alpha: "))
  }
  
  lamb <- as.double(readline(prompt = "Enter lambda: "))
  while (lamb <= 0.0) {
    lamb <- as.double(readline(prompt = "Enter lambda: "))
  }
  
  p <- seq(0.0, 1.0, 0.01)
  PPF <- qgamma(p, alpha, lamb)
  
  plot(p, PPF, main = "Gamma Distribution PPF", type = "l")
  mtext(paste("alpha =", alpha, " lambda =", lamb), side = 3)
}
