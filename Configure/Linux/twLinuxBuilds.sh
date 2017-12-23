

export twBuildPath=`pwd`
export twExecPath=$(cd `dirname $0`; pwd)

cd ${twExecPath}

./RunBuild.sh "breakpad"


cd ${twBuildPath}
