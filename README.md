
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Help Ricardo Polanczyk

``` r
library(tidyverse)
library(writexl)
library(ExpDes.pt)
source("R/simulacao_plk.R")
```

## Simulação - Tabela 01

<img src="https://raw.githubusercontent.com/arpanosso/help_polanczyk/master/img/tab1.png" width="80%" style="display: block; margin: auto;" />

``` r
controle <- simulacao_plk(80,9.3,2.2)
lfcc_0315 <- simulacao_plk(82,65.1,5.3)
lfcc_0085 <- simulacao_plk(89,36.45,4.1)
lfcc_0296 <- simulacao_plk(79,77.15,5.9)

tb<-tibble(tratamento=rep(c("controle","lfcc_0315","lfcc_0085","lfcc_0296"),
                      c(80,82,89,79)),
       mortalidade_total = c(controle, lfcc_0315,lfcc_0085,lfcc_0296))
write_xlsx(tb,"data/Tabela01.xlsx")
```

## Simulação - Tabela 02

<img src="https://raw.githubusercontent.com/arpanosso/help_polanczyk/master/img/tab2.png" width="80%" style="display: block; margin: auto;" />

``` r
controle <- simulacao_plk(99,12.1,3.8)
lfcc_0315 <- simulacao_plk(98,35.2,5.7)
lfcc_0085 <- simulacao_plk(95,41.10,5.3)
lfcc_0296 <- simulacao_plk(99,34.01,4.2)

tb<-tibble(tratamento=rep(c("controle","lfcc_0315","lfcc_0085","lfcc_0296"),
                      c(99,98,95,99)),
       mortalidade_total = c(controle, lfcc_0315,lfcc_0085,lfcc_0296))
write_xlsx(tb,"data/Tabela02.xlsx")
```

## Simulação - Tabela 03

<img src="https://raw.githubusercontent.com/arpanosso/help_polanczyk/master/img/tab3.png" width="80%" style="display: block; margin: auto;" />

``` r
controle <- simulacao_plk(84,11.4,1.2)
lfcc_0315 <- simulacao_plk(82,85.5,3.9)
lfcc_0085 <- simulacao_plk(82,91.10,2.8)
lfcc_0296 <- simulacao_plk(81,34.90,4.2)

tb<-tibble(tratamento=rep(c("controle","lfcc_0315","lfcc_0085","lfcc_0296"),
                      c(84,82,82,81)),
       mortalidade_total = c(controle, lfcc_0315,lfcc_0085,lfcc_0296))
write_xlsx(tb,"data/Tabela03.xlsx")
```

## Simulação - Tabela 04

<img src="https://raw.githubusercontent.com/arpanosso/help_polanczyk/master/img/tab4.png" width="80%" style="display: block; margin: auto;" />

``` r
controle <- simulacao_plk(80,5.4,.5)
lfcc_0315 <- simulacao_plk(78,80.7,4.1)
lfcc_0085 <- simulacao_plk(82,76.90,9.7)
lfcc_0296 <- simulacao_plk(80,80.00,3.9)

tb<-tibble(tratamento=rep(c("controle","lfcc_0315","lfcc_0085","lfcc_0296"),
                      c(80,78,82,80)),
       mortalidade_total = c(controle, lfcc_0315,lfcc_0085,lfcc_0296))
write_xlsx(tb,"data/Tabela04.xlsx")
```
