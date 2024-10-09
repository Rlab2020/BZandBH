##benzene_c = benzene exposure as categorial exposure
##benzene_iqr = benzene exposure as continious exposure
##the secondary outcome included subcortical structures: nucleus accumbens; amygdala; caudate nucleus; hippocampus; globus pallidus; putamen; thalamus;
##Frontal lobe: caudal anterior cingulate cortex; caudal middle frontal gyrus; frontal pole; lateral orbitofrontal cortex; medial orbitofrontal cortex; paracentral lobule; pars opercularis; pars orbitalis; pars triangularis; precentral gyrus; rostral anterior cingulate cortex; rostral middle frontal gyrus; superior frontal gyrus;
##Temporal lobe: banks of superior temporal sulcus; entorhinal cortex; fusiform gyrus; inferior temporal gyrus; middle temporal gyrus; parahippocampal gyrus; superior temporal gyrus; transverse temporal gyrus;
##Parietal lobe: inferior parietal lobule; isthmus cingulate; postcentral gyrus; posterior cingulate cortex; precuneus; superior parietal lobule; supramarginal gyrus;
##Occipital lobe: cuneus; lateral occipital cortex; lingual gyrus; pericalcarine cortex;
##Insula lobe: insula.

library(lme4);library(lmerTest)




# ANALYSIS FOR BRAIN IMAGING PHENOTYPES -----------------------------------

model9 <- glm(acc_vol~benzene_c+fsp+road+lden+age+sex+imd+occup+cci0+whr+nosmoking+drinkingM+sleeph+regular+dieth,family='gaussian', data1)
model10 <- glm(acc_vol~benzene_iqr+fsp+road+lden+age+sex+imd+occup+cci0+whr+nosmoking+drinkingM+sleeph+regular+dieth,family='gaussian', data1)

##The associations of benzene exposure and other brain imaging phenotypes were also obtained by running the above code, respectively.

# ASSOCIATIONS BETWEEN BRAIN IMAGING PHENOTYPES AND BRAIN DISORDERS -----------------------------------

model <- glm("pd"~"acc_vol",family='binomial', data_image1)

##The associations of brain imaging phenotypes and other brain disorders were also obtained by running the above code, respectively.

