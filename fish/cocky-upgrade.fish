function cocky-upgrade -d "Brings core tools and configuration up to date" 

  crow notice "Ensuring tools, logs & sites folder"
  mkdir -p /cocky/tools
  mkdir -p /cocky/logs
  mkdir -p /cocky/sites
  mkdir -p /cocky/source

  crow notice "Pull most recent changes from remote git"
  git pull

  crow notice "Install default toolset"
  sudo apt-get -y install htop build-essential zip figlet toilet 

  crow notice "Update fish auto-completitions"
  fish_update_completions 

  crow success "Finished cocky-upgrade proccess"

end
