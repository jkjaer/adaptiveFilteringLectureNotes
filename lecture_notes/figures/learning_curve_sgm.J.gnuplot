set table "figures/learning_curve_sgm.J.table"; set format "%.5f"
set samples 100.0; plot [x=0:6] 0.5+5*2**(-2*x-1)
