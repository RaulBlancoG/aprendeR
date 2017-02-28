mtcars
mtcars%>%select(mpg)
mtcars%>%group_by(cyl)%>%summarise(sd(hp))                           
mutate(mtcars,prod=qsec+disp)
mtcars%>%filter(am==1)%>%head(10)%>%select(hp)
#para que reconozca los caracteres '' 
#tiene que ponerse el comando contains
