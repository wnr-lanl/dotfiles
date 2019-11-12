# sets up my .gitconfig
# user
git config --global user.name "William N. (Bill) Rust"
git config --global user.email "wnr@lanl.gov"
git config --global user.signingkey "William N. (Bill) Rust (LANL)"
# color
git config --global color.branch auto
git config --global color.diff  auto
git config --global color.status auto
# alias
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.ci commit
# core
git config --global core.editor vim
# push
git config --global push.default simple
# credential
git config --global credential.helper 'cache --timeout=43200'
#
# existing stuff:
#[core]
#	excludesfile = /Users/wnr/.gitignore_global
#cat .gitignore_global 
#.gitignore
#.DS_Store
