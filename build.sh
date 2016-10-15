#!/bin/sh

GOPATH=`pwd`
export GOPATH

GOBIN=$GOPATH/bin
export GOBIN

#
# Running Test and generate Test Report
#
if [[ -f $GOPATH/bin/go-junit-report ]]; then
  echo "Remove binary : $GOPATH/bin/go-junit-report"
  rm -rf $GOPATH/bin/go-junit-report
fi
echo "Get github.com/jstemmer/go-junit-report"
go get -u github.com/jstemmer/go-junit-report

if [[ -f testreport.xml ]]; then
  echo "Remove old test report : testreport.xml"
  /bin/rm -rf testreport.xml
fi
go test -v github.com/barrowkwan/gocd_golang_hello... | $GOPATH/bin/go-junit-report > testreport.xml


#
# Generate the Binary
#
echo "======================="
echo "Building binary for OSX"
/bin/rm -f $GOPATH/bin/helloworld_osx
GOOS=darwin go build -o $GOPATH/bin/helloworld_osx github.com/barrowkwan/gocd_golang_hello
echo "======================="

echo "======================="
echo "Building binary for linux"
/bin/rm -f $GOPATH/bin/helloworld_linux
GOOS=linux go build -o $GOPATH/bin/helloworld_linux github.com/barrowkwan/gocd_golang_hello
echo "======================="
