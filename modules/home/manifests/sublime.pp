class home::sublime {
  # default ruby versions
  include sublime_text_3
  sublime_text_3::package { 'Linter':
    source => 'SublimeLinter/SublimeLinter'
  }

  #used to share editing at floobits.com
  sublime_text_3::package { 'Floobits':
    source => 'Floobits/floobits-sublime'
  }

}
