# Setup

Setup alias

```
alias denver="uvx --python 3.14 --from git+https://github.com/thorsten-klein/denver.git@develop denver"
```

or use a newest released version from PyPi
```
alias denver="uvx --python 3.14 denver-tool==1.6.4"
```


Setup autocompletion (e.g. in bash)

```
eval "$(denver complete)"
```


Start the environment
```
denver run .
```
