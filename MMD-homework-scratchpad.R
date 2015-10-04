#Mining Massive Datasets
#Scratchpad


###Week 1 homework###

M<-matrix(c(0,1,1,0,0,1,0,0,1),3,3)
B<-rep((1-0.7)/3,3)
r<-rep(1,3)


for(i in 1:3) {
r<-0.7*M%*%r+B
S<-sum(r)
r<-r+((3-S)/3)
}

r[1]+r[3]

 M<-matrix(c(0,0.5,0.5,0,0,1,1,0,0),3,3)
B<-1
r<-rep(1,3)

for(i in 1:4) {
    r<-M%*%r
    #S<-sum(r)
   # r<-r+((1-S)/3)
}

r[1]
0.15*r[2]+r[3]
r[2]*0.575*r[1]

r[2]*0.95
r[1]*0.475+r[3]*0.05
r*3

a<-0.85*c
b<-0.85*a/2
c<-).85*(b+a/2)

require(schoolmath)
prime.factor(15)
prime.factor(21)
prime.factor(24)
prime.factor(30)
prime.factor(49)

15+21+24+30
21+49

## Week 2 homework ##

r = 3
b = 2

#jaccard distance for signature matrix M[c1:c7]

require(sets)

c1 <- set(1,2,3,4,5,6)
c2 <- set(2,3,1,1,2,1)
c3 <- set(1,4,2,3,5,6)
c4 <- set(1,2,3,1,1,4)
c5 <- set(2,3,1,2,1,1)
c6 <- set(5,2,3,4,5,1)
c7 <- set(4,2,2,4,1,4)

M <- list(c1,c2,c3,c4,c5,c6,c7)
results <- matrix(nrow = 7,ncol = 7)

for (i in 1:5) {
    for(j in 2:6) {
        results[i,j]<-(set_similarity(M[[i]], M[[j]], method = "Jaccard"))
        
    }
}

set_similarity(c1,c2,method = "Jaccard")

#answers
#1 3 pairs at distance 3
#2 minhash val for C4 is R3
#3 C2 and C5
#4 Jaccard similiarity is 5/9
#5 N/A
#6 (51,18)

D<- matrix(nrow=3,ncol = 2,data = c(51,0,100,18,0,40))

dist(D,method="euclidean")
dist(D,method="manhattan")

#quick check against (55,5)

D<- matrix(nrow=3,ncol = 2,data = c(55,0,100,5,0,40))

dist(D,method="euclidean")
dist(D,method="manhattan")

b = 1000; r = 10
(1/b)^1/r
