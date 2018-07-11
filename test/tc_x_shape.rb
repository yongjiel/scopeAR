require_relative "../lib/x_shape"
require "test/unit"
 
class TestXShape < Test::Unit::TestCase
 
  def test_get_width
    # X shape shape grid is a retangle
    # the width(columns) is calculated baesd on 
    # the height(rows)
    t = XShape.new(8)
    its_width = t.get_width()
    assert_equal(its_width, t.width)
  end

  def test_grid
    # grid should be created when new object of 
    # tree shape class up. all the grid ponints 
    # should be equal to heigth * width
    t = XShape.new(8)
    count = 0
    t.grid.each_index do |xi|
        t.grid[xi].each_index do |yi|
            count += 1
        end
    end
    assert_equal(count, t.height * t.width)
  end

  def test_fill_grid
    # after grid is filled, it should be the shape of '*'
    # X. For x shape, first row always has one "*" at first
    # index and last index, 
    # second row has "*" at index 1 and index -2.
    # Now use height 5 to do the test.
    final_point_array = [[0,4], [1,3], [2,2], [3,1],[4,0]]
    t = XShape.new(5)
    t.fill_grid()
    error = 0
    t.grid.each_index do |xi|
        hit_indices = final_point_array[xi]
        t.grid[xi].each_index do |yi|
            if t.grid[xi][yi] == '*' and ! hit_indices.include?(yi)
              error += 1
            elsif t.grid[xi][yi] == ' ' and hit_indices.include?(yi)
              error += 1
            end
        end
    end
    assert_equal(error, 0)
  end
 
end