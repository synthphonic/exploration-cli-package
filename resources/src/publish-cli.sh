if [ $# -eq 0 ]
then
  echo 
  echo "Version number was not supplied."
  echo
  echo "e.g: ./build-release.sh 1.2.3.4"
  echo
  echo	
  exit 1
fi

if [ $# -eq 1 ]
then
  echo 
  echo "Product stage must be set"
  echo "Choose either one of the following:"
  echo "-> alpha"
  echo "-> beta"
  echo "-> preview"
  echo "-> release"
  echo	
  exit 1
fi

if [ $# -eq 2 ]
then
  echo 
  echo "Target platform must be set to build"
  echo "Choose either one of the following:"
  echo "-> osx-x64"
  echo "-> win-x64"
  echo "-> linux-x64"
  echo "-> linux-arm64"
  exit 1
fi

echo ===============================
echo = BUILD-EXECUTABLES           = 
echo ===============================

versionFolder=v$1"-"$2
platform=$3 #sample platform="osx-x64"
buildConsolidationFolder=../build-consolidation/my-cli-$versionFolder-$platform

echo
echo
echo ----- STEP 1: BUILD CLI
dotnet publish my-cli.csproj -p:PublishSingleFile=true -r $platform -c Release --self-contained true -p:EnableCompressionInSingleFile=true -o $buildConsolidationFolder -v m /property:VersionPrefix=$1 /property:VersionSuffix=$2