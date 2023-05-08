# atrip_resources
Input files to verify atrip using bench

Usage: run (the correct version of) ```bench/atrip``` the following way:

exe=$ATRIP/build/bench/atrip \
hhhp="CoulombIntegrals.components.hhhp.elements" \
pphh="CoulombIntegrals.components.pphh.elements" \
ppph="CoulombIntegrals.components.ppph.elements" \
ei="EigenEnergies.components.h.elements" \
ea="EigenEnergies.components.p.elements" \
tai="Amplitudes.components.ph.elements" \
tabij="Amplitudes.components.pphh.elements"

srun $exe --no 4 --nv 36 --dist group --barrier --nocheckpoint -% 50 --ei $ei --ea $ea \\ \
          --Tpphh $tabij --Tph $tai --Vpphh $pphh --Vhhhp $hhhp --Vppph $ppph 

Executed in a directory where the provided files are located. \
The correct (T) energy for this calculation is \
-0.005239608018571

The correct (cT) energy for this calculation is \
-0.0048452100

which can be obtained with atrip (commit: c6d8056be) in the following way:

Jppph="atrip_resources/ctIntermediate.components.ppph.elements"
Jhphh="atrip_resources/ctIntermediate.components.hphh.elements"

mpirun -np 4 ../atrip --no 4 --nv 36 --dist group --barrier --nocheckpoint -% 50 \\ \
       --ei $ei --ea $ea --Tpphh $tabij --Tph $tai --Vpphh $Vpphh --Vhhhp $Vhhhp --Vppph $Vppph \\ \
       --Jppph $Jppph --Jhphh $Jhphh --cT


System taken from: \
https://github.com/cc4s/test-resources/tree/master/h2o/dz \
which is used here \
https://github.com/cc4s/cc4s/tree/master/test/tests/h2o/dz
