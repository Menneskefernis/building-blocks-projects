$letters = ("a".."z").to_a
$upcase = false

def caesar_cipher(str, shift)
    characters = str.split('')
                    .map { |char| shiftChar(char, shift) }
                    .join('')
end

def shiftChar(char, shift)
    
    check_case(char)
    
    char.downcase!

    if char.match(/[a-z]/)
        index = $letters.index(char).to_i

        if index + shift > $letters.size
            return set_case($letters[(index + shift) % $letters.size])
        end

        set_case($letters[index + shift])
    else
        return char
    end
end

def check_case(char)
    if char == char.upcase
        $upcase = true
    else
        $upcase = false
    end
end

def set_case(char)
    if $upcase
        char.upcase
    else
        char
    end
end

puts caesar_cipher("What a String!", 5)

