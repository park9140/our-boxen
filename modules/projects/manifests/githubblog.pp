class projects::githubblog {
  include boxen::config
  boxen::project { 'github-blogger':
    nginx         => "${boxen::config::repodir}/modules/projects/templates/githubblog.nginx.conf.erb",
    source        => 'park9140/github-blogger'
  }
   repository{
    'blog a blog':
      source   => 'park9140/blogablog', #short hand for github repos
      provider => 'git',
      path => "${home}/src/blogablog",
      force => true
  }
}
