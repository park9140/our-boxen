class people::park9140 {
  include home::fishShell
  
  include home::sublime
  
  include chrome
  include chrome::canary

  include iterm2::dev
  
  include projects::ppmspa

  file { [ "${home}/.config/", "${home}/.config/fish/" ]:
      ensure => "directory",
  }

  file { "${home}/.config/fish/personal.fish":
    ensure  => link,
    target  => "${$boxen::config::repodir}/modules/people/park9140/personal.fish",
    subscribe => File["${home}/.config/fish/"]
  }

  git::config::global { 'user.email':
    value  => 'jpark@home.com'
  }
  git::config::global { 'user.name':
    value  => 'Jonathan Park'
  }

  $home = "/Users/${::boxen_user}"
  file { "${home}/.bash_profile":
    ensure  => link,
    target  => "${$boxen::config::repodir}/modules/people/files/park9140/.bash_profile"
  }

  file { "${home}/.git-completion.sh":
    ensure  => link,
    target  => "${$boxen::config::repodir}/modules/people/files/park9140/git-completion.sh"
  }

  file { "${home}/.git-prompt.sh":
    ensure  => link,
    target  => "${$boxen::config::repodir}/modules/people/files/park9140/git-prompt.sh"
  }
}
