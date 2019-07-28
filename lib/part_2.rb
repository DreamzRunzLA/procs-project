def reverser(str, &proc)
    reversed = str.reverse!
    return proc.call(reversed)
end


def word_changer(sent, &proc)
    words = sent.split(' ')
    ans = []

    words.each do |ele|
        ans << proc.call(ele)
    end

    return ans.join(' ')
end


def greater_proc_value(num, proc1, proc2)
    return proc1.call(num) > proc2.call(num) ? proc1.call(num) : proc2.call(num)
end


def and_selector(arr, proc1, proc2)
    ans = []
    arr.each do |ele|
        if proc1.call(ele) && proc2.call(ele)
            ans << ele
        end
    end
    return ans
end


def alternating_mapper(arr, proc1, proc2)
    ans =[]
    arr.each_with_index do |ele, i|
        if i % 2 == 0
            ans << proc1.call(ele)
        else
            ans << proc2.call(ele)
        end
    end
    return ans
end

