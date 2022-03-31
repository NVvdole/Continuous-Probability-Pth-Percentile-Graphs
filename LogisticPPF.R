# File Name: LogisticPPF.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  mu <- as.double(readline(prompt = "Enter mu: "))
  
  sig <- as.double(readline(prompt = "Enter sigma: "))
  while (sig <= 0.0) {
    sig <- as.double(readline(prompt = "Enter sigma: "))
  }
  
  p <- seq(0.0, 1.0, 0.01)
  PPF <- qlogis(p, mu, sig)
  
  plot(p, PPF, main = "Logistic Distribution PPF", type = "l")
  mtext(paste("mu =", mu, " sigma =", sig), side = 3)
}
