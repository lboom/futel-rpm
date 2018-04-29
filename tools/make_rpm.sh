#!/bin/bash
# ./make_rpm.sh package.spec
# TODO: this will either be used by ansible or replaced by ansible
if [ -z "$1" ]; then
	echo "$0: requires 1 argument"
	exit 0
fi

SPEC=$1
VERSION=$(grep "Version:" $SPEC|cut -d ":" -f2|tr -d "[:space:]")
ARCH=$(grep "BuildArch:" $SPEC|cut -d ":" -f2|tr -d "[:space:]")
SOURCE=$(grep "Source0:" $SPEC|cut -d ":" -f2|tr -d "[:space:]")

echo "Version: $VERSION BuildArch: $ARCH Source: $SOURCE"

#rm -rf rpmbuild
#mkdir rpmbuild
#mkdir rpmbuild/BUILD
#mkdir rpmbuild/RPMS
#mkdir rpmbuild/SOURCES
#mkdir rpmbuild/SPECS
#mkdir rpmbuild/SRPMS
#
##ln -v -s "$(pwd)/.tar.gz" "rpmbuild/SOURCES/"
#ln -v -s "$(pwd)/$SPEC" "rpmbuild/SPECS/"
#
#cd rpmbuild
#rpmbuild --buildroot "`pwd`/BUILDROOT" ../$SPEC -bb --define "_topdir `pwd`"
