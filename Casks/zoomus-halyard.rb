cask 'zoomus-halyard' do
  version '4.1.34475.1105'
  sha256 '98b69708f35949d2e704f0b6c6790a1d0e740ab21a05caec548fb11cefb043db'

  url "https://www.zoom.us/client/#{version}/zoomusInstaller.pkg"
  name 'Zoom.us'
  homepage 'https://www.zoom.us/'

  pkg 'zoomusInstaller.pkg'

  uninstall delete: '/Applications/zoom.us.app',
            quit:   'us.zoom.ZoomOpener',
            signal: [
                      ['KILL', 'us.zoom.xos'],
                    ]

  zap trash: [
               '~/Desktop/Zoom',
               '~/Library/Application Support/zoom.us',
               '~/Library/Caches/us.zoom.xos',
               '~/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin',
               '~/Library/Logs/zoom.us',
               '~/Library/Logs/zoominstall.log',
               '~/Library/Preferences/ZoomChat.plist',
               '~/Library/Preferences/us.zoom.xos.plist',
               '~/Library/Saved Application State/us.zoom.xos.savedState',
             ]
end