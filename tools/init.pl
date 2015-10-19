use strict;

my $path = $ARGV[0]; $path =~ s/\/$//;
my $service = $path; $service = [ grep { /\.workflow/ } split /\//, $service ]->[0];
