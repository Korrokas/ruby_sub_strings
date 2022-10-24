#test dictionary to make sure method operates correctly
dictionary_test = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array_of_words)

    #create empty hash to store results
    substring_results = Hash.new(0)

    #break long strings into individual words
    each_word = string.split(" ")

    #use regex to check substrings
    array_of_words.each do |check|
        reg = check
        reg = /#{reg}/i
        string.scan(reg) do |match|
            substring_results[match] += 1
        end
    end

    #return hash of matches
    substring_results
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary_test)