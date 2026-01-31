#!/bin/bash
#### Special Variables use cases ####

echo "All args passed to script: $@"
echo "Number of variables passed to script: $#" 
echo "Script Nme: $0"
echo "Present Directory: $PWD"
echo "who is running: $USER"
echo "Home Directory of current user: $HOME"
echo "PID of this script: $$"
sleep 10
echo "PTD of recently executed background process: $!"
echo "ALl args passed to script: $*"