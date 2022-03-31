# File Name: WeibullPPF.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  alpha <- as.double(readline(prompt = "Enter alpha: "))
  while (alpha <= 0.0) {
    alpha <- as.double(readline(prompt = "Enter alpha: "))
  }
  
  beta <- as.double(readline(prompt = "Enter beta: "))
  while (beta <= 0.0) {
    beta <- as.double(readline(prompt = "Enter beta: "))
  }
  
  x <- seq(0.0, 1.0, 0.01)
  PPF <- qweibull(p, alpha, beta)
  
  plot(p, PPF, main = "Weibull Distribution PPF", type = "l")
  mtext(paste("alpha =", alpha, " beta =", beta), side = 3)
}
