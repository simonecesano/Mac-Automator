use strict;

my $service = $ARGV[0]; $service =~ s/\/$//;
my $folder = lc $service;

$\ = "\n";

for ($folder) { s/\.workflow$//; s/\W/_/g; s/__+/_/g; }

my $data = join "\n", map { chop; $_ } <DATA>; 
$data =~ s/FOLDER/$folder/g;
print $data;

__DATA__
cd ~/Library/Services/
curl -L https://github.com/simonecesano/Mac-Automator/raw/master/FOLDER/FOLDER.zip > FOLDER.zip
unzip -o FOLDER.zip
rm FOLDER.zip
