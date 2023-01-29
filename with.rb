
def with *obj, &b 
    b.send(:yield, *obj)

end 


with 1,2,3,4 do
    print _1, _2, _3, _4
end

puts

with [1,2,3,4] do
    print _1 #, _2, _3, _4
    puts
    print _1, _2, _3, _4
end

puts "\ncontainer test"

with [1,2,3,4] do |_|
    print _
    puts
end

puts

with(1, 2, 3, 4) { p _1, _2, _3, _4 }

def jeff (x, y)
    yield 5, 6, 7
end

jeff(4, 10) { print _1, _2, _3 }




# def with *obj, &b 
#     yield *obj
# end

# class Jeff
#     def wow
#         "wow='#{@x}'"
#     end

#     def wow= x
#         @x = x
#     end
# end

# with j=Jeff.new, k=Jeff.new do
#     p _1
#     p _1.wow
#     _1.wow = 42
#     _2 = _1
# end


# # p j.wow
# p k.wow