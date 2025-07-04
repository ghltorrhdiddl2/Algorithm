from collections import deque

def solution(n, m, section):
    cnt = 0
    section = deque(section) 

    while section:
        end = section[0] + m - 1
        while section and section[0] <= end:
            section.popleft()
        cnt += 1

    return cnt
