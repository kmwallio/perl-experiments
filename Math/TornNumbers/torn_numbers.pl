#!/usr/bin/perl

my @tens = (3, 4, 5, 6, 7, 8, 9);
my @ones = (1, 4, 5, 6, 9);

sub check_it{
	my $num = shift;
	
	my $square = "" . ($num * $num);
	
	if ($square =~ m/^(\d\d)(\d\d)$/) {
		my $front = int($1);
		my $rear = int($2);
		if ($front + $rear == $num) {
			print $square ."\n";
		}
	}
	
}

for my $t (@tens) {
	for my $o (@ones) {
		check_it(10 * $t + $o);
	}
}
