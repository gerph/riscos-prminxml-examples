# Makefile for PRMinXML-Examples
#

#
# Program specific options:
#
COMPONENT  = PRMinXML-Examples

# We only include those examples that are able to be public right now.
DOCSRC     = prminxml.fontmap/xml \
             prminxml.amplayer/xml \
             prminxml.zlib/xml \
             prminxml.choices/xml \
             prminxml.ssb/xml \
             prminxml.basictokenise/xml

include _Docs

#---------------------------------------------------------------------------
# Dynamic dependencies:
