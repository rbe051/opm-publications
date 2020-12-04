#!/usr/bin/env python
import os;

base="SPE5CASE"
cases=["1", "2", "3"]
#cases=["2"]
#models=["DYN", "FIXED", "E300", "SOLVENT"]
models=["DYN", "FIXED", "SOLVENT"]

flow = "~/workspace/opm/opm-simulators/build/bin/flow "
#flow = "~/workspace/opm/opm-simulators/build/bin/ebos_extbo "
dir="results"
output = " --output-dir="+dir +" --enable-opm-rst-file=true --tolerance-mb=0.8e-6"
ecl = "/ecl/macros/@e300 "

for case in cases:
 for model in models:
   name = base + case + "_" + model
   print name
   if (model == "E300"):
     os.system(ecl + name)
   else:
     os.system(flow + name + output)