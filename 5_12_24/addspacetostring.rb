# @param {String} s
# @param {Integer[]} spaces
# @return {String}
def add_spaces(s, spaces)
index = 0
result = []

spaces.each do |space|
    result << s[index...space]
    index = space
    end
    result << s[index..-1]
    result.join(' ')
end