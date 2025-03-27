#!/bin/bash


atrip=~/src/atrip/build/bench/atrip
hhhp="CoulombIntegralsHHHP.elements"
pphh="CoulombIntegralsPPHH.elements"
ppph="CoulombIntegralsPPPH.elements"
ei="EigenEnergiesSliced.components.h.elements"
ea="EigenEnergiesSliced.components.p.elements"
tai="Amplitudes.components.ph.elements"
tabij="Amplitudes.components.pphh.elements"
Jppph="CtIntermediate.components.ppph.elements"
Jhhhp="CtIntermediate.components.hhhp.elements"



mpirun -np 32 $atrip --no 4 --nv 36 --dist group --barrier --nocheckpoint -% 50 \
--ei $ei --ea $ea --Tpphh $tabij --Tph $tai --Vpphh $pphh --Vhhhp $hhhp --Vppph $ppph \
--Jppph $Jppph --Jhhhp $Jhhhp --cT
