# Where do we build into (our --prefix)
buildroot=/c/build/
export buildroot
webroot=/c/build/web/

# Versions we are going to continuously integrate...
geos_version=3.2
postgis_version=1.5
proj_version=4.7
pgsql_version=8.4.3-1

# Special binaries
proj_nad=proj-datumgrid-1.5.zip

# Standard paths
geos_svn=http://svn.osgeo.org/geos/branches
postgis_svn=http://svn.osgeo.org/postgis/branches
proj_svn=http://svn.osgeo.org/metacrs/proj/branches


# Ensure the buildroot is ready
if [ ! -d $buildroot ]; then
  mkdir $buildroot
fi

function checkrv {
  if [ $1 -gt 0 ]; then
    echo "$2 failed with return value $1"
    exit 1
  fi
}
