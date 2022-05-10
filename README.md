
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Help Ricardo Polanczyk

``` r
library(tidyverse)
library(writexl)
source("R/simulacao_plk.R")
```

## Simulação - Tabela 01

<img src="https://raw.githubusercontent.com/arpanosso/help_polanczyk/master/img/tab1.png" width="80%" style="display: block; margin: auto;" />

``` r
controle<-simula_plk(9.3,2.2)
lfcc_0315<-simula_plk(65.1,5.3)
lfcc_0085<-simula_plk(36.45,4.1)
lfcc_0296<-simula_plk(77.15,5.9)

mortalidade_total <- c(controle,lfcc_0315,lfcc_0085,lfcc_0296)
tratamento <- rep(c("controle","lfcc_0315","lfcc_0085","lfcc_0296"),rep(80,4))
bloco <- rep(rep(c("I","II","III","IV"),rep(20,4)),4)

tb <- tibble::tibble(tratamento, bloco, mortalidade_total)

tb |>
  group_by(tratamento) |>
  summarise(media = mean(mortalidade_total),
            epm = sd(mortalidade_total)/sqrt(4))
#> # A tibble: 4 x 3
#>   tratamento media   epm
#>   <chr>      <dbl> <dbl>
#> 1 controle    9.38  2.19
#> 2 lfcc_0085  36.4   4.10
#> 3 lfcc_0296  77.1   5.91
#> 4 lfcc_0315  65.1   5.29

write_xlsx(tb,"data/Tabela01.xlsx")
```

## Simulação - Tabela 02

<img src="https://raw.githubusercontent.com/arpanosso/help_polanczyk/master/img/tab2.png" width="80%" style="display: block; margin: auto;" />

``` r
controle<-simula_plk(12.1,3.8)
lfcc_0315<-simula_plk(35.2,5.7)
lfcc_0085<-simula_plk(41.1,5.3)
lfcc_0296<-simula_plk(34.01,4.2)

mortalidade_total <- c(controle,lfcc_0315,lfcc_0085,lfcc_0296)
tratamento <- rep(c("controle","lfcc_0315","lfcc_0085","lfcc_0296"),rep(80,4))
bloco <- rep(rep(c("I","II","III","IV"),rep(20,4)),4)

tb <- tibble::tibble(tratamento, bloco, mortalidade_total)

tb |>
  group_by(tratamento) |>
  summarise(media = mean(mortalidade_total),
            epm = sd(mortalidade_total)/sqrt(4))
#> # A tibble: 4 x 3
#>   tratamento media   epm
#>   <chr>      <dbl> <dbl>
#> 1 controle    12.1  3.79
#> 2 lfcc_0085   41.1  5.30
#> 3 lfcc_0296   34.0  4.23
#> 4 lfcc_0315   35.2  5.72

write_xlsx(tb,"data/Tabela02.xlsx")
```

## Simulação - Tabela 03

<img src="https://raw.githubusercontent.com/arpanosso/help_polanczyk/master/img/tab3.png" width="80%" style="display: block; margin: auto;" />

``` r
controle<-simula_plk(11.4,1.2)
lfcc_0315<-simula_plk(85.5,3.9)
lfcc_0085<-simula_plk(91.10,2.8)
lfcc_0296<-simula_plk(34.9,4.2)

mortalidade_total <- c(controle,lfcc_0315,lfcc_0085,lfcc_0296)
tratamento <- rep(c("controle","lfcc_0315","lfcc_0085","lfcc_0296"),rep(80,4))
bloco <- rep(rep(c("I","II","III","IV"),rep(20,4)),4)

tb <- tibble::tibble(tratamento, bloco, mortalidade_total)

tb |>
  group_by(tratamento) |>
  summarise(media = mean(mortalidade_total),
            epm = sd(mortalidade_total)/sqrt(4))
#> # A tibble: 4 x 3
#>   tratamento media   epm
#>   <chr>      <dbl> <dbl>
#> 1 controle    11.4  1.22
#> 2 lfcc_0085   91.2  2.81
#> 3 lfcc_0296   34.9  4.19
#> 4 lfcc_0315   85.4  3.89

write_xlsx(tb,"data/Tabela03.xlsx")
```

## Simulação - Tabela 04

<img src="https://raw.githubusercontent.com/arpanosso/help_polanczyk/master/img/tab4.png" width="80%" style="display: block; margin: auto;" />

``` r
controle<-simula_plk(5.4,.5)
lfcc_0315<-simula_plk(80.7,4.1)
lfcc_0085<-simula_plk(76.9,6.7)
lfcc_0296<-simula_plk(80.0,3.9)

mortalidade_total <- c(controle,lfcc_0315,lfcc_0085,lfcc_0296)
tratamento <- rep(c("controle","lfcc_0315","lfcc_0085","lfcc_0296"),rep(80,4))
bloco <- rep(rep(c("I","II","III","IV"),rep(20,4)),4)

tb <- tibble::tibble(tratamento, bloco, mortalidade_total)

tb |>
  group_by(tratamento) |>
  summarise(media = mean(mortalidade_total),
            epm = sd(mortalidade_total)/sqrt(4))
#> # A tibble: 4 x 3
#>   tratamento media   epm
#>   <chr>      <dbl> <dbl>
#> 1 controle     5.4 0.513
#> 2 lfcc_0085   76.9 6.70 
#> 3 lfcc_0296   80.0 3.92 
#> 4 lfcc_0315   80.7 4.13

write_xlsx(tb,"data/Tabela04.xlsx")
```
