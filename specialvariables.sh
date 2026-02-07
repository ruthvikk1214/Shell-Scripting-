#!in/bash 
##special variables##
echo "All args passed to the script: $@"
echo "Number of variables passed to the script: $#"
echo "Script name: $0"
echo "Present directory: $pwd"
echo "Who is running: $USER"
echo "Home directory of the user: $HOME"
echo "PID of this script: $$"
sleep 5 &
echo "PID of recently executed background process: $!"
echo "All args passed to the script: $*"