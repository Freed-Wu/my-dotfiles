export ZSH_THEME_RANDOM_QUIET=1
export plugins=(
	git
	gitfast
	wd
	web-search
	history-substring-search
	battery
	autojump
)
if [[ -n $DISPLAY ]] && [[ -x `which xdotool` ]]; then
	export WINDOWID=$(xdotool getwindowfocus)
fi
if [[ -z $DISPLAY ]] && [[ -f ~/.bashrc ]] ; then
	source .xprofile
fi
