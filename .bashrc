parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1='\n[\[\]\[\033[38;5;85m\]\d\[\]\[\033[38;5;15m\] | \[\]\[\033[38;5;147m\]\u@\h\[\]\[\033[38;5;15m\] : $(parse_git_branch) : \[\]\[\033[38;5;14m\]\w\[\]\[\033[38;5;15m\]]\n\$ \[\]'
export PATH="/usr/local/anaconda3/bin:$PATH"
source ~/.bash_aliases

chrome() { '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome' "$@"; }

alias jdoc='java -jar ~/Downloads/checkstyle-8.28.jar '
flapp() { export FLASK_APP="$1"; }
flapprun() {
    export FLASK_APP="$1"
    flask run
}

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash
