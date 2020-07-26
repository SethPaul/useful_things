# This theme for gitprompt.sh is optimized for the "Solarized Dark" and "Solarized Light" color schemesolarized Light" color schemes
# tweaked for Ubuntu terminal fonts
override_git_prompt_colors() {  Time12a="\$(date +%H:%M:%S)"  PathShort="$(gp_truncate_pwd)"

  function prompt_callback {    
  local PS1="$(gp_truncate_pwd $((${COLUMNS:-80}/4)))"
  gp_set_window_title "$PS1"
  echo -n "${Yellow}${PS1}${ResetColor}"  
  }
  
  GIT_PROMPT_START_USER=""  
  GIT_PROMPT_THEME_NAME="Solarized Ubuntu"  
  GIT_PROMPT_STAGED="${Yellow}● "
  GIT_PROMPT_STASHED="${BoldMagenta}⚑ "  
  GIT_PROMPT_CLEAN="${Green}✔ "  
  GIT_PROMPT_COMMAND_OK="${Green}✔ "  
  GIT_PROMPT_END_USER=" \n${BoldBlue}${Time12a}${ResetColor} $ "  
  GIT_PROMPT_END_ROOT=" \n${BoldBlue}${Time12a}${ResetColor} # "
}

reload_git_prompt_colors "Solarized Ubuntu"
