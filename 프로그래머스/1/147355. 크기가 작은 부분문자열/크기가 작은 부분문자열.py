def solution(t, p):
    t_size = len(t)
    p_size = len(p)
    cnt = 0
    for i in range(0,(t_size-p_size)+1):
        if int(t[i:i+p_size])<=int(p):
            cnt+=1
    return cnt