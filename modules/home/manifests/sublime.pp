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
  sublime_text_3::package { 'Wombat Theme':
    source => 'sheerun/sublime-wombat-theme'
  }
  sublime_text_3::package { 'BracketHighlighter':
    source => 'facelessuser/BracketHighlighter'
  }
  sublime_text_3::package { 'sublime-jsdocs':
    source => 'spadgos/sublime-jsdocs'
  }
  sublime_text_3::package { 'emmet-sublime':
    source => 'sergeche/emmet-sublime'
  }
  sublime_text_3::package { 'ts3':
    source => 'Railk/T3S'
  }
}
