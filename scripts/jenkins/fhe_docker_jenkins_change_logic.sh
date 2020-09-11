#/bin/bash 

# MIT License
# 
# Copyright (c) 2020 International Business Machines
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.



#make new script, to contain logic to figure out which script to run

ARTE_USER=$1
ARTE_PWD=$2

GIT_LOG=$(git log -1 --name-only)
CENT='CENTOS'
FED='FEDORA'
UBU='UBUNTU'
ALL='BuildDockerImage'


if [[ "$GIT_LOG" == *"$ALL"* ]]; then
  echo "CHANGES WERE MADE SO IGNORE THE REST"
fi
if [[ "$GIT_LOG" == *"$CENT"* ]]; then
  echo "CHANGES WERE MADE"
fi
if [[ "$GIT_LOG" == *"$CENT"* ]]; then
  echo "CHANGES WERE MADE"
fi



#./fhe_docker_jenkins_trigger_builds_ubuntu.sh $ARTE_USER $ARTE_PWD
#./fhe_docker_jenkins_trigger_builds_fedora.sh $ARTE_USER $ARTE_PWD
#./fhe_docker_jenkins_trigger_builds_centos.sh $ARTE_USER $ARTE_PWD