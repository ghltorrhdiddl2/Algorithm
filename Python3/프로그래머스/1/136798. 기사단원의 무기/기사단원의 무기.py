def solution(number, limit, power):
    answer = []
    def get_div(n):
        div = []
        for i in range(1,int(n**0.5)+1):
            if n%i==0:
                div.append(i)
                if i!=n//i:
                    div.append(n//i)
        return div
    
    for n in range(1,number+1):
        if len(get_div(n)) > limit:
            answer.append(power)
        else:
            answer.append(len(get_div(n)))

    return sum(answer)