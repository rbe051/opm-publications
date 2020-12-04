#!/usr/bin/env python
from ecl.summary import EclSum
import ecl
from ecl.eclfile import EclFile
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker

from datetime import datetime  
from datetime import timedelta
import numpy as np
base="SPE5CASE"
cases=["1", "2", "3"]
#cases=["2"]
models=["DYN", "FIXED","SOLVENT", "E300"] #"E300"
modelsName = ["DYNAMIC", "FIXED","STANDARD", "COMPOSITIONAL"]
#models = ["E300"]
path=""
dir="results/"
keys=["WOPR", "WGPR", "WWPR", "WOPT", "WGPT", "WWPT"]
titles = ["Oil production rate [Stb/day]", "Gas production rate [MSCF/day]", 
"Water production rate [Stb/day]", "Total oil production [Stb]",
"Total gas production [Stb]", "Total water production [Stb]"]
rstkeys = ["SOIL", "SGAS", "SWAT", "PRESSURE", "RS", "SSOLVENT"]
rstTitle = ["Oil saturation", "Gas saturation", "Water saturation", "Pressure [Psia] ", "Rs [Stb/MSCF]", "Solvent saturation"]
well="PROD"
# pick cell [3,3,1]
cell_idx = (0 * 49) + (2 * 7) + 2

plt.rcParams.update({'axes.titlesize': 'x-large'})
plt.rcParams.update({'axes.labelsize': 'x-large'})
plt.rcParams.update({'xtick.labelsize': 'x-large'})
plt.rcParams.update({'ytick.labelsize': 'x-large'})

for key,title in zip(keys,titles):
  for case in cases:
    legend_str = []
    for model, modelname in zip(models, modelsName):
      name = base + case + "_" + model
      pathtmp = path
      if (model != "E300"):
        pathtmp = path + dir
      
      summary = EclSum("%s%s.SMSPEC" % (pathtmp,name))
      years = summary.numpy_vector("YEARS")
      data = summary.numpy_vector(key+":"+well)
      plt.plot(years,data)
      legend_str.append(modelname)
 
    plt.title(title)
    plt.xlabel("years")
    plt.legend(legend_str, loc = 'best')
    plt.savefig(dir + key + case + ".png")
    plt.close()

for key, title in zip(rstkeys, rstTitle):
  for case in cases:
    legend_str = []
    for model, modelname in zip(models, modelsName):
      name = base + case + "_" + model
      pathtmp = path
      if (model != "E300"):
        pathtmp = path + dir
		
      summary = EclSum("%s%s.SMSPEC" % (pathtmp,name))
      report_time = summary.numpy_vector("YEARS", report_only=True)
      restart_file = EclFile("%s%s.UNRST" % (pathtmp,name))
      if (key == "SSOLVENT" and model !="SOLVENT"):
        continue
		
      data_rst = []
      if (key == "SOIL"):
        sgass = restart_file["SGAS"][:]
        swats = restart_file["SWAT"][:]
        ssols = sgass
        if (model == "SOLVENT"):
          ssols = restart_file["SSOLVENT"][:]
        
        for sgas,swat,ssol in zip(sgass, swats, ssols):
          soil = 1.0 - sgas[cell_idx] - swat[cell_idx]
          if (model == "SOLVENT"):
            soil -= ssol[cell_idx] 
          data_rst.append(soil)

      else:
        datas = restart_file[key][:]
        for data in datas:
          data_rst.append(data[cell_idx])
	  
      if (model != "E300"):
        data_rst = data_rst[1:]
        
      plt.plot(report_time, data_rst, lw=2)
      legend_str.append(modelname)
	  
    plt.title(title)
    plt.xlabel("years")
    plt.legend(legend_str, loc = 'best')
    plt.savefig(dir + key + case + ".png")
    plt.close()
