class projects::testangular {
  include boxen::config
  boxen::project { 'testangular':
    nginx         => "${boxen::config::repodir}/modules/projects/files/testangular.nginx.conf.erb",
    source        => 'boot6086/angular-seed'
  }
}
