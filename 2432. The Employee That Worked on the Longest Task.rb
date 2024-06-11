#* 2432. The Employee That Worked on the Longest Task
n = 10; logs = [[0,3],[2,5],[0,9],[1,15]]
# @param {Integer} n
# @param {Integer[][]} logs
# @return {Integer}
def hardest_worker(n, logs)
  res=[]
  logs.each_with_index do |(id,time), i|
     if i < 1
         res << time
     else
        p time 
        p logs[i-1].last
        res << (time - logs[i-1].last)
     end
  end
    logs[res.index(res.max)].first
end
p hardest_worker(n, logs)

def hardest_worker(n, logs)
    res=0
    logs.each_with_index do |(id,time), i|
        if i < 1
            res += time
        else
            p time 
            p logs[i-1].last
            res = [res, (time - logs[i-1].last)].max
        end
    end
        res
end
p hardest_worker(n, logs)

