# PRM-in-XML examples

[![Example documents](https://img.shields.io/badge/Generated-Examples-yellow)](https://gerph.github.io/riscos-prminxml-examples/)

## Introduction

This repository holds some examples for the PRM-in-XML documentation system.
The examples are meant to be generated by the PRM-in-XML tool, which
converts the content to HTML files which can be read more easily.

The [Releases](https://github.com/gerph/riscos-prminxml-examples/releases)
on GitHub include archives of the generated documentation, in addition to the pages
on the [generated website](https://gerph.github.io/riscos-prminxml-examples/).

## Building the examples

The example documents can be generated on a Linux system, although this may
need to install packages.

    ./build.sh

This will generate the documents in the directory `artifacts/docs`.

If you do not wish to install packages, you may manually build with the
following alternatives.

### Building with the PRM-in-XML tool

To directly generate the documentation, the
[PRM-in-XML tool](https://github.com/gerph/riscos-prminxml-tool)
is required to process these files.

To build them, use a command like:

    riscos-prminxml prminxml/amplayer.xml

### Building with docker

Building the documentation can be performed on most modern POSIX systems with Docker.

With Docker:

    docker run -it --rm -v$PWD:/work -w /work ubuntu:18.04 ./build.sh

This will install all the necessary components and perform the build.
The build will produce results in the `output` directory, as HTML.

For PDF use, you should follow the [PrinceXML licensing](https://www.princexml.com/purchase/license_faq/) terms. For most use, you should be able to use the non-commercial license.
This can be indicated by setting the environment variable `PRINCEXML_I_HAVE_A_LICENSE`, thus:

    docker run -it --rm -v$PWD:/work -e PRINCEXML_I_HAVE_A_LICENSE=1 -w /work ubuntu:18.04 ./build.sh
