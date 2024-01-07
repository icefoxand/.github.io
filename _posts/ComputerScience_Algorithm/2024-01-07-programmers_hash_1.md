---
title: 프로그래머스_hash01_완주하지못한선수  
layout: single
comments: true
toc: true
categories: [algo]
tag: [hash, python, programmers]
---

[문제링크](https://school.programmers.co.kr/learn/courses/30/lessons/42576)

# 1. 해결할 것
- 마라톤에 참여한 선수들의 이름이 담긴 배열: participant
- 완주한 선수들의 이름이 담긴 배열: completion
    + 완주 못한 선수의 이름을 return 하는 solution 함수 완성하기

---

# 2. 제한사항
- 마라톤에 참여한 선수 수: 1 이상 100,000 이하
- c ~ 의 길이는 p ~ 의 길이 보다 1 작음
- 참가자 이름은 1개 이상 20개 이하의 알파벳 소문자로 이뤄짐
    + 참가자 중에 **동명이인**이 있을 수도 있음

---

# 3. 어려운 점
처음에 아래와 같이 deque을 써서 풀었는데, 정확성 테스트만 통과하고 효율성을 통과하지 못했음. 

<img src="https://icefoxand.github.io/codeddong/assets/images/post/1.png" width="800" height="800">

```python
    from collections import deque

    def solution(participant, completion):
        participant = deque(participant)
        completion = deque(completion)

        for p in list(participant):
            if p in completion:
                participant.remove(p)
                completion.remove(p)   
        return participant.popleft()

    participant0 = deque(["mislav", "stanko", "mislav", "ana"])
    completion0 = ["stanko", "ana", "mislav"]
    print(solution(participant0, completion0))
```

---

# 4. 새로 배운 점