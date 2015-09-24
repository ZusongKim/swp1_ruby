phonebook = []
loop do
    puts "Welcome!"
    print "Please input your name here: "
    name = gets.chomp
    print "Then, please input your phonenumber here: "
    phone = gets.chomp
    print "Finally, please input your gender as 'male' or 'female': "
    gender = gets.chomp
    if gender == "female"
        gender = "female"
    else
        gender = "male"
    end
    
    student = {name: name, phone: phone, gender: gender}
    # 자신이 입력한 정보 확인하기
    puts "-------------------------------------------------"
    puts "Your name is '#{name}', your phonenumber is '#{phone}', and your gender is '#{gender}'. Are they right?"
    print "If they are true, input 1. If they are not true, input 2: "
    ok = true
    while ok do
        check = gets.chomp.to_i
        if check == 1
            puts "Your information has been stored successfully!"
            phonebook << student
            ok = false
            elsif check == 2
            puts "Please type the information again"
            ok = false
        else
            puts "Please check the information"
            puts "If they are true, input 1. If they are not true, input 2: "
        end
    end
    puts "Current Phonebook list is as follwoings"
    puts phonebook
    puts "-------------------------------------------------"
    # 삭제기능
    puts "If you want to remove a student's information from the list, please type 'remove'."
    remove = gets.chomp
    if remove == "remove"
        print "Type the name of the student whom you want to remove from the list: "
        removename = gets.chomp
        phonebook.each do |i|
            if i[:name] == removename
                phonebook.delete(i)
            end
        end
        puts "Now the phonebook list is as followings"
        puts phonebook
    else
        puts "Removing has not been processed"
    end
    puts "-------------------------------------------------"
end