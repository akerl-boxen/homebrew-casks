cask 'vlc-halyard' do
  version '3.0.6'
  sha256 '0c807a2e352fd6fe7e591fe01a7a53794b7d817e1e1eda3f673df06f26db27d5'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'

  auto_updates true

  app 'VLC.app'
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vlc.wrapper.sh"
  binary shimscript, target: 'vlc'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/VLC.app/Contents/MacOS/VLC' "$@"
    EOS
  end

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.videolan.vlc.sfl*',
                '~/Library/Application Support/org.videolan.vlc',
                '~/Library/Application Support/VLC',
                '~/Library/Preferences/org.videolan.vlc',
                '~/Library/Preferences/org.videolan.vlc.plist',
                '~/Library/Saved Application State/org.videolan.vlc.savedState',
                '~/Library/Caches/org.videolan.vlc',
              ]
end
