#!/bin/bash

#
cd dgemm
bash Mesure_dgemm.sh
cd ..


#
cd dotprod
bash Mesure_dotprod.sh
cd ..


#
cd reduc
bash Mesure_reduc.sh
cd ..

