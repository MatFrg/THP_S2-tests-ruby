def word(str)
    alph = ('a'..'z').to_a
    v = ["a","e","i","o","u"]
    c = alph-v
    if c.include?(str[0])
        if str[0,2].downcase=="qu" then return str[2..-1]+str[0,2]+"ay" end
        if c.include?(str[1])
            if str[1,2].downcase=="qu" then return str[3..-1]+str[0,3]+"ay" end
            if c.include?(str[2])
                return str[3..-1]+str[0,3]+"ay"
            end
            return str[2..-1]+str[0,2]+"ay"
        end
        return str[1..-1]+str[0]+"ay"
    else return str+"ay"
    end
end

def translate(str)
    newstr = str.split.map {|str| word(str)}.join(' ')
end

