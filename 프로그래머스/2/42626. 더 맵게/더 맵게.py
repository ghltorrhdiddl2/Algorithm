# 모든 음식의 스코빌 지수를 K 이상으로 만들기 위해 섞어야 하는 최소 횟수
import heapq
def solution(scoville, K):
    n = 0
    heapq.heapify(scoville)
    while True:
        a = heapq.heappop(scoville)
        if len(scoville)<1 and a < K:
            return -1
        if a >= K:
            break
        else:
            n+=1
            b = heapq.heappop(scoville)
            heapq.heappush(scoville, a+b*2)
    return n