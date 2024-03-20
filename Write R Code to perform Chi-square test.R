#Write R Code to perform Chi-square test  to check the dependency between smoking habits and exercise practice.
library(MASS)
print(str(survey))
stu_data <- table(survey$Smoke, survey$Exer)
print(stu_data)
chi_sq_result <- chisq.test(stu_data)
print(chi_sq_result)
