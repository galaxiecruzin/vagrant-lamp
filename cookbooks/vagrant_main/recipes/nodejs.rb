include_recipe "apt"
include_recipe "build-essential"
include_recipe "nodejs"
include_recipe "npm"

# Install apt packages
# xdg-utils is so that grunt server does not abort while trying to
# launch the testing url in a local browser
%w{ xdg-utils }.each do |a_package|
  package a_package
end

# Install npm modules
%w{ yo bower grunt-cli less csslint phantomjs coffee-script generator-webapp generator-backbone }.each do |a_package|
  npm_package a_package
end

# Install ruby gems
# ruby gem compass works better than npm compass && deb ruby-compass
%w{ compass }.each do |a_gem|
  gem_package a_gem
end
