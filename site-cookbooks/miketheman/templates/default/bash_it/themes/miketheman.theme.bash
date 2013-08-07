#!/usr/bin/env bash
#
# miketheman theme
# used a bunch of other people's code to build this into something I like
#

SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

STATUS_THEME_PROMPT_BAD="${red}⊘"   # unicode CIRCLED DIVISION SLASH U+2298
STATUS_THEME_PROMPT_OK="${green}∴"  # unicode: THEREFORE U+2234

function _showStatus {
  local ret=$1
  if `return $ret`; then
    echo -e "$STATUS_THEME_PROMPT_OK"
  else
    echo -e "$STATUS_THEME_PROMPT_BAD"
  fi
  return $ret
}

# ${blue}($(chefvm current)) # <= apparently really slow

function prompt_command() {
    ret=$?
    PS1="\n\t ${yellow}$(ruby_version_prompt) ${purple}\h ${reset_color}in ${green}\w\n${bold_cyan}$(scm_char)${green}$(scm_prompt_info) $(_showStatus $ret) ${green}→${reset_color} "
}

PROMPT_COMMAND=prompt_command;
