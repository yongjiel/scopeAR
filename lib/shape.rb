

class Shape
    # This class represents a rectangle shape. It should be
    # inherited by child class to decide the height(rows) 
    # and width(columns)

    # heigth represents rows of grid. 
    # width represents columns of grid.
    # grid represents a retangle shape with coordiates when 
    # shape is initiated. It is the two dimension array with 
    # coordinate [x][y] and values with ' ' or '*'.  
    attr_accessor  :grid, :height, :width

    def initialize(height)
      self.height = height
      self.width = self.get_width
      self.grid = self.create_grid(self.height, self.width)
   end

    def get_width()
        # Must be overrided by child class. They will decide 
        # the width based on their shape requirement.
        # params: height
        # return: width (columns)
        0
    end

    def create_grid(heigth, width)
        Array.new(heigth){Array.new(width)}
    end

    def fill_grid()
        # fill grid with row index and column indices.
        self.grid.each_index do |xi|
            y_array = self.algorithm(xi)
            self.grid[xi].each_index do |yi|
                grid[xi][yi] = y_array.include?(yi) ? '*' : ' '
            end
        end
    end

    def algorithm(xi)
        # Must be overrided by child class. Child class will 
        # decide the algorithm based on the row index xi to 
        # figure out the columns of that row which should be 
        # filled with '*' to make the shape.
        # params: xi - row index of 0 based.
        # return: an array of indices of those columns.
        []
    end

    def print_shape()
        grid.each_index do |xi|
            grid[xi].each_index do |yi|
                print grid[xi][yi]
            end
            print "\n"
        end
    end
end       