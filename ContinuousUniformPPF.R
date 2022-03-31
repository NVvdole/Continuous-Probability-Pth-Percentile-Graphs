# File Name: ContinuousUniformPPF.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  a <- as.double(readline(prompt = "Enter a: "))
  
  b <- as.double(readline(prompt = "Enter b: "))
  while (b <= a) {
    b <- as.double(readline(prompt = "Enter b: "))
  }
  
  p <- seq(0.0, 1.0, 0.01)
  PPF <- qunif(p, min = a, max = b)
  
  plot(p, PPF, main = "Continuous Uniform Distribution PPF", type = "l")
  mtext(paste("a =", a, " b =", b), side = 3)
}
