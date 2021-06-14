export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
plugins=(
  git
  kube-ps1
  kubectl
  aws
  battery
  pip
)
source $ZSH/oh-my-zsh.sh
source $ZSH/zsh-autosuggestions.zsh
export WORKON_HOME=~/Envs
#export VIRTUALENVWRAPPER_PYTHON=`which python`
#source $HOME/.local/bin/virtualenvwrapper.sh
source $HOME/.kube/.kubens
source $HOME/.kube/.kubectx
source <(kubectl completion zsh)
complete -F __start_kubectl k
complete -C '/usr/local/bin/aws_completer' aws
alias ll="ls -alh"
alias ns="kubens"
alias ctx="kubectx"