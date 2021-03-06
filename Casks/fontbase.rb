cask 'fontbase' do
  version '2.0.1'
  sha256 '012f88b19dba05bb700f0bd9e29409c1d2da30aa6355d84324eb439b9832f742'

  url "http://releases.fontba.se/mac/#{version}/FontBase-#{version}.dmg"
  name 'FontBase'
  homepage 'http://fontba.se/'

  app 'FontBase.app'

  zap delete: [
                '~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist',
                '~/Library/Preferences/com.dominiklevitsky.fontbase.plist',
                '~/Library/Application Support/FontBase',
                '~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState',
              ]
end
