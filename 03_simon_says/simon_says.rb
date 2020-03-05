#write your code here
def echo(str)
    ans = str
end

def shout(str)
    ans = str.upcase
end

def repeat(str, num = 2)
    ans = (str + " ") * (num - 1) + str 
end

def start_of_word(str, num)
    ans = str[0..num -1]
end

def first_word(str)
    str = str.split
    str = str[0] 
end

def titleize(str)
    str = str.split
    for word in str
        if word.length > 3
        word[0] = word[0].upcase
        end
    end
    str = str.join(" ")
end