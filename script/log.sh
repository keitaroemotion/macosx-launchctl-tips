#!/usr/bin/env ruby 

# 11/07/2019 16:04:43,起動
# 2019/11/07 16:07:31,終了

require "date"

option = ARGV[0]
keys   = ["--start", "--shutdown"]
home   = File.expand_path('~')
dest   = "#{home}/.log/log.csv"

if ! keys.include?(option)
    puts "Your argument is wrong. Please input either #{keys[0]} or #{keys[1]}"
    abort
end

maps = {
    "--start"    => "起動",
    "--shutdown" => "終了"

}

date_string = DateTime.now.strftime("%Y/%d/%m %H:%M:%S #{maps[option]}")

File.open(dest, "a+") do |f| 
    f.puts date_string
end


