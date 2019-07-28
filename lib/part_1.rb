def my_map(arr, &proc)
    newArr = []
    arr.each do |ele|
        newArr << proc.call(ele)
    end
    return newArr
end


def my_select(arr, &proc)
    newArr = []
    arr.each do |ele|
        if proc.call(ele)
            newArr << ele
        end
    end
    return newArr
end


def my_count(arr, &proc)
    count = 0
    arr.each do |ele|
        if proc.call(ele)
            count += 1
        end
    end
    return count
end


def my_any?(arr, &proc)
    arr.each do |ele|
        if proc.call(ele)
            return true
        end
    end
    return false
end


def my_all?(arr, &proc)
    arr.each do |ele|
        if !proc.call(ele)
            return false
        end
    end
    return true
end


def my_none?(arr, &proc)
    arr.each do |ele|
        if proc.call(ele)
            return false
        end
    end
    return true
end
