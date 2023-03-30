if "%~1"=="" goto BLANK

set DOCKER_BUILDKIT=1
set VERSION=%1
set PROPIETARY=zahoriaut
set IMAGE=zahori-frontend

echo "Frontend build - started!!"

echo "----------- Docker image builder -------------"
docker build -t %PROPIETARY%/%IMAGE%:%VERSION% .
goto END

:BLANK

echo "Please, tell me the build version"

:END

echo "Frontend build - finished!!"


