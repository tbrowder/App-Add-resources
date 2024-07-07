#!/usr/bin/env raku

use JSON::Fast <sorted-keys>;
use File::Find;

my $f = "../META6.json";

# read it
my %c = from-json $f.IO.slurp;

# get the "name" which should be the
# "parent" of my new "Resources" module
my $name = %c<name>;
say "module name: $name";

# get the existing 'lib' file contents
# depth first? yes, that's the default
my @libs = find :dir<../lib>, :type<file>;
say "libs:";
say "  $_" for @libs;
#exit;
# get the existing 'lib' dir contents
my @dirs = find :dir<../lib>, :type<dir>;
say "dirs:";
say "  $_" for @dirs;

# inspect the "provides" section
my %p = %c<provides>;
# $name should be one of the keys
if %p{$name}:exists {
    say "primary module: $name";
    my $f = %p{$name};
    say "its file name : $f";
    my $cdir = $f.IO.basename;
    my $pdir = $f.IO.parent;
    $pdir .= Str.stem;
    say "its child  lib: $pdir/$cdir";
}
else {
}


# add Resources
#say %p.gist;
exit;

# write it out after modifying it

my $f2   = "revised-meta.json";
my $jstr = to-json %c;
$f2.IO.spurt: $jstr;
say "See revised META6: $f2";

