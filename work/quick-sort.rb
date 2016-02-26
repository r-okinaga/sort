class Array
    def quick
        self._quick(0, self.size - 1)
    end

    def _quick(first, last)
        return if last - first < 2
        from = first
        to = last
        pivot = self[(to - from) / 2].to_i
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
    end
end

#num = 10
#a = []
#num.times {a << rand(num) }


a = [2,1,4,7,5,11,7,9,3,1]
p a.quick