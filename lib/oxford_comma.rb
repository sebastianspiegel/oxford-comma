def oxford_comma(array)
    if array.size == 1
        array.join
    elsif array.size == 2
        array.join (" and ")
    else
        new_string = array.join ",, "
        new_string << ", and"
        new_array = new_string.split(", ")
        new_array[-1], new_array[-2] = new_array[-2], new_array[-1]
        new_array.join " "
    end
end
