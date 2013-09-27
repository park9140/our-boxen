class projects::testangular {
  include boxen::config
  boxen::project { 'testangular':
    nginx         => true,
    source        => 'boot6086/'
  }
}
