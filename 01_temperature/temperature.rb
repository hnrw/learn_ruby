#write your code here
def ftoc(f)
    c = (f-32.0) * 5 / 9
end

def ctof(c)
    f = (c * 9.0 / 5) + 32
end

puts ctof(37)

