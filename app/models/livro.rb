class Livro < ActiveRecord::Base
    
    def self.search(query)
        where("nome LIKE :q", :q => "%#{query}%")
    end
end
