#!/bin/bash

# 检查 GCC 是否已安装
if ! command -v gcc &> /dev/null; then
    echo "GCC is not installed. Please install GCC and try again."
    exit 1
fi

# 设置环境变量（如果有需要）
# export MY_ENV_VARIABLE=value
export APP_ENV=development

# 编译 C 程序
echo "Compiling C program..."
gcc -o http_server http_server.c

# 检查编译是否成功
if [ $? -ne 0 ]; then
    echo "Failed to compile C program."
    exit 1
else
    echo "C program compiled successfully."
fi

# 运行 C 程序
echo "Running C program..."
./http_server

# 检查程序是否成功运行
if [ $? -ne 0 ]; then
    echo "Failed to run C program."
    exit 1
else
    echo "C program ran successfully."
fi
