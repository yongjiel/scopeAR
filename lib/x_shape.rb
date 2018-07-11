require_relative './shape'

class XShape < Shape
    # This class represents a X shape.
    # It will base on the rectangle shape first inherited
    # from Shape class. Then based on the x shape, it will
    # be filled up with "*" in some grid coordinates.  

   def get_width()
      self.height
   end

   def algorithm(xi)
      # First line starts from start index 0 and last
      # index of cloumns.
      # In next line, the left side '*' index matches row 
      # index, and the right side '*' index match 
      # self.height - 1 - row_index.
      # params: xi  - line_index from 0
      # return: an array of column numbers corresponding to 
      #         the current line index which can make 
      #         the X shap.
      yi_right = self.height - 1 - xi
      yi_left = xi
      y_array = [yi_left, yi_right]
   end

end