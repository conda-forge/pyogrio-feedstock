:: There is no `gdal-config` on Windows so we need figure it out from gdalinfo
for /F "USEBACKQ tokens=2 delims=, " %%F in (`gdalinfo --version`) do (
set GDAL_VERSION=%%F
)
if errorlevel 1 exit 1
echo "set GDAL_VERSION=%GDAL_VERSION%"

set GDAL_INCLUDE_PATH=%LIBRARY_INC%
set GDAL_LIBRARY_PATH=%LIBRARY_LIB%

%PYTHON% -m pip install --no-deps --ignore-installed -v .
if errorlevel 1 exit 1
