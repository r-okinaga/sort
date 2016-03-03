class Element
    attr_accessor :value, :next_ref

    def initialize(value, next_ref)
        @value = value
        @next_ref = next_ref
    end
end

class List
    def initialize()
        @first_element = nil
    end

    def unshift(value)
        element = Element.new(value, @first_element)
        @first_element = element
    end

    def each
        current_element = @first_element
        while ( ! current_element.nil?)
            yield current_element.value
            current_element = current_element.next_ref
        end
    end

    def push(value)
        if @first_element.nil?
            @first_element = Element.new(value, nil)
        else
            current_element = @first_element
            while ( ! current_element.next_ref.nil?)
                current_element = current_element.next_ref
            end
            current_element.next_ref = Element.new(value, nil)
        end
        self
    end

    def [](index)
        if index < 0
            return nil
        end

        current_index = 0
        current_element = @first_element

        loop do
            if current_element.nil?
                return nil
            elsif current_index == index
                return current_element.value
            else
                current_index += 1
                current_element = current_element.next_ref
            end
        end
    end
end

list = List.new
list.push(4)
list.push(3)
p list