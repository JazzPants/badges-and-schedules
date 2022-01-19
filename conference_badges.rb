# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    newArray = []
array.each do |speaker|
    newArray << "Hello, my name is #{speaker}."
end
# p newArray
newArray
end

attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
batch_badge_creator(attendees)

# def assign_rooms(array)
#     newArray = []
#     room = 1
#     person = 1
# while room <= 7
#     array.each do |speaker|
#     newArray << "Hello, #{speaker}! You'll be assigned to room #{room}!"
#     person += 1
#     end
#     room += 1
# end
#     puts newArray
#     newArray
# end

#use PUTS not P to pass test
def assign_rooms(array)
room = 1
newArray = []
    array.each.with_index(0) do |value, index|
        newArray << "Hello, #{value}! You'll be assigned to room #{index+1}!"
        room += 1
    end
    newArray
end

def printer(array)
    #iteration method
    nameArray = batch_badge_creator(array) 
    roomsArray = assign_rooms(array)
    nameArray.each do |namePrint|
        puts namePrint
    end
    roomsArray.each do |roomPrint|
        puts roomPrint
    end

    #while method
    # name = 0
    # room = 0
    # while name <= array.size - 1
    #     puts nameArray[name]
    #     name += 1
    # end

    # while room <= array.size - 1
    #     puts roomsArray[room]
    #     room += 1
    # end


  

    # while counter <= array.size - 1
    #     nameArray = batch_badge_creator(array) 
    #     p nameArray[counter]
    #     roomsArray = assign_rooms(array)
    #     p roomsArray[counter]
    #     counter += 1
    # end



    # while counter <= array.size
    #     puts newArray[counter]
    #     counter += 1
    # end

    # puts batch_badge_creator(array)
    # puts assign_rooms(array)
    # while counter <= batch_badge_creator(array).size
    #     puts batch_badge_creator(array)[counter]
    #     counter += 1
    # end

end

printer(attendees)