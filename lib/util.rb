module Util

    def self.parse_args(program)
        usage_msg = "Usage: ruby #{program} [-h|-help|--help|<# of rows or height>]"
        if ARGV.size != 1
            $stderr.puts "#{usage_msg}\n" + 
                         "Error: One and only one argument needed."
            exit(1)
        elsif ['-h', '-help', '--help'].include? ARGV[0]
            puts "#{usage_msg}\n" +
                 "Note: # of rows or height is an integer greater than 0."
            exit(0)
        elsif ARGV[0] !~ /^\d+$/
            $stderr.puts "#{usage_msg}\n" +
                "Error: # of rows or height must be an integer greater than 0"
            exit(1)
        elsif ARGV[0].to_i <= 0
            $stderr.puts "#{usage_msg}\n" +
                "Error: # of rows or height must be greater than 0."
            exit(1)
        end
    end

end
