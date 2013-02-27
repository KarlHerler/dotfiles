
# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi


alias gs='git status'                                                                
alias gc='git commit'                                                                
alias gp='git push'                                                                  
alias ga='git add'                                                                   
alias gco='git checkout' 