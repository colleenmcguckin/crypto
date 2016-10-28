require 'base64'

string = '49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d'

def convert_hex_to_base64 string
  Base64.strict_encode64 string.each_char.each_slice(2).map { |array| array.join.to_i(16).chr }.join
end

#Always operate on raw bytes, never on encoded strings. Only use hex and base64 for pretty-printing.
