#Load USArrests dataset
names(USArrests)
plot(USArrests$Murder,USArrests$Rape,xlab = 'murder',ylab = 'rape',main = 'relationship between murder and rape')

plot(USArrests$Rape,USArrests$Assault,xlab = 'rape',ylab = 'assault',main = 'relationship between rape and assult')
# the murder and rape are not closely correlated 

plot(USArrests$UrbanPop,USArrests$Assault,xlab = 'urbanpop',ylab = 'assault',main = 'relationship between urbanpop and assault')
# urbanpop and assault are positive correlated

plot(USArrests$UrbanPop,USArrests$Murder,xlab = 'Urbanpop',ylab = 'murder',main = 'relationship between urbanpop and murder')
#Urbanpop and murder are not correlated

#Show which States has most assault, murder and rape arrests
USArrests[order(USArrests$Murder),][1,]
USArrests[order(USArrests$Assault),][1,]
USArrests[order(USArrests$Rape),][1,]

#List States have assault arrests more than median of the country
subset(USArrests,USArrests$Assault>median(USArrests$Assault))

# List the States are in the bottom 25% of murder
subset(USArrests,USArrests$Murder >= fivenum(USArrests$Murder)[4])
