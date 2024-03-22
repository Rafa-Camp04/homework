require "byebug"

class Map

    def initialize
        @map = []
    end

    def set(key, value)
        @map.each do |subarr|
            if subarr[0] == key
                subarr[1] = value
                return
            end
        end
        @map << [key, value]
    end

    def get(key)
        @map.each do |subarr|
            return subarr[1] if subarr[0] == key
         end
    end

    def delete(key)
        @map.reject! { |subarr| subarr[0] == key }
    end

    def show
        @map[-1]
    end

end

my_map = Map.new

p my_map.set("a", 1)
p my_map.set("b", 2)
p my_map.set("c", 3)


p my_map.get("b")
p my_map

p my_map.delete("b")
p my_map