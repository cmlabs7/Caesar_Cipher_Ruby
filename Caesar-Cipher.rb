def cypher(phrase, num)
    newArray = []
    splitArray = phrase.split("")
    
    splitArray.each do |letter|
        if letter.ord.between?(97, 122) 
            if (letter.ord + num > 122)
                    value = (((letter.ord - 97) + num ) % 26 ) + 97 
            else
                value = letter.ord + num
            end
        elsif letter.ord.between?(65, 90)
            if letter.ord + num > 90
                    value = (((letter.ord - 65) + num ) % 26 ) + 65 
            else 
                value = letter.ord + num
            end
        else
            value = letter.ord
        end
        newArray.push(value.chr)
    end
    newArray = newArray.join("")
end

print cypher("What a string!", 5)