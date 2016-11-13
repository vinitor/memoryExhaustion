#!/usr/bin/perl

# this script must be run from cron

# defines
#use Net::Telnet::Cisco;
#$session = Net::Telnet::Cisco->new(Host=>'192.168.254.254');
#$session->login('admin','admintcrwdr');

%IPS = (
	Gateway => '192.168.254.254',
	WAN => '173.87.157.174',
	LocalNIC => '192.168.254.4', 
	LocalIP3 => '192.168.254.3', 
	LocalIP5 => '192.168.254.5', 
	LocalIP6 => '192.168.254.6', 
	GOOGLE => 'www.google.com',
	YAHOO => 'www.yahoo.com',
	YOUTUBE => 'www.youtube.com',
	PRINTER => '192.168.254.2',
	CONTORL => 'xxx.unknown.com' );

 $admin   = "admin";

 $netdev  = "eth0";

 $msgbody = "I think the network is down!";

 $msgsub  = "Network Down!";

sub pingtest($$) {
  my ($ping) = @_;
  system(sprintf("ping -i 1 -q -I %s -c 1 %s>/dev/null", $netdev, $ping));
  $retcode = $? >> 8;
  # ping returns 1 if unable to connect
  return $retcode;

 }


# Check the Gateway. If the Gateway is up, then check the WAN.

@key_list = sort ( keys(%IPS));

while ( $key=shift(@key_list) ) {

   $PING_STATUS{$key} = &pingtest($IPS{$key});

} # End While
#
# Run through the status of each and indicate findings
#
@key_list = keys(%IPS);


while ( $key=shift(@key_list)) {

	( $PING_STATUS{$key} eq 0 ) && ( printf "[x] the $key can be reached\n" ) || ( print "[ ] the $key can not be reached\n" );

 } # END While Print
exit(0);
