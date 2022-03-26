# Makefile for PRMinXML-Examples
#

#
# Program specific options:
#
COMPONENT  = PRMinXML-Examples

INSTALL = ${INSTDOCDIR}.!ReadMe

# The examples are those files that have been made public - the original Release10
# included the documents, and gave permission for their reproduction so these are
# fair game, even if it wasn't for the fact that we're going to release them as part
# of the PRMinXML anyhow.
DOCSRC     = prminxml.amplayer/xml \
             prminxml.arp/xml \
             prminxml.basictokenise/xml \
             prminxml.cdfs/xml \
             prminxml.choices/xml \
             prminxml.colourswatch/xml \
             prminxml.colourtrans/xml \
             prminxml.dragasprite/xml \
             prminxml.fontmap/xml \
             prminxml.finger/xml \
             prminxml.freeway/xml \
             prminxml.host/xml \
             prminxml.hourglass/xml \
             prminxml.ramfs/xml \
             prminxml.squash/xml \
             prminxml.ssb/xml \
             prminxml.taskmanager/xml \
             prminxml.zlib/xml \

include Documentation

${INSTDOCDIR}.!ReadMe: !ReadMe
	${CP} $? $@ ${CPFLAGS}


#---------------------------------------------------------------------------
# Dynamic dependencies:
