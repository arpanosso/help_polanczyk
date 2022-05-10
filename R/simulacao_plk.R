simula_plk<-function(media, epm){
  epsilon <- 100
  gamma <- 100
  while(epsilon > 0.01 | gamma > 0.01){
    s1 <- rnorm(20,media,epm*sqrt(4))
    s2 <- rnorm(20,media,epm*sqrt(4))
    s3 <- rnorm(20,media,epm*sqrt(4))
    s4 <- rnorm(20,media,epm*sqrt(4))
    vetor <- c(s1,s2,s3,s4)
    epsilon = abs(media - mean(vetor))
    gamma = abs(epm - sd(vetor)/sqrt(4))

  }
  return(round(vetor))
}
