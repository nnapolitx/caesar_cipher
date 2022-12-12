def cipher(word, key)
    arr = word.chars
    int_arr = arr.map { |c| c.ord }
    cip_int_arr = add_ints(int_arr, key)
    arr_cipher = cip_int_arr.map { |c| c.chr}
    coded_word = arr_cipher.join
    p coded_word
end

def add_ints(arr, k)
    arr.map do |c|
        if c>64 && c<91
            c+=k
            if c>90
                c-=26
            end
        elsif c>96 && c<123
            c+=k
            if c>122
                c-= 26
            end
        end
        c
    end
end

cipher('What a string!', 5)