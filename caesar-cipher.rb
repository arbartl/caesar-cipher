def caesar_cipher(string, shift)
    string_array = string.each_byte.to_a
    shifted_array = []

    string_array.each do |c|
        if c >= 97 && c <= 122
            if (c + shift) > 122
                shifted_array.push(((c + shift) % 122) + 97)
            else
                shifted_array.push(c + shift)              
            end
        elsif c >= 65 && c <= 90
            if (c + shift) > 90
                shifted_array.push(((c + shift) % 90) + 65)
            else
                shifted_array.push(c + shift)
            end
        else
            shifted_array.push(c)
        end
    end

    string_array = shifted_array.pack('c*')
    return string_array
end

puts "Enter a string to cipher: "
string_to_shift = gets.chomp

puts "Enter a value to shift by: "
shift_value = gets.chomp.to_i

p caesar_cipher(string_to_shift, shift_value)