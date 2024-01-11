


### MAIN ANALYSIS ###

model1 <- coxph(Surv(pd_time,pd)~benzene_c, data0)
model2 <- coxph(Surv(pd_time,pd)~benzene_c+fsp+nox+age+sex+imd, data0)
model3 <- coxph(Surv(pd_time,pd)~benzene_c+fsp+nox+age+sex+imd+cci0+whr+nosmoking+nodrinking+sleeph+regular+dieth, data0)

model4 <- coxph(Surv(pd_time,pd)~benzene_iqr, data0)
model5 <- coxph(Surv(pd_time,pd)~benzene_iqr+fsp+nox+age+sex+imd, data0)
model6 <- coxph(Surv(pd_time,pd)~benzene_iqr+fsp+nox+age+sex+imd+cci0+whr+nosmoking+nodrinking+sleeph+regular+dieth, data0)


### INTERACTION ANALYSIS ###
model7 <- coxph(Surv(pd_time,pd)~benzene_c*sex+fsp+nox+age+imd+cci0+whr+nosmoking+nodrinking+sleeph+regular+dieth, data0)
model8 <- coxph(Surv(pd_time,pd)~benzene_iqr*sex+fsp+nox+age+imd+cci0+whr+nosmoking+nodrinking+sleeph+regular+dieth, data0)


### ANALYSIS FOR BRAIN IMAGING PHENOTYPES ###
model9 <- glm(pd~benzene_c+fsp+nox+age+sex+imd+cci0+whr+nosmoking+nodrinking+sleeph+regular+dieth,family='gaussian', data1)
model10 <- glm(pd~benzene_iqr+fsp+nox+age+sex+imd+cci0+whr+nosmoking+nodrinking+sleeph+regular+dieth,family='gaussian', data1)
