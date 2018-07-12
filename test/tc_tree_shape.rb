require_relative "../lib/tree_shape"
require "test/unit"
 
class TestTreeShape < Test::Unit::TestCase
 
  # christmas tree shape grid is a retangle
  # the width(columns) is calculated baesd on 
  # the height(rows)
  def test_get_width
    t = TreeShape.new(8)
    its_width = t.get_width()
    assert_equal(its_width, t.width)
  end

  # grid should be created when new object of 
  # tree shape class up. all the grid ponints 
  # should be equal to heigth * width
  def test_grid
    t = TreeShape.new(8)
    count = 0
    t.grid.each_index do |xi|
        t.grid[xi].each_index do |yi|
            count += 1
        end
    end
    assert_equal(count, t.height * t.width)
  end

  # after grid is filled, it should be the shape of '*'
  # comes up. For christmas tree, first row always has one 
  # "*", second row has 3 "*", thrid row has 5, fourth row
  # has 7. Now ussing 4 rows to test.
  def test_fill_grid
    final_count_array = [1, 3, 5, 7]
    t = TreeShape.new(4)
    t.fill_grid()
    tmp_array = []
    t.grid.each_index do |xi|
        count = 0
        t.grid[xi].each_index do |yi|
            count += 1 if t.grid[xi][yi] == '*'
        end
        tmp_array << count
    end
    assert_equal(final_count_array, tmp_array)
  end
 
end