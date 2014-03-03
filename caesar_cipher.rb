class CaesarCipher
  def initialize(input, val)
    @input = input.split('')
    @val = val.to_i
    @alphabet = ('a'..'z').to_a
  end

  def create_cipher
    @input.each_with_index do |x,index|
      unless x =~ /[a-zA-Z]/
        a = (@alphabet.index(x.downcase) + @val) % 26
        a -= 1 if a == 0 || a == 1
        x =~ /[A_Z]/ ? @input[index] = @alphabet[a].upcase : @input[index] = @alphabet[a]
      end
    end
    @input.join
  end
end
