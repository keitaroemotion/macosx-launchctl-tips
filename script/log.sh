#!/usr/bin/env ruby 

require "date"

option     = ARGV[0]
keys       = ["--start", "--shutdown"]
home       = File.expand_path('~')
dest       = "#{home}/.log/log.csv"

def show_help_menu()
    appname = "logh"
    puts
    puts "#{appname} [-h|help]  ... show help menu"
    puts "#{appname} --show     ... show logs"
    puts "#{appname} --start    ... write start script   (起動)"
    puts "#{appname} --shutdown ... write shutdown script(終了)"
    puts
    abort
end

is_help = ["-h", "help"].include?(option)
is_show = "--show" == option

if is_help
    show_help_menu
end

if is_show
    system "cat #{dest}"
    abort
end

if ! keys.include?(option)
    puts "\nYour argument is wrong. Please input either #{keys[0]} or #{keys[1]}\n\n"
    abort
end

maps = {
    "--start"    => "起動",
    "--shutdown" => "終了"
}
 
date_string = DateTime.now.strftime("%Y/%d/%m %H:%M:%S #{maps[option]}")

File.open(dest, "a+") do |f| 
    f.puts "#{date_string}"
end

puts "\nLogging complete.\n\n"
