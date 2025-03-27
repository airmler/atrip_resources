#!/bin/bash

MPIRUN ... $atrip  --no 5 \
                   --nv 7 \
                   --dist group \
                   --ei EigenEnergiesH.elements \
                   --ea EigenEnergiesP.elements \
                   --Tpphh AmplitudesPPHH.elements \
                   --Tph AmplitudesPH.elements \
                   --Vpphh CoulombIntegralsPPHH.elements \
                   --Vppph CoulombIntegralsPPPH.elements \
                   --Vhhhp CoulombIntegralsHHHP.elements \
                   --Jhhhp CtintermediateHHHP.elements   \
                   --Jppph CtintermediatePPPH.elements   \
                   --ei-from-ctf=0    \
                   --ea-from-ctf=0    \
                   --Tpphh-from-ctf=0 \
                   --Tph-from-ctf=0   \
                   --Vpphh-from-ctf=0 \
                   --Vhhhp-from-ctf=0 \
                   --Vppph-from-ctf=0 \
                   --Jhhhp-from-ctf=0 \
                   --Jppph-from-ctf=0 
