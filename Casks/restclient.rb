cask 'restclient' do
  version '3.7.1'
  sha256 '1a72cbab1ce50b354304b172b65aeebb7b8289b878acf78ad3ed293fdb8ecfab'

  url 'https://github.com/wiztools/rest-client/releases/download/3.7.1/restclient-ui-3.7.1.dmg'
  appcast 'https://github.com/wiztools/rest-client/releases.atom'
  name 'restclient'
  homepage 'https://github.com/wiztools/rest-client/'

  depends_on :java => '1.8'

  app 'RESTClient.app'
end
