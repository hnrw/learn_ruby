class Book
    attr_accessor :title

    def title
        title_array = @title.split
        little_words = %w{a an and the of in}

        for word in title_array
            if !little_words.include? word or title_array.index(word) == 0
                word[0] = word[0].upcase
            end
        end

        @title = title_array.join(" ")
        return @title
    end
end


book = Book.new
book.title = "inferno the dfgsa"
puts book.title

