ScopeAR Assignment of Shapes
======

Prerequisite: 
------
Linux or Mac, Ruby of any version installed, ruby module or gem 'test/unit' must exist.
If you do not have ruby installed, please reference https://www.ruby-lang.org/en/documentation/installation/ to install ruby first.
To test if 'test/unit' is installed, please try ' ruby -e 'require "test/unit"' '. If not, please reference https://rubygems.org/gems/test-unit/versions/3.1.8 to install the modlue.
Please use 'git clone' command to download the entire package into your local environmen first.

Part 1: Chistmas Tree
------
1. $cd scopeAR
2. $ruby christmas_tree.rb <# of row or height>
3. If need help, please run 'ruby christmas_tree.rb [-h|-help|--help]'

Part 2: X shape
------
1. $cd scopeAR
2. $ruby x.rb <# of row or height>
3. If need help, please run 'ruby christmas_tree.rb [-h|-help|--help]'

Test: 
------
1. $cd scopeAR
2. For the entire test, please run 'ruby -Itest test/all.rb'
3. For individual test, please run 'ruby test/tc_tree_shape.rb' and 
   'ruby  test/tc_x_shape.rb'.
