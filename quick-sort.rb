class Array
    def quick
        @stack = 0
        self._quick(0, self.size - 1)
    end

    def _quick(first, last)
        p @stack += 1
        return if last - first < 2
        from = first
        to = last
        pivot = self[(to + from) / 2].to_i
        while from < to
            from += 1 while self[from].to_i < pivot
            to -= 1 while pivot < self[to].to_i
            tmp = self[from]
            self[from] = self[to]
            self[to] = tmp
            break if to - from <= 1
        end
        self._quick(first, from)
        self._quick(to, last)
        @stack -= 1
        self
    end
end

#num = 10
#a = []
#num.times {a << rand(num) }

a = []
(1..100).each do |n|
    a << 100 - n
end
p a.quick