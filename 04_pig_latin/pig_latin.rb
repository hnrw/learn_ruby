#write your code here
def is_vowel(char)
    if char == "a"
        return true
    elsif char =="e"
        return true
    elsif char =="i"
        return true
    elsif char =="o"
        return true
    elsif char =="u"
        return true
    else
        return false
    end
end
    
def translate(str)
    str_array = str.split #creates array with words
    new_str_array = []

    for str in str_array
        if is_vowel(str[0])
            str = str + "ay"
            new_str_array.append(str)
        else
            str.each_char {|c|
            if is_vowel(c)
                break
            elsif c == "q" and (str[str.index(c) + 1]) == "u"
                str[0] = ""
                str[0] = ""
                str = str + "qu"
            else
            first_char = str[0]
            str[0] = ""
            str = str + first_char
            end
            }
            str = str + "ay"
            new_str_array.append(str)
        end
    end
    
    

    ans = new_str_array.join(" ")
end

translate("apple cat")