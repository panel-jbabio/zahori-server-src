
if "%~1"=="" goto ERROR

set version=%1

echo "Build started!!!"
cd backend
call docker-build.bat %version%
cd ../frontend
call docker-build.bat %version%
cd ..

:ERROR

echo "Please, introduce the build version"

:END
echo "Build finished!!!"