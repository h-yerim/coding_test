def solution(numbers):
    test = []
    for i in range(len(numbers)):
        for j in range(i+1,len(numbers)):
            test.append(numbers[i]+numbers[j])
        
    answer = sorted(set(test))
    return answer