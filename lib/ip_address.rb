        # # ip address validator here
#Ilias solution
# ip address validator
def valid_ip?(address)
  address.is_a?(String)? validate_number_count(address) : false
end

# validates that there are exactly 4 numbers in the address
def validate_number_count(address)
  address_arr = address.split(".")
  address_arr.count == 4? validate_range(address_arr) : false
end

# validates that the number's value lies within a range
def validate_range(address_arr)
  address_arr.all? do |number|
    number.to_i <= 255 && number.to_i >= 0
  end
end

#alternative:
        # class String
        # def valid_ip?(ip)
        #   ip.to_s #make sure it's a string
        #   valid_ip = ip.split('.') #split it on the point
        #   p valid_ip
        #   if valid_ip.length == 4
        #     valid_ip.each do |num|
        #       number = num.to_i #conv to a number
        #       if number >= 0 && number <=255
        #         p number
        #       else
        #         p "numbers were bad"
        #         return false
        #       end #end if
        #     end #end loop
        #     return true #if through loop and false return true
        #   else
        #     p "Length of input bad"
        #     return false #if length not 4
        #   end #end length ig
        # end
        # end

#other alternative:
# def valid_ip? ip
#     if !ip.is a? String
#       return false
#     end
#     num_array = ip.split(".")

#     if num_array.length !=4
#       return false
#     end

#     for num in num_array do
#       if num.to_i <0 || num.to_i >255
#         return false
#       end
#     end
#   return true
# end





