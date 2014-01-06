class projects::work {
  include virtualbox
  include vagrant

  package {
  'Haskell':
    source   => "http://download.binarynights.com/ForkLift2.5.4.zip",
    provider => compressed_app;
  }
}