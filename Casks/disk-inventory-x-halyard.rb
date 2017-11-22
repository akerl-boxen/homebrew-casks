cask 'disk-inventory-x-halyard' do
  version '1.0'
  sha256 'f61c070a1ec8f29ee78b8a7c84dd4124553098acc87134e2ef05dbaf2a442636'

  url "http://www.derlien.com/diskinventoryx/downloads/dev/DIX#{version}Universal.dmg"
  name 'Disk Inventory X'
  homepage 'http://www.derlien.com/'

  app 'Disk Inventory X.app'
end
