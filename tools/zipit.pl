my $service = $ARGV[0]; $service =~ s/\/$//;
my $zipfile = lc $service;

for ($zipfile) {
    s/workflow$/zip/;
    s/\W/_/g;
    s/__+/_/g;
    s/_zip/.zip/;
}

print $zipfile;

qx/zip -x "\*~" -r "$zipfile" "$service"/;
