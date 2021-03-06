#!/usr/bin/perl


sub ssf2tnt {
	my $line;
	while ($line = <>)
	{
		chomp($line);
		if($line =~ /^\s*$/)  # if the line has all space charcters 
		{
			print "\n";
			next;
		}
		$line=~s/[ ]+/___/g;
		my ($att1,$att2,$att3,$att4) = split (/[\t]+/, $line);
		if($att1 =~ /$\<.*/ || $att2 eq "((" || $att2 eq "))") #unwanted lines
		{
			next;
		}
		else
		{
			print $att2,"\t",$att4,"\n";
		}
	}
}
&ssf2tnt;
