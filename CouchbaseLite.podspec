Pod::Spec.new do |s|
  s.name     = 'CouchbaseLite'
  s.version  = '1.0.1'
  s.license  = 'Apache License, Version 2.0'
  s.summary  = 'Couchbase Lite is an embedded lightweight, document-oriented (NoSQL), syncable database engine.'
  s.homepage = 'http://www.couchbase.com/communities/couchbase-lite'
  s.social_media_url = 'https://twitter.com/couchbase'
  s.authors  = { 'Jens Alfke' => 'jens@couchbase.com' }
  s.source   = { :git => 'https://github.com/djwait/couchbase-lite-ios.git', :tag => 'release/1.0.1', :submodules => true }
  s.requires_arc = false

  s.ios.deployment_target = '6.0'
  
  s.preserve_paths = 'archive/CouchbaseLite.xcarchive/Products/Library/Frameworks/CouchbaseLite.framework','LICENSE'
  s.vendored_frameworks = 'archive/CouchbaseLite.xcarchive/Products/Library/Frameworks/CouchbaseLite.framework'
  
  s.public_header_files = 'Source/API/*.h'
  s.source_files = 'Source/API/CouchbaseLite.h'
  s.frameworks = 'SystemConfiguration', 'CFNetwork', 'Security'
  s.libraries = 'sqlite3', 'z'
  
end
