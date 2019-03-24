require "pry"

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |num1,num2|
    num2 <=> num1
  end
end

def sort_array_char_count(array)
    array.sort_by! {|string| string.size}
end

def swap_elements(array)
  store = []
  store << array.delete_at(1)
  array += store
end

def reverse_array(array)
  first = []
  last = []
  first << array.shift
  last << array.pop
  array += first
  array.unshift(last)
  array.flatten
end

def kesha_maker(array)
  array.collect do |x|
    #x[2] = "$"
    #x
    x.insert(2, "$")
    x.delete!(x[3])
    x
  end
end

def find_a(array)
  a = []
  array.select do |x|
    a << x.start_with?("a")
    binding.pry
  end
  a
end

def sum_array(array)
  array.sum_array
end

def add_s(array)
end
