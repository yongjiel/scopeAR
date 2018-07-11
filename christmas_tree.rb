require './lib/tree_shape'
require './lib/util'

Util::parse_args($0)

t = TreeShape.new(ARGV[0].to_i)
t.fill_grid()
t.print_shape()
