class people::liamjbennett {

  # system tools
  include caffeine
  include keepassx
  include python
  include cyberduck
  include colloquy
  include unarchiver
  include adobeflashplayer::debugger
 
  package { 'huffshell':
    ensure   => present,
    provider => gem
  }
  
  package { 'wget':
    ensure   => present,
    provider => homebrew
  }
  
  # standard office tools
  include chrome
  #include firefox
  include dropbox
  include skype
  include hipchat
  # office 2011
  # vpn

  # dev tools
  include iterm2::stable
  include vagrant
  include packer
  include vmware_fusion
  include virtualbox
  
  class { 'intellij':
    edition => 'ultimate',
    version => '13.0.3'
  }
  
  #class { 'royaltsx':
  #  version => '1.3.2'
  #}
 
  include vim
  include textmate::textmate2::beta
  
  # dotfiles - TODO: pull this out into it's own module
  #$home = "/Users/${::boxen_user}"
  #$dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

  #repository { $dotfiles_dir:
  #  source => "liamjbennett/dotfiles"
  #}
  
  #include vundle - TODO: write me

  # personal stuff
  include vlc
  include onepassword
  include wunderlist
  include evernote
  include spotify
  #include tweetdeck
}
