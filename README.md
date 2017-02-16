# ccd
"ccd" is a way to change directories via partial matching

For example, suppose you have a file located here:

C:\Users\Adam13531\Desktop\temp\

If your current working directory is C:\, `ccd` will allow you to type something like this: `ccd us ad desk t` to navigate to that directory. This is done using partial matches. It is not particularly smart about this; it just tries finding a directory that matches `search_term*`, so the final "t" could match "temp" or "temporary".

# Installation

There are two ways that I use this:

## Standalone

Copy ccd.cmd to anywhere in your PATH. For example: `copy ccd.cmd %userprofile%`

## "Prefixed"

Suppose you have a "code" directory located at "C:\code" with subdirectories like "JavaScript", "Python", etc. You want to be able to type "code py" to go to "C:\code\Python". To do that, create "code.cmd" somewhere in your PATH (again, you can use %userprofile%) with these contents:
```
@cd /d "C:\code"
@call ccd.cmd %*
```
