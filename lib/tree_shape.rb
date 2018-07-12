require_relative './shape'

# This class represents a christmas tree shape.
# It will base on the retangle shape first inherited
# from Shape class. Then based on the christmas tree
# shape, it will be filled up with "*" in some grid
# coordinates.
class TreeShape < Shape

   def get_width()
     self.height * 2 - 1
   end

   # First line starts from middle of all the columns.
   # In next line, expand left side and right side with 
   # '*' in index range(middle_idx - line_index, 
   # middle_idx + line_index)
   # params: xi  - line_index of 0 based.
   # return: an array of column index numbers corresponding  
   #         to the current line index which can make 
   #         the tree shape.
   def algorithm(xi)   
    yi_min = self.height - 1 - xi
    yi_max = self.height - 1 + xi
    y_array = (yi_min..yi_max).to_a
   end
end
