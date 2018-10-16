require "pry"

def begins_with_r (array)
  bool = true 
  array.each do |word|
    if "s" > word && "q" < word
      bool = true
    else
      return false
    end
    end
  return bool
end

def contain_a(array)
  new_array = []
  array.each do |item|
  word_split = item.split(//)
    
    in_it = false
    word_split.each do |letter|
      if letter == "a"
        in_it = true
      end
    end 
    
    if in_it
      new_array.push(item)
    end
  end
  return new_array
end

def first_wa (array)
  word_to_return = ""
  array.each do |word|
    if word.class == String
    word_split = word.split(//)
    if word_split[0] == "w" && word_split[1] == "a"
      return word
    end 
  end 
  end
end

def remove_non_strings (array)
  new_array=[]
  array.collect do |word|
    if word.class == String
      new_array.push(word)
    end 
  end
  return new_array
end

def count_elements (array)
  counter = 0
  counter_array = []
  original = array
  new_array=[]
  array.collect do |hash|
  
    if !counter_array.include? (hash[:name])
    hash[:count] = 0
    counter_array.push(hash[:name])
      original.each do |check|
        if check[:name] == hash[:name] 
          counter += 1
        end 
      
      end 
    counter_array.push(hash[:name].to_s)
    hash[:count] = counter
    new_array.push(hash)
    counter = 0
  end 
  
  end
  
  return new_array
end

def merge_data (keys,data)
  array = []
  counter = 0
  keys.each do |name| 
    data[0].each do |inkey,val|
      if inkey == name[:first_name]
       array[counter] = val
       array[counter][:first_name] = name[:first_name]
      end
    end
    counter +=  1
  end
   array
end

def find_cool(cool)
  array = []
  cool.each do |hash|
    if hash[:temperature] == "cool"
      array.push(hash)
    end 
  end 
  array
end

def organize_schools (schools)
  hash = {}
  schools.each do |name,loc_key|
    if !hash.include?(loc_key[:location])
      hash[loc_key[:location]] = []
    end
    hash[loc_key[:location]].push(name)
  end 
  hash
end 