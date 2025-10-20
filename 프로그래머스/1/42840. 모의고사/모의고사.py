def solution(answers):
    patterns = [
                [1,2,3,4,5],
                [2,1,2,3,2,4,2,5],
                [3,3,1,1,2,2,4,4,5,5]
               ]
    scores = [0,0,0]
    
    for i,answer in enumerate(answers):
        for j,pattern in enumerate(patterns):
            if answer == pattern[i%len(pattern)]:
                scores[j] += 1
                
    m_score = max(scores)
    highest_scores = []
    
    for k, score in enumerate(scores):
        if score == m_score:
            highest_scores.append(k+1)
            
    return highest_scores