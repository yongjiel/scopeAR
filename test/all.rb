

Dir[File.dirname(File.absolute_path(__FILE__)) + '/**/tc_*.rb'].each do |file|
    require file
end