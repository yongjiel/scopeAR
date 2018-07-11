require './lib/x_shape'
require './lib/util'

Util::parse_args($0)

x = XShape.new(ARGV[0].to_i)
x.fill_grid()
x.print_shape()
