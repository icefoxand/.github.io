---
title: deque 공식문서 해석
layout: single
comments: true
toc: true
categories: [python]
tag: [deque, method]
---

[파이썬 공식문서: deque](https://docs.python.org/3/library/collections.html?highlight=deque#collections.deque)

# deque objects
class collections.deque([iterable[, maxlen]])
Returns a new deque object initialized left-to-right (using append()) with data from iterable. If iterable is not specified, the new deque is empty.
- 'from collections import deque' 으로 불러와서 사용 가능
- maxlen, 즉 최대길이를 설정하여 생성 가능함

Deques are a generalization of stacks and queues (the name is pronounced “deck” and is short for “double-ended queue”). Deques support thread-safe, memory efficient appends and pops from either side of the deque with approximately the same O(1) performance in either direction.
- 덱들은 스택과 큐들의 **일반화(generalization)**임
- 덱들은 thread-safe하고, 메모리가 efficient한, 'append'와 'pop' 기능을 지원함
    + **thread-safe** 란? 멀티쓰레딩 환경(여러 쓰레드가 동시에 실행되는 프로그램 환경)에서 특정 함수나 객체가 여러 쓰레드에 의해 동시에 접근되어도 그 실행이 안전함을 의미. 여러 쓰레드가 동시에 같은 데이터에 접근하거나 수정해도, 데이터의 정합성이 깨지지 않고 예상치 못한 오류가 발생하지 않게 보장한다는 뜻임. 
    + 결론적으로 어느 방향에서든 거의 동일한 O(1) 퍼포먼스를 보여줌

Though list objects support similar operations, they are optimized for fast fixed-length operations and incur O(n) memory movement costs for pop(0) and insert(0, v) operations which change both the size and position of the underlying data representation.
- list(이하 'ls')객체도 유사한 작동을 지원함. 그러나 ls는 고정된 길이의 연산에 최적화되어있고, pop(0)이나 insert(0,v)같은 연산들은 ls의 크기와 데이터 위치를 변경하게되면서 O(n)의 메모리 이동비용을 발생 시킴.

If maxlen is not specified or is None, deques may grow to an arbitrary length. Otherwise, the deque is bounded to the specified maximum length. Once a bounded length deque is full, when new items are added, a corresponding number of items are discarded from the opposite end. Bounded length deques provide functionality similar to the tail filter in Unix. They are also useful for tracking transactions and other pools of data where only the most recent activity is of interest.
- maxlen 이 특정하게 지정된 경우, 덱은 그 지정된 길이로 최대길이가 제한됨.
- 오직 가장 최근의 활동만이 중요한 거래 추적 등에서 유용하게 사용됨
    + 예를 들면 로그메시지, 실시간 큰 데이터의 최신 부분, 문서의 최근 변경사항 등..

---

**Deque objects support the following methods:**

## append(x)
Add x to the right side of the deque.

## appendleft(x)
Add x to the left side of the deque.

## clear()
Remove all elements from the deque leaving it with length 0.

## copy()
Create a shallow copy of the deque.

New in version 3.5.

## count(x)
Count the number of deque elements equal to x.

New in version 3.2.

## extend(iterable)
Extend the right side of the deque by appending elements from the iterable argument.

## extendleft(iterable)
Extend the left side of the deque by appending elements from iterable. Note, the series of left appends results in reversing the order of elements in the iterable argument.

## index(x[, start[, stop]])
Return the position of x in the deque (at or after index start and before index stop). Returns the first match or raises ValueError if not found.

New in version 3.5.

## insert(i, x)
Insert x into the deque at position i.

*If the insertion would cause a bounded deque to grow beyond maxlen, an IndexError is raised.*

New in version 3.5.

## pop()
Remove and return an element from the right side of the deque. If no elements are present, raises an IndexError.

## popleft()
Remove and return an element from the left side of the deque. If no elements are present, raises an IndexError.

## remove(value)
Remove the first occurrence of value. If not found, raises a ValueError.

## reverse()
Reverse the elements of the deque in-place and then return None.

New in version 3.2.

## rotate(n=1)
Rotate the deque n steps to the right. If n is negative, rotate to the left.

When the deque is not empty, rotating one step to the right is equivalent to d.appendleft(d.pop()), and rotating one step to the left is equivalent to d.append(d.popleft()).

Deque objects also provide one read-only attribute:

## maxlen
Maximum size of a deque or None if unbounded.

New in version 3.1.

- In addition to the above, deques support iteration, pickling, len(d), reversed(d), copy.copy(d), copy.deepcopy(d), membership testing with the in operator, and subscript references such as d[0] to access the first element. Indexed access is O(1) at both ends but slows to O(n) in the middle. For fast random access, use lists instead.

Starting in version 3.5, deques support __add__(), __mul__(), and __imul__().