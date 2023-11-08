# Program Execution Script

This README document provides instructions on how to use the `runProgram.sh` script to compile and run programs written in Java, Python, C, or C++ with test data.

-> Warning：please use chmod +x runProgram.sh to give permission to run before use.

## Usage

```sh
./runProgram.sh <path_to_program_file> <path_to_test_data_file>
```

### Parameters:

- `<path_to_program_file>`: The relative or absolute path to the program file.
- `<path_to_test_data_file>`: The relative or absolute path to the file containing test data.

### Supported Languages:

- Java (`.java`)
- Python (`.py`)
- C (`.c`)
- C++ (`.cpp`)

### Example:

```sh
./runProgram.sh MyProgram.java input.txt
```

The script will automatically detect the file type based on the extension and execute the corresponding actions.

---

# 程序执行脚本

本 README 文件提供了关于如何使用 `runProgram.sh` 脚本来编译和运行 Java、Python、C 或 C++ 编写的程序，并使用测试数据的说明。

## 使用方法

```sh
./runProgram.sh <程序文件路径> <测试数据文件路径>
```

### 参数：

- `<程序文件路径>`：程序文件的相对或绝对路径。
- `<测试数据文件路径>`：包含测试数据的文件的相对或绝对路径。

### 支持的语言：

- Java（`.java`）
- Python（`.py`）
- C（`.c`）
- C++（`.cpp`）

### 示例：

```sh
./runProgram.sh MyProgram.java input.txt
```

脚本将根据文件扩展名自动检测文件类型，并执行相应的操作。
