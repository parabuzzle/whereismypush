#application specific loader


module Cryptos
  @salt = CRYPTO_SALT
  
  def encrypt(password, salt=@salt)
    Digest::SHA512.hexdigest("#{password}:#{salt}")
  end
  
  def crypto_match?(password, encrypted_password, salt=@salt)
    pass = Digest::SHA512.hexdigest("#{password}:#{salt}")
    return pass == encrypted_password
  end
  
  def md5_token(gen=Time.now.to_f, salt=@salt)
    Digest::MD5.hexdigest("#{gen}:#{salt}")
  end

end

include Cryptos