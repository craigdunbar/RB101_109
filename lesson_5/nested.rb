# arr = [[1], [2]]

# arr[0] << 3
# p arr # => [[1, 3], [2]]

# arr = [[1], [2]]

# arr[0] << [3]
# p arr # => [[1, [3]], [2]]

# arr = [{ a: 'ant' }, { b: 'bear' }]

# arr[0][:c] = 'cat'
# p arr # => [{ :a => "ant", :c => "cat" }, { :b => "bear" }]

# arr = [['a', ['b']], { b: 'bear', c: 'cat' }, 'cab']

# p arr[0]              # => ["a", ["b"]]
# p arr[0][1][0]        # => "b"
# p arr[1]              # => { :b => "bear", :c => "cat" }
# p arr[1][:b]          # => "bear"
# p arr[1][:b][0]       # => "b"
# p arr[2][2]           # => "b"

# a = [1, 3]
# b = [2]
# arr = [a, b]
# p arr # => [[1, 3], [2]]

# a = [1, 3]
# b = [2]
# arr = [a, b]
# p arr # => [[1, 3], [2]]

# a[1] = 5
# p arr # => [[1, 5], [2]]

# arr1= ["a", "b", "c"]
# arr2 = arr1.dup
# arr2[1].upcase!
# p arr2
# p arr1

# arr1 = ["abc", "cde"]
# arr2 = arr1.clone
# arr2[0].reverse!
# p arr2
# p arr1

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end
p arr2
p arr1

