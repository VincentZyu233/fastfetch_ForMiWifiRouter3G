set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR mips)

# 指定交叉编译器
set(CMAKE_C_COMPILER /usr/bin/mipsel-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER /usr/bin/mipsel-linux-gnu-g++)

# 确保 CMake 不会乱翻宿主机的库
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
