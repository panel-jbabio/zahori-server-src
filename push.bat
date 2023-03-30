if "%~1"=="" goto ERROR

set VERSION=%1

echo "Pushing backend"
call docker push zahoriaut/zahori-server:%VERSION%
echo "Pushing frontend"
call docker push zahoriaut/zahori-frontend:%VERSION%
echo "Push finished!!!"

:ERROR

echo "Please, introduce the build version"

:END
