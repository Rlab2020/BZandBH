
library(lavaan)


# CFA -----------------------------------------------------------

cfamodel <- "
disease =~ deme + mdd + gad
brain =~ laorf_vol+pcl_vol+rac_vol+rmf_vol+sf_vol+stp_vol+amyg_vol+tha_vol
infla =~ neut + mono + lym + crp
metab =~ hba1c + ldl + apoa

# regressions
disease ~ bz3 + brain + infla + metab
brain ~ bz3 + infla + metab
metab ~ bz3 + infla
infla ~ bz3
"

fitmod1 <- sem(cfamodel, data=data_sem, std.lv = TRUE)
summary(fitmod1, rsquare=T)



# SEM ----------------------------------------------------

sem_model <- "
# measurement model
brain =~ laorf_vol+pcl_vol+rac_vol+rmf_vol+sf_vol+stp_vol+amyg_vol+tha_vol
infla =~ neut + mono + lym + crp
metab =~ hba1c + ldl + apoa + lpa

# structural model
deme ~ bz3 + brain + infla + metab
brain ~ bz3 + infla + metab
metab ~ bz3 + infla
infla ~ bz3
"
fit <- sem(semmodel, data=data_sem, ordered = c("md"), std.lv=T)
summary(fit, fit.measures=TRUE)