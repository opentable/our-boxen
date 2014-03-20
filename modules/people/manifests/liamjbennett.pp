class people::liamjbennett {

  # system tools
  include alfred
  include caffeine
  include keepassx
  include python
  
  # standard office tools
  include chrome
  include dropbox
  include skype
  include hipchat

  # dev tools
  include iterm2::stable
  include vagrant
  include packer
  include vmware_fusion
  include virtualbox
  #class { 'intellij':
  #  edition => 'ultimate',
  #  version => '12.1.3'
  #}
  include mou
  #include royaltsk
 
  include python
  include vim
  #include dotfiles
  include textmate::textmate2::beta

  # personal stuff
  include vlc
  include onepassword
  include wunderlist
  include evernote
  include spotify
}
