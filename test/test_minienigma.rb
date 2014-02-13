require 'test/unit'
require 'minienigma'

class MiniEnigmaTest < Test::Unit::TestCase
	def test_encryption
		MiniEnigma.configure('vL3axd1kxy5BSLL8fdGqg2tHWkSWAcD8', '84DF5FCE8F76C548')
		text = "This is a test for encryption"
		encrypted_text = MiniEnigma.encrypt text
		refute_equal text, encrypted_text

		decrypted_text = MiniEnigma.decrypt encrypted_text
		assert_equal text, decrypted_text
	end

	def test_empty_encryption
		assert_raises RuntimeError do 
			MiniEnigma.encrypt nil
		end
	end

	def test_encryption_with_weird_characters_and_numbers
		text = "This is a test for encryption with weird chacaters ! &&/(/)*^¨Ç¨?=? 678687683127 321321732179"
		encrypted_text = MiniEnigma.encrypt text
		refute_equal text, encrypted_text

		decrypted_text = MiniEnigma.decrypt encrypted_text
		assert_equal text, decrypted_text


		text = "This is a name with accented characters: Avión, höuse, niño, niña, piña"
		encrypted_text = MiniEnigma.encrypt text
		refute_equal text, encrypted_text

		decrypted_text = MiniEnigma.decrypt encrypted_text
		assert_equal text, decrypted_text
	end
end