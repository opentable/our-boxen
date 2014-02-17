class people::stack72 {

  include alfred
  include iterm2::stable
  include sublime_text_2
  include chrome
  include vagrant

  include webstorm
  class { 'intellij':
    edition => 'ultimate',
    version => '13.0.2'
  }

  include dropbox
  include skype
  
  include mongodb
  include mou
  include colloquy
  
  include vlc
  include hipchat
  include wunderlist
}
