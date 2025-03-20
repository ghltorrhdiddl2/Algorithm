# ["코드 번호(code)", "제조일(date)", "최대 수량(maximum)", "현재 수량(remain)"]
def solution(data, ext, val_ext, sort_by):
    answer = []
    op = ["code","date","maximum","remain"]

    for i in data:
        if i[op.index(ext)] < val_ext:
            answer.append(i)
    return sorted(answer, key=lambda x: x[op.index(sort_by)])