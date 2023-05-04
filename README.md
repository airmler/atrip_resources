# atrip_resources
Input files to verify atrip using bench

Usage: run (the correct version of) ```test_main``` the following way:

exe=$ATRIP/build/bench/test_main \
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
The correct energy for this calculation is \
-0.005239608018571


System taken from: \
https://github.com/cc4s/test-resources/tree/master/h2o/dz \
which is used here \
https://github.com/cc4s/cc4s/tree/master/test/tests/h2o/dz
