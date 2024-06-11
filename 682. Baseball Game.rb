#* 682. Baseball Game
operations = ["5","2","C","D","+"]
# @param {String[]} operations
# @return {Integer}
#*
def cal_points(operations)
    res=[]
    operations.each do |char|
        case
        when char == "C"
            res.pop
        when char == "D"
            res << (res[-1] * 2)
            
        when char == "+"
            res << res[-1] + res[-2]
            
        else
            res << char.to_i
        end
    end
    res.sum
end
operations = ["5","2","C","D","+"]
cal_points(operations)

#*
def cal_points(operations)
    #p operations.pop
    res=[]
    operations.each do |char|
        p char
        if char == "C"
            res.pop
        elsif char == "D"
            p res << (res[-1] * 2)
            
        elsif char == "+"
            p res << res[-1] + res[-2]
            
        else
            p res << char.to_i
        end
        p res
    end
    res.sum
end
operations = ["5","2","C","D","+"]
cal_points(operations)

