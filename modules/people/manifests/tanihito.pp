class people::tanihito {
  include alfred
  include caffeine
  include chrome
  include firefox
  include gitx
  include iterm2::stable
  include qt
  include skype
  include sublime_text_2
  include zsh

  class { 'nodejs::global': version => 'v0.10' }

  # Ruby settings
  $ruby_version = '1.9.3'
  class { 'ruby::global': version => $ruby_version }

  ruby::gem { "pry for ${ruby_version}":
    gem  => 'pry',
    ruby => $ruby_version,
  }
}