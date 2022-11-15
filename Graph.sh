#!/bin/bash

#
cd dgemm/Mesure
bash Graph_dgemm.sh
cd ..
cd ..


#
cd dotprod/Mesure
bash Graph_dotprod.sh
cd ..
cd ..


#
cd reduc/Mesure
bash Graph_reduc.sh
cd ..
cd ..
