class Sequence
    def initialize(array = [])
        @array = array
    end

    def bubble
        @start = Time.now
        for i in 0..@array.length do
            for j in i + 1..@array.length do
                if @array[j].to_i < @array[i].to_i
                    tmp = @array[i]
                    @array[i] = @array[j]
                    @array[j] = tmp
                end
            end
        end
        @stop = Time.now
        time_result
    end

    def time_result
        @stop - @start
    end
end

num = 10
a = []
num.times {a << rand(num) }

sequence = Sequence.new(a)

p sequence.bubble