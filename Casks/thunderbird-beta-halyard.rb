class ThunderbirdBetaHalyard < Cask
  version '32.0b1'
  sha256 '0f66e9cb452293e248d92c9a156c0b81c50e81ba1107922ab6f8b555934e83d3'

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/en-US/Thunderbird%20#{version}.dmg"
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'

  app 'Thunderbird.app'
end
