#### #Objective
Shell scripts are text files with command sequences and shell operations that can be executed automatically, this enables task automations and simplify process in the OS.

###### 1.- Create script
```
touch [script_name].sh
```
###### 2.- Find Script Path
```
which bash
```
###### 3.- Add Bash Bang
Scripts are identified with #shebang, a combination of ==`bash #`== and ==`bang !`== followed by the bash shell path. This tells the shell to execute it via a bash shell.
```
#!/bin/bash
```
###### 4.- Add Permissions
For executing a shell we need to assign execution permissions
```
chmod +x [script_name].sh
```
###### 5.- Execute Script
For executing a shell we need to assign execution permissions
```
[script_name].sh
```

