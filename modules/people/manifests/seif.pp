class people::seif{

  $home = "/Users/${::boxen_user}"

  include alfred
  include iterm2::stable
  include alfred

  include firefox
  include chrome
  include sparrow

  include vlc
  include spotify

  include dropbox
  include skype
  include hipchat
  include colloquy
  include wunderlist

  include vagrant
  include packer
  include mongodb
  include webstorm

  package {
    [
      'ttytter',
      'tmux'
    ]:
    ensure => present,
  }

  #Install homesick for managing dotfiles
  package { 'homesick':
    ensure   => 'installed',
    provider => 'gem',
  }

  # Get repos and link files
  repository { 'homesick-bash':
    source => 'seif/homesick-bash',
    path => "${home}/.homesick/repos/homesick-bash"
  }
  ~> exec { "homesick symlink homesick-bash --force":
    refreshonly => true
  }

  repository { 'dotfiles':
    source => 'seif/homesick-dotfiles',
    path => "${home}/.homesick/repos/homesick-dotfiles"
  }
  ~> exec { "homesick symlink dotfiles --force":
    refreshonly => true
  }

  repository { 'homesick-private':
    source => 'seif/homesick-private',
    path => "${home}/.homesick/repos/homesick-private"
  }
  ~> exec { "homesick symlink homesick-private --force":
    refreshonly => true
  }

  repository { 'homesick-tmux':
    source => 'seif/homesick-tmux',
    path => "${home}/.homesick/repos/homesick-tmux"
  }
  ~> exec { "homesick symlink homesick-tmux --force":
    refreshonly => true
  }

  repository { 'homesick-ttytter':
    source => 'seif/homesick-ttytter',
    path => "${home}/.homesick/repos/homesick-ttytter"
  }
  ~> exec { "homesick symlink homesick-ttytter --force":
    refreshonly => true
  }

  repository { 'homesick-vim':
    source => 'seif/homesick-vim',
    path => "${home}/.homesick/repos/homesick-vim"
  }
  ~> exec { "homesick symlink homesick-vim --force":
    refreshonly => true
  }
}

