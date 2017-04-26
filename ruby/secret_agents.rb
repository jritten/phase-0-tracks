#Encrypt Method

def encrypt

  index = 0
  encrypt = ""

  puts "Please, create a new encryption."
  password = gets.chomp

  while index < password.length
  password[index] = password[index].next
  decrypt = password[index].next
  index += 1
  end

puts "Your new encryption is #{password}"
puts ""

end

encrypt


#Decrypt Method

def decrypt

  index = 0
  decryption = ""

  puts "Please, create a new password"
  password = gets.chomp

  while index < password.length
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    password[index] = password_letter
  	letter_number = alphabet.index("password_letter")

  	index +=1
  end

puts "Your new decryption is #{decrypt}"

end

 decrypt

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish")) #This nested method call does not work
#because the scope of the encrypted method does not extend to the decrypted
#method. In other words, the two methods are separate and independent from
#each other.

puts "Hello, Ethan. Your mission, should you choose to accept it,
is to decrypt or encrypt a password. As always, should you or any of your
I.M. force be caught or killed, the Secretary will disavow any knowledge
of your actions. This program will self destruct in 5 seconds."

puts "Now, would you like to encrypt or decrypt a password? (E/D)"
user_action = gets.chomp
user_action = user_action[0]
user_action = user_action.upcase
encryption = false
decryption = false

until (encryption || decryption)
  if user_action == "E"
    encryption = true
    puts "Please provide a password to be encrypted."
    password = gets.chomp
    encrypt(password)
  elsif user_action == "D"
    decryption = true
    puts "Please provide an encrypted password to decrypt."
    password = gets.chomp
    decrypt(password)
  else
    encryption = false
    decryption = false
  end
end

