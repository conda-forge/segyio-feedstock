cmake -G"Ninja" ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_PREFIX_PATH=%PREFIX% ^
      -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
      %SRC_DIR%

if errorlevel 1 exit 1

cmake --build . --config Release --target install

if errorlevel 1 exit 1
