:: There is no `gdal-config` on Windows so we need to hardcode gdal's version.
set GDAL_VERSION=3.2.2

"%PYTHON%" -m pip install --no-use-pep517 -vv --no-deps --ignore-installed . ^
                          --global-option=build_ext ^
                          --global-option="-I%LIBRARY_INC%" ^
                          --global-option="-L%LIBRARY_LIB%" ^
                          --global-option="-lgdal_i"
if errorlevel 1 exit 1
