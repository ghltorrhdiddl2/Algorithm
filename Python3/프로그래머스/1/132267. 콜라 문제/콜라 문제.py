def solution(a, b, n):
    answer = 0
    while n>=a:
        new = n//a   # 6 = 20//3
        n = n-new*a+new*b  # 20-6*3+6*1
        answer+=new*b
    return answer