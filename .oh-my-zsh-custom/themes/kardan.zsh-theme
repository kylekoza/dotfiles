# Simple theme based on my old zsh settings.

function get_host {
	echo '@'$HOST
}

PROMPT='$FG[154]> %{$reset_color%}'
RPROMPT='$FG[154]%~$(git_prompt_info)$(get_host)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗%{$reset_color%}$FG[154]"
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
