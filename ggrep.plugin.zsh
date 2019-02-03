#!/bin/zsh

# MIT License
# 
# Copyright (c) 2019 Timo E aus E
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

# traverses a given directory. Runs git grep for given search terrm if directory 
# is a git repository, traverses down otherwise.
function _ggrep() {
    for file in $(ls "$1")
    do
      if [ -e "${1}/.git" ]; then
        pushd ${1}  > /dev/null
          echo -e "\033[0;34m $(pwd)"
          tput sgr0
          git grep "$2"
        popd  > /dev/null
        return
      elif [ -d ${1}/${file} ]; then
          _ggrep "${1}/${file}" $2
      fi
    done
}

# Invoked _gitgrep using current directory and passes first parameter as 
# term fior git grep.
function ggrep() {
  _ggrep $(pwd) $1
}
