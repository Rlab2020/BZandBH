##pd_time = follow-up period
##pd = brain disorder (1 or 0)
##bezene_c = benzene exposure as categorial exposure
##bezene_iqr = benzene exposure as continuous exposure


library(survival);library(survminer)


# ASSOCIATIONS BETWEEN BENZENE AND BRAIN DISORDERS -----------------------------------------------------------

model1 <- coxph(Surv(pd_time,pd)~benzene_c, data0)
model2 <- coxph(Surv(pd_time,pd)~benzene_c+fsp+road+lden+age+sex+imd, data0)
model3 <- coxph(Surv(pd_time,pd)~benzene_c+fsp+road+lden+age+sex+imd+occup+cci0+whr+nosmoking+drinkingM+sleeph+regular+dieth, data0)

model4 <- coxph(Surv(pd_time,pd)~benzene_iqr, data0)
model5 <- coxph(Surv(pd_time,pd)~benzene_iqr+fsp+road+lden+age+sex+imd, data0)
model6 <- coxph(Surv(pd_time,pd)~benzene_iqr+fsp+road+lden+age+sex+imd+occup+cci0+whr+nosmoking+drinkingM+sleeph+regular+dieth, data0)

##The associations of benzene exposure and dementia, migraine, epilepsy, major depression disorder, and anxiety disorder were also obtained by running the above code, respectively.

# INTERACTION ANALYSIS ----------------------------------------------------

model7 <- coxph(Surv(pd_time,pd)~benzene_c*sex+fsp+road+lden+age+imd+occup+cci0+whr+nosmoking+drinkingM+sleeph+regular+dieth, data0)
model8 <- coxph(Surv(pd_time,pd)~benzene_iqr*sex+fsp+road+lden+age+imd+occup+cci0+whr+nosmoking+drinkingM+sleeph+regular+dieth, data0)


##The interaction analyses for each brain disorder by age, whr,healthy lifestyle, population aging level, INFLA-score, and MetS were also obtained by running the above code, respectively.



