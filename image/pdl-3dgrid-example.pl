#!/usr/bin/env perl

use strict;
use warnings;

use PDL;
use PDL::Graphics::Gnuplot;

my $rv = rvals(51,51)/25 * 3.14159 * 4;
my $z = cos($rv) / (0.25 + $rv/3.15159);
#my $w = gpwin('png',output=>'pdl-3dgrid-example.png',size=>[8,5,'in'],enhanced=>1);
my $w = gpwin('svg',output=>'pdl-3dgrid-example.svg');
$w->plot3d({title=>"'with lines' in 3D mode gives a grid"}, with=>'lines', $z);
