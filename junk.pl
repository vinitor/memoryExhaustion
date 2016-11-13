#! /usr/bin/perl
use Time::Piece;
use Time::Seconds;
#
$start=time();
print localtime()."\n";
print time()."\n";;
sleep 1;
$end=time();
$run_time=$end-$start;
#
$Conversion=localtime($run_time);
#
print "run time: ".$Conversion->hours."\n";
