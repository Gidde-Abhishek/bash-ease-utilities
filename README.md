A collection of simple Bash scripts to ease various operations (mostly programming related)
just a fun side project.

## Getting Started

1. [cpp-ease.sh](scripts/cpp-ease.sh):
> This script uses the gcc compiler to comiple, create object file and execute it with just one single command.
> No need to use three different commands for compiling, running and executing.
## USAGE
```bash
cd scripts
chmod 777 cpp-ease.sh
./cpp-ease.sh [File-name]
```
## NOTE :
[File-name] : Name of the c++ file to compile. ".cpp" extension is not required.
>If [File-name] exists, it will be compiled and executed if no compile time errors occur.
>>In case of compile time errors they will be shown on the terminal.<br>
>If [File-name] does not exist, a new file will be created and would be opened with gedit.
>>In this case after writing the c++ program just save the file and close the gedit program.
a rogram closure will be detected and ./cpp-ease would run again with the new created file.
