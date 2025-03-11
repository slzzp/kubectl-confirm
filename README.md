# INSTALLATION

Get file(s)
- mkdir ~/work
- cd ~/work
- git clone https://github.com/slzzp/kubectl-confirm.git

Add alias to your shell rc file
- edit ~/.zshrc  # for mac / zsh user
- edit ~/.bashrc # for linux / bash user
- edit ~/.cshrc  # for csh user
- append 'alias k='~/work/kubectl-confirm/kubectl-confirm.sh '

# USAGE

```
% k get namespace
NAME              STATUS   AGE
default           Active   3y11d

% k create namespace foobar
namespace/foobar created

% k delete namespace foobar
To confirm deletion, type 'foobar' and press <enter>: blah  
Cancel deletion.

% k delete namespace foobar
To confirm deletion, type 'foobar' and press <enter>: foobar
namespace "foobar" deleted
```
