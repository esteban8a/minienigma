Gem::Specification.new do |s|
  s.name        = 'minienigma'
  s.version     = '0.0.7'
  s.date        = '2014-02-12'
  s.summary     = "Simple encrypting/decrypting machine using AES 256."
  s.description = "Minienigma it's a simple to use string encrypting/decrypting machine out of the box.
It uses a AES 256 CBC algorithm which makes your data pretty secure this days.
In order to use it, make sure to configure it using MiniEnigma.configure(key, iv)
where key and iv needs to be a combination of characters.  Key must be 32 characters long.  
Iv must be 16 characters long.
Then to encrypt just call MiniEnigma.encrypt('your insecure data here').
To decrypt MiniEnigma.decrypt('your secure data here').
PD: A nice place to get secure key and iv: http://randomkeygen.com"
  s.authors     = ["Esteban Ochoa"]
  s.email       = 'esteban8a@innventto.com'
  s.files       = ["lib/minienigma.rb"]
  s.homepage    = 'http://rubygems.org/gems/minienigma'
  s.license     = 'MIT'
end



