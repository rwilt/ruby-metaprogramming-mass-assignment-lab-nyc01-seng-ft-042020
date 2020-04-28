class Person
  #your code here
attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
:weight, :handed, :complexion, :t_shirt_size, 
:wrist_size, :glove_size, :pant_length, :pant_width


def initialize(hash=nil)
  if hash #if a hash exists
    hash.each do |k,v| #iterate through it
      self.send("#{k}=", v) #sned the instance of the Class these keys and values (will take the place of writing @ name = name, etc.)
    end
  end
end

end

# class Person
#   attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
#   def initialize(attributes=nil)
#     if attributes
#       attributes.each do |k,v|
#         self.send("#{k}=", v)
#       end
#     end
#   end
# end