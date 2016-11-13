#! /usr/bin/python
S1="hello hello"
S2="Amanda Llewellyn Redman"
salutation = S1 + " " + S2
RunMax=5000
RunSequence=0
FullCounter=0

def RunHeader (salutation) :
   start="[ ------------------- " + str(RunSequence) + " of " + str(RunMax) + "---- ]"
   #
   print salutation
   #
   print "indexing"
   print salutation[4] + salutation[len(salutation)-3]
   print salutation[1] + salutation[len(salutation)-7]
   #4
   i=0
   size=len(salutation)
   salutation=list(salutation)
   print start

def OutIt(InString) :
   i=0
   size=len(InString)

   while  ( i < size  ) :
      print "   " + InString[i] + InString[i-1] 
      i=i+1

   while  ( i < size  ) :
      print "   " + InString[i]
      i=i+1
      print "Outit done"


def RunFooter (salutation) :
   start="[ ------------------- " + str(RunSequence) + " of " + str(RunMax) + "---- ]"
   print start

while ( RunSequence <= RunMax ) :
   RunHeader(salutation)
   OutIt(salutation)
   RunFooter(salutation)
   RunSequence=RunSequence+1
   FullCounter=FullCounter+1

print "FullCounter : " + str(FullCounter)

for i in range(5,35,1):
	print i
