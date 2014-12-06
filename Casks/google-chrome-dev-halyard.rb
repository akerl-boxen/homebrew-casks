cask :v1 => 'google-chrome-dev-halyard' do
  version 'latest'
  sha256 :no_check

  url 'https://dl.google.com/chrome/mac/dev/googlechrome.dmg'
  homepage 'http://dev.chromium.org/getting-involved/dev-channel'

  app 'Google Chrome.app'
end
