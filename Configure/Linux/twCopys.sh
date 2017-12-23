#!/bin/bash

export twBuildPath=`pwd`
export twExecPath=$(cd `dirname $0`; pwd)

cd ${twExecPath}

./RunCopy.sh "breakpad"


cd ${twBuildPath}
