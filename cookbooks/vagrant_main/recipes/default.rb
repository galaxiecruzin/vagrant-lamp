include_recipe "apt"
include_recipe "build-essential"
include_recipe "git"
include_recipe "oh-my-zsh"


# Install packages
%w{ debconf vim screen tmux mc subversion curl make g++ libsqlite3-dev graphviz libxml2-utils lynx links elinks}.each do |a_package|
  package a_package
end

