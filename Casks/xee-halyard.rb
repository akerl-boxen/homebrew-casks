class XeeHalyard < Cask
  version '3.3'
  sha256 '8728d70c392b6da025a292ab62b47698c1e7f5a45b75eb797c9832b3a37d0062'

  url "http://wakaba.c3.cx/releases/mac/Xee#{version}.dmg"
  homepage 'http://xee.c3.cx/'

  link 'Xee³.app', :target => 'Xee.app'
end
