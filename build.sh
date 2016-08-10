#!/bin/sh

GOPATH=`pwd`
export GOPATH

rm -rf $GOPATH/bin/*

if [[ -f $GOPATH/bin/go-junit-report ]]; then
  echo "Remove binary : $GOPATH/bin/go-junit-report"
  rm -rf $GOPATH/bin/go-junit-report
fi
go build -o $GOPATH/bin/go-junit-report github.com/jstemmer/go-junit-report
if [[ -f testreport.xml ]]; then
  echo "Remove old test report : testreport.xml"
  /bin/rm -rf testreport.xml
fi
go test -v github.com/barrowkwan/gocd_golang_hello... | $GOPATH/bin/go-junit-report > testreport.xml

GOOS=darwin go build -o $GOPATH/bin/helloworld github.com/barrowkwan/gocd_golang_hello

