minienigma
==========

Minienigma it's a simple to use string encrypting/decrypting machine out of the box. 
It uses a AES 256 CBC algorithm which makes your data pretty secure this days. 
In order to use it, make sure to configure it using MiniEnigma.configure(key, iv) where key and iv needs to be a combination of characters. 
Key must be 32 characters long. Iv must be 16 characters long. 
To encrypt just call MiniEnigma.encrypt('your insecure data here'). 
To decrypt MiniEnigma.decrypt('your secure data here'). 

PD: A nice place to get secure key and iv: http://randomkeygen.com
