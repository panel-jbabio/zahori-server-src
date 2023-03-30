if "%~1"=="" goto ERROR

set DOCKER_BUILDKIT=1
set VERSION=%1
set PROPIETARY=zahoriaut
set IMAGE=zahori-server

echo "Backend build - started!!"

echo "----------- MVN Process -------------"
call mvnw clean package -U

echo "----------- Docker image builder -------------"
docker build -t %PROPIETARY%/%IMAGE%:%VERSION% .
goto END

:ERROR

echo Please, tell me the build version

:END

echo "Backend build - finished!!"