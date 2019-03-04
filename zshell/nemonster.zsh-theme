# the svn plugin has to be activated for this to work.
_fishy_collapsed_wd() {
  echo $(pwd | perl -pe '
   BEGIN {
      binmode STDIN,  ":encoding(UTF-8)";
      binmode STDOUT, ":encoding(UTF-8)";
   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
')
}

_git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return

  git_changes=""
  new_nonadded_files=$(git status --porcelain 2>/dev/null| egrep "^(\?\?| \?\?)" | wc -l | awk '{print $1}')
  if [ "$new_nonadded_files" -gt 0 ]; then
    git_changes="$git_changes %{$fg[cyan]%}?$new_nonadded_files"
  fi
  new_added_files=$(git status --porcelain 2>/dev/null| egrep "^(A| A)" | wc -l | awk '{print $1}')
  if [ "$new_added_files" -gt 0 ]; then
    git_changes="$git_changes %{$fg[green]%}+$new_added_files"
  fi
  modified_files=$(git status --porcelain 2>/dev/null| egrep "^(M| M)" | wc -l | awk '{print $1}')
  if [ "$modified_files" -gt 0 ]; then
    git_changes="$git_changes %{$fg[yellow]%}Δ$modified_files"
  fi
  deleted_files=$(git status --porcelain 2>/dev/null| egrep "^(D| D)" | wc -l | awk '{print $1}')
  if [ "$deleted_files" -gt 0 ]; then
    git_changes="$git_changes %{$fg[red]%}-$deleted_files"
  fi

  # Write git prompt part
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX\
$(parse_git_dirty)\
$(git_current_branch)\
${git_changes}\
%{$reset_color%}$ZSH_THEME_GIT_PROMPT_SUFFIX "
}

# local symbol="»"
local symbol="➜"

PROMPT='\
%{$fg[cyan]%}%n %{$reset_color%}\
on %{$fg[yellow]%}%M %{$reset_color%}\
in %{$fg[red]%}$(_fishy_collapsed_wd) %{$reset_color%}\
at %{$fg[blue]%}%W %* %{$reset_color%}\
$(_git_prompt_info)%{$reset_color%}\
$(svn_prompt_info)%{$reset_color%}'\
$'\n%{$reset_color%}''\
%(?:%{$fg_bold[green]%}${symbol}:%{$fg_bold[red]%}[%?] ${symbol})%{$reset_color%}  '

# ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"

ZSH_PROMPT_BASE_COLOR="%{$fg_bold[blue]%}"
ZSH_THEME_REPO_NAME_COLOR="%{$fg_bold[red]%}"

ZSH_THEME_SVN_PROMPT_PREFIX="svn:("
ZSH_THEME_SVN_PROMPT_SUFFIX=") "
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[red]%} ✘ %{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN=" "
