# .bashrc snippet Via http://guides.rubygems.org/faqs/#user-install            
if which ruby >/dev/null && which gem >/dev/null; then                       
  PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"              
fi                                                                         
