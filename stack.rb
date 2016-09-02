class Stack
  def initialize(name)
    @name = name
    @data = []
  end

  attr_reader :data

  def pop
    if @data.length != 0 then
      return @data.pop
    else
      return 0
    end
  end

  def push(current_value)
    @data.push(current_value)
  end

  def peek
    return @data.last || 0
  end

  def print_stack(ascii_mode)
    @data.each do |value|
      print ascii_mode ? value.chr : value.to_s + "\n"
    end
    STDOUT.flush
  end

  def talk
    puts @name
  end

  def inspect_array
    return @data.inspect
  end

  def height
    return @data.length
  end

  def at(index)
    return @data.at(index)
  end

  def get_data
    return @data
  end

  def set_data(data)
    @data = data
  end
end

def is_opening_bracket?(b)
  if b != nil then
    return '([{<'.include? b
  end
end

def is_closing_bracket?(b)
  if b != nil then
    return ')]}>'.include? b
  end
end

def brackets_match?(b1, b2)
  s = [b1, b2].join('')
  return ['()', '[]', '{}', '<>'].include? s
end

