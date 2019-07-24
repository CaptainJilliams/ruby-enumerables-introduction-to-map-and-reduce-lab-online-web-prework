def map_to_negativize(source_array)
   new=[]
   i=0
   while i < source_array.length do
     new.push(source_array[i] * -1)
     i+=1
   end
   return new
end

def map_to_no_change(source_array)
  return source_array
end

def map_to_double(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(source_array[i] * 2)
    i+=1
  end
  return new
end

def map_to_square(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(source_array[i] ** 2)
    i+=1
  end
  return new
end

def reduce_to_total(source_array, starting_point=0)
  #source_array.reduce(starting_point) {|sum, num| sum + num}
  source_array.sum + starting_point
end

def reduce_to_all_true(source_array)
  #source_array.reduce {|x, y| x && y}
  i = 0
  #  source_array = [1, 2, true, "razmatazz", false]
  while i < source_array.length do
    if !source_array[i]
      return false
    end
    i+=1
  end
  return true
end

def reduce_to_any_true (source_array)
  #source_array.reduce{|x, y| x || !!y}
  i = 0
  #source_array = [ false, nil, nil, nil, true]
  while i < source_array.length do
    if source_array[i]
      return true
    end
    i+=1
  end
  return false
end
