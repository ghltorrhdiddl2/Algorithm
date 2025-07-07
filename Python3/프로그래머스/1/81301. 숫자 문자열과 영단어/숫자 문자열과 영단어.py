def solution(s):
    answer = []; alpha=''
    dic = {'zero':0, 'one':1, 'two':2, 'three':3, 'four':4, 'five':5, 
          'six':6, 'seven':7, 'eight':8, 'nine':9}
    for n in s:
        if n.isdigit():
            answer.append(n)
        else:
            alpha += n
            if alpha in dic:
                answer.append(str(dic[alpha]))
                alpha=''
    return int(''.join(answer))