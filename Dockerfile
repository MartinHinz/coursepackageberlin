# get the base image, this one has R, RStudio and pandoc
FROM rocker/verse:3.4.1

# required
MAINTAINER Martin Hinz <martin.hinz@ufg.uni-kiel.de>

COPY . /coursepackageberlin

RUN . /etc/environment \

 && R --vanilla "options(repos='$MRAN'); devtools::install('/coursepackageberlin', dep=T)" \

 && R --vanilla "rmarkdown::render('/coursepackageberlin/analysis/analysis.rmd')"
