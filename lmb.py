#! /usr/bin/python
#
import pycurl
import time
import sys
#
# OPen the MB Title DB and read/write it
#
sys.stdout =open('mbc.py.o','w')
c = pycurl.Curl()
c.setopt(c.URL, 'http://www.senecawaterways.org/members_mbcSWW.php')
#
with open('mbTitle.dat','r') as mb:
	for line in mb:
		fields=[('frmZipCode','14467'),('frmMeritBadge',line),('action','search')]
		c.setopt(c.HTTPPOST,fields)
	 	c.perform()
		# print "downloaded",line,"sleeping 5"
		time.sleep(5)

mb.close
mbc.close
