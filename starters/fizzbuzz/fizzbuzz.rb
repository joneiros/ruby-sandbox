#!/usr/bin/env ruby

def getFizz(num)
    return num % 3 == 0 ? "Fizz" : ""
end

def getBuzz(num)
    return num % 5 == 0 ? "Buzz" : ""
end

#---
innum = ARGV[0]

if innum == nil
    puts("How much to FizzBuzz?")
    innum = STDIN.gets.chomp
    puts("\n")
end

puts("FizzBuzzing....")
for i in 1..innum.to_i
    fb = getFizz(i) + getBuzz(i)
    puts((fb == "" ? i : fb))
end