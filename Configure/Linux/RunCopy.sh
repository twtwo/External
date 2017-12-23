#!/bin/bash


export twWORKPATH=`pwd`
export twEXECPATH=$(cd `dirname $0`; pwd)
export twOUTDIR="${twEXECPATH}/../../BuildOutput/Linux"


cp -r ../../BuildOutput/Linux/$1/lib/*.a ${twWORKPATH}/../../Library/Linux/
cp -r ../../BuildOutput/Linux/$1/include/* ${twWORKPATH}/../../Include/Linux/ 
