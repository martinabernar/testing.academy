#!/bin/bash

FILE=${1}

#ak sa neda rozbalit

if [[ ! ${FILE} ]]; then
   echo"subor sa neda rozbalit" 1>&2
   exit 1
# ak sa da rozbalit

if [[ ! -f $FILE = ^(.zip|.lzma|.xz|.bzip|.gzip) ]]; then
   echo"subor sa neda rozbalit" 1>&2
   exit 1

