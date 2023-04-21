export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"


source $ZSH/oh-my-zsh.sh

# Make variables
export ARCHFLAGS="-arch x86_64"

# Environment Variables
export dev=~/Documents/Github/development

# Aliases
alias br="bundle exec ruby"
alias vim="mvim -v"
alias dev="cd $dev && vim ."
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias vimplug="vim ~/.vim/"
alias src="source ~/.zshrc"
alias gst="git status"
alias gcb="git checkout -b"
alias gcmsg="git commit -m"
alias gp="git push"
alias ga="git add"
alias gd="git checkout --"
alias gcm="git checkout master"
alias gco="git checkout "
alias gl="git pull"
alias tmns="tmux new-session"
alias tmls="tmux ls"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

function gcm {
	for x in $(git branch); do
		if [[ "$x" == "master" ]] || [[ "$x" == "main" ]] then
			git checkout $x
		fi
	done
}

function gpsup {
	git push --set-upstream origin $(git branch --show-current)
}
