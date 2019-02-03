<!--
MIT License

Copyright (c) 2019 Timo E aus E

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
-->

# Recursive `git grep`

Traverses all git repostories residing within a sub file hierarchy and runs `git grep` 
for a given search term.

Licencend under MIT License. Made with :heart: , contributions are welcome.

## Usage

Exports `ggrep` function. It uses the  current directory as the root folder of a file 
hierarchy to be traversed. Run git grep for `timoe` recursively by 

```
    ggrep "timoe"
```

## ZSH plugin

Recursive `git grep` is exported as a ZSH plugin. Simply clone this repository and 
add `ggrep` as a plugin to your `.zshrc` file.

## Depends on

* `git`
* `tput`
