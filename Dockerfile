# get the base image, this one has R, RStudio and pandoc
FROM rocker/verse:3.4.1

# required
MAINTAINER Martin Hinz <martin.hinz@ufg.uni-kiel.de>

COPY . /coursepackageberlin

RUN . /etc/environment \

 && R -e "options(repos='$MRAN'); install_github('MartinHinz/coursepackageberlin') hello world" \

 && R -e "rmarkdown::render('coursepackageberlin/analysis/analysis.rmd')"
