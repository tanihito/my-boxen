class people::tanihito {
  include alfred
  include caffeine
  include chrome
  include firefox
  include iterm2::stable
  include skype
  include sublime_text_2
  include zsh

  # Ruby settings
  $ruby_version = '1.9.3'
  class { 'ruby::global': version => $ruby_version }

  ruby::gem { "pry for ${ruby_version}":
    gem  => 'pry',
    ruby => $ruby_version,
  }
}