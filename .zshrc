# PluginManage {{{1 #
if [[ `uname -o` == 'Msys' ]]; then
	source ~/.zprofile
fi
source ~/.zinit/plugins/zdharma---zinit/zinit.zsh

zinit ice lucid wait as=null
zinit light zdharma/zinit

zinit ice lucid wait as=null
zinit light ohmyzsh/ohmyzsh
# 1}}} PluginManage #

# ColorTheme {{{1 #
ZSH_THEME='random'
ZSH_THEME_RANDOM_CANDIDATES=(
	'romkatv---powerlevel10k/powerlevel10k'
)
zinit ice lucid wait=! as=null atload='source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"' atclone='ln -s $ZSH/../romkatv---powerlevel10k $ZSH_CUSTOM/themes'
zinit light romkatv/powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

zinit ice lucid wait=! as=null
zinit light riobard/bash-powerline
# 1}}} ColorTheme #

# Function {{{1 #
source $ZSH/oh-my-zsh.sh

zinit ice lucid wait
zinit light zsh-users/zsh-syntax-highlighting

zinit ice lucid wait
zinit light zsh-users/zsh-autosuggestions

if [[ `uname -o` != 'Msys' ]]; then
	zinit ice lucid wait
	zinit light hlissner/zsh-autopair

	zinit ice lucid wait
	zinit light Tarrasch/zsh-bd
fi
# 1}}} Function #

# Complete {{{1 #
zinit ice lucid wait as=completion
zinit light zsh-users/zsh-completions

zinit ice lucid wait as=completion atload='source ~/.zinit/plugins/petronny---pinyin-completion/shell/pinyin-comp.zsh'
zinit light petronny/pinyin-completion

if [[ `uname -o` == 'GNU/Linux' ]] && [[ ! `uname -r` =~ 'microsoft' ]]; then
	zinit ice lucid wait as=complete atclone='./install.sh'
	zinit light Angelmmiguel/pm
fi
# 1}}} Complete #

# Command {{{1 #
if [[ -x `which thefuck` ]]; then
	eval $(thefuck --alias)
fi

alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

bindkey -e
bindkey ^U backward-kill-line
bindkey ^J vi-join
bindkey ^O vi-cmd-mode
bindkey ^G what-cursor-position
bindkey ^^ edit-command-line
bindkey ^] vi-find-next-char
bindkey ^\\ vi-goto-column
bindkey '^[q' which-command
bindkey '^[i' insert-last-word
bindkey '^[r' overwrite-mode
bindkey '^[l' down-case-word
bindkey '^[w' copy-region-as-kill

zinit ice lucid wait as=command
zinit light ekalinin/github-markdown-toc

zinit ice lucid wait as=command
zinit light qw3rtman/git-fire

zinit ice lucid wait as=command
zinit light todotxt/todo.txt-cli

if [[ `uname -o` == 'Cygwin' ]]; then
	zinit ice lucid wait as=command
	zinit light transcode-open/apt-cyg
fi
# 1}}} Command #
