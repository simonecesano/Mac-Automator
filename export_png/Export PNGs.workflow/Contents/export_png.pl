use strict;

my ($file, $number) = @ARGV;

# open STDERR, '>> ' . $ENV{HOME} . '/log.txt';

$\ = "\n"; $, = "\t";

$number ||= 1;

my $service = $ENV{'HOME'} . '/Library/Services/Export PNGs.workflow/Contents';
my $pngpaste = $service . '/pngpaste';

my $path = $file =~ s/\.[^\.]+$//r;

mkdir($path) unless -e $path;
my $output = $path . '/' . sprintf("export_%03d.png", $number);

qx/"$pngpaste" "$output"/;
