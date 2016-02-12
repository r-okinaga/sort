class Array
    def quick
        if self.length <= 1
            return self
        end
        l = Array.new
        r = Array.new
        pivot = self[0]
        size = self.size
        for i in 1..size - 1
            if pivot.to_i <= self[i].to_i
                r << self[i]
            else
                l << self[i]
            end
        end
        l = l.quick
        r = r.quick
        return l + [pivot] + r
    end
end

num = 10
a = []
num.times {a << rand(num) }

p a.quick