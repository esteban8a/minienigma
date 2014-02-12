require 'openssl'
require 'base64'

class MiniEnigma
	@@key = 'vL3axd1kxy5BSLL8fdGqg2tHWkSWAcD8'
	@@iv = '84DF5FCE8F76C548'

	def self.configure(key, iv)
		@@key = key
		@@iv = iv
	end

	def self.keys
		puts "Key: #{@@key} - IV: #{@@iv}"
	end

	def self.encrypt(data)
		self.validate_config
		raise "Data to encrypt cannot be empty" if (data == nil or data.empty?)
    cipher = OpenSSL::Cipher::AES.new(256, :CBC)
    cipher.encrypt
    cipher.key = @@key
    cipher.iv = @@iv
    encrypted_data = cipher.update(data) + cipher.final
    return Base64.encode64(encrypted_data).encode('utf-8')
  end

	def self.decrypt(data)
		self.validate_config
    begin
      decipher = OpenSSL::Cipher::AES.new(256, :CBC)
      decipher.decrypt
      decipher.key = @@key
      decipher.iv = @@iv
      plain_data = decipher.update(Base64.decode64(data)) + decipher.final
      return plain_data.force_encoding('UTF-8')
    rescue Exception => e
      puts e
      return nil
    end
  end

  private
  def self.validate_config
		raise "Invalid Key, it must be 32 characters long" if (@@key == nil or @@key.length != 32)
		raise "Invalid IV, it must be 16 characters long" if (@@iv == nil or @@iv.length != 16)
	end

end