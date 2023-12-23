###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        puts "---i-"
        puts i_arg
        puts "------"
        if result[i] < i_arg && i != 0
          i += 1
          puts "i arg is greater"
          puts result[i]
          puts "--"
        else
            result.insert(i, i_arg)
            puts "-- r -"
            puts result[i-1]
            puts "----"
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

puts result
