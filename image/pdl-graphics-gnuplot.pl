#!/usr/bin/env perl

use strict;
use warnings;
use PDL;
use PDL::Graphics::Gnuplot;
use PDL::Constants qw(PI);

my $gp = gpwin();
# do some styling
$gp->option( topcmd => <<'GP');
# define axis
# remove border on top and right and set color to gray
set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror

# define grid
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12
GP

my $theta = zeros(200)->xlinvals(-1*PI, 1*PI);

$gp->plot( { lw => 2 }, $theta, sin($theta), {}, $theta, cos($theta)  );
