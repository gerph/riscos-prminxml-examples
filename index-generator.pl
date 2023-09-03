#!/usr/bin/perl
##
# Generate a simple index for the PRMinXML examples repository.
# These rows are not using the indexed rows form, so we don't
# have a root page - we have a simple one here.
#

use warnings;
use strict;

my $output = shift;
my @htmls = @ARGV;

sub read_file {
    my ($file) = @_;
    open(my $fh, '<', $file) || die "Cannot read '$file': $!\n";
    my $content = '';
    while (<$fh>) {
        $content .= $_;
    }
    close($fh);
    return $content;
}


my $head = read_file('index-head.html');
my $tail = read_file('index-tail.html');

my @rows;
for my $htmlfile (@htmls) {
    my $leaf = $htmlfile;
    $leaf =~ s!^(.*)/!!g;

    my $pdfleaf = $leaf;
    $pdfleaf =~ s!\.html$!.pdf!;
    my $pdffile = $htmlfile;
    $pdffile =~ s!/html/!/pdf/!;
    $pdffile =~ s!\.html$!.pdf!;

    my $html = read_file($htmlfile);
    my $title = "(UNTITLED: $leaf)";
    if ($html =~ /<title>(.*?)<\/title>/) {
        $title = $1;
    }

    my $xmlleaf = $leaf;
    $xmlleaf =~ s!\.html$!.xml!;

    my $row = "<li class='index-link'>";
    $row .= "<span class='index-title'><a href='html/$leaf'>$title</a></span>";
    $row .= " (<a href='html/$xmlleaf'>XML source</a>)";
    if (-f "$pdffile") {
        $row .= " (<a href='pdf/$pdfleaf'>PDF</a>)";
    }
    $row .= "</li>";
    push @rows, "$row\n";
}

open(my $fh, '>', $output) || die "Cannot write output '$output': $!\n";
print $fh $head;
for my $row (@rows)
{
    print $fh $row;
}
print $fh $tail;
close($fh);
