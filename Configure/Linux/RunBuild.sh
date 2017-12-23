#!/bin/bash


export twWORKPATH=`pwd`
export twEXECPATH=$(cd `dirname $0`; pwd)
export twOUTDIR="${twEXECPATH}/../../BuildOutput/Linux"
export twSEARCHDIR="${twEXECPATH}/../../Source"
export twBUILDFILE="twLinuxBuild.sh"
export twCONFIG="--prefix=${twOUTDIR}"/"$1 \
                --enable-static=yes \
                --enable-shared=no"
               

echo "search path : "${twSEARCHDIR}
echo "output path : "${twOUTDIR}


if [ ! -d ${twOUTDIR} ]
then
    mkdir ${twOUTDIR}  
fi


function twBuildFile()
{
    if [ -d ${twSEARCHDIR}"/"$1 ]
    then
        if [ -e ${twSEARCHDIR}"/"$1"/twLinuxBuild.sh" ]
        then
            if [ ! -d ${twOUTDIR}"/"$1 ]
            then
                mkdir ${twOUTDIR}"/"$1
            fi
            echo "${1} : compile start"
            cd ${twSEARCHDIR}"/"$1
            source ${twBUILDFILE} $1 
            cd ${twBuildPath}
        else
            echo "${twSEARCHDIR}/$1 : not find ${twBUILDFILE}"
            exit
        fi
    else
        echo "not find dir : ${twSEARCHDIR}/${1}"
        exit
    fi
}

twBuildFile $1

