pushd %~d0

git fetch upstream -q
git merge remotes/upstream/master -q

if exist "build" rmdir /s /q build

mkdir build
cd build
call cmake .. -G "Visual Studio 15 2017"
call cmake --build . --config Release
popd