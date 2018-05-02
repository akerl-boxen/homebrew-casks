cask 'transmission-halyard' do
  version '2.94'
  sha256 '2cae915ae0e37fc5983406ca7fbd53a054a7153d3bfd7a6cef117a8a28d8a78a'

  url "https://github.com/transmission/transmission-releases/raw/master/Transmission-#{version}.dmg"
  name 'Transmission'
  homepage 'https://transmissionbt.com/'

  auto_updates true

  app 'Transmission.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.m0k.transmission.sfl*',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/org.m0k.transmission.help',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Transmission Help*',
                '~/Library/Caches/org.m0k.transmission',
                '~/Library/Cookies/org.m0k.transmission.binarycookies',
                '~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist',
                '~/Library/Saved Application State/org.m0k.transmission.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Transmission',
                '~/Library/Preferences/org.m0k.transmission.plist',
              ]
end
