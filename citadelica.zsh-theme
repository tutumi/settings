local ret_status="%(?::%{$fg_bold[red]%}.)"
#PROMPT='${ret_status} %{$fg[yellow]%}%~%{$reset_color%} $(git_prompt_info)'

# ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
# 
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{202}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{034}"

function citadelica_git_prompt() {
    if [[ -n $(git_current_branch) ]]; then
        echo "$(parse_git_dirty)$(git_current_branch)"
    fi
}


PROMPT='${ret_status}%{$reset_color%}%F{031}%~%f%{$reset_color%}$(citadelica_git_prompt) %F{magenta}>%f%{$reset_color%} '