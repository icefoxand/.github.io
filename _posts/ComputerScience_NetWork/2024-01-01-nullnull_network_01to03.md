---
title: 널널한개발자 네트워크 기초이론(now:3 of 38)
layout: single
comments: true
toc: true
categories: [study]
tag: [cs,network,nullnull]
---

- [널널한개발자 - 네트워크 기초이론](https://www.youtube.com/playlist?list=PLXvgR_grOs1BFH-TuqFsfHqbh-gpMbFoy) 
    - 시작일 2024-01-01. Mon. 10:00

# [1강,2강,3강] 'U/K/HW' than 'OSI 7 layer'

+ 개념, 추상화, (이상) ... abstraction
    ex. OSI 7 layer

+ 사실, 실상, 실제, (현실) ... implementation

    |S/W or H/W|layer|name|비고|
    |S/W|(user)6|process|OS위에서 돌아가는 프로그램. HTTP?|
    |S/W|(user)5|File|socket이라고도 함|
    |S/W|(kernel)4|TCP|Port number 식별자|
    |S/W|(kernel)3|IP|IP adress 식별자|
    |S/W|(kernel)2|driver|드라이버|
    |H/W|1|NIC|네트워크 인터페이스 카드. MAC adress ... 식별자identifier|


+ HOST: 네트워크에 연결된 컴퓨터
    - HOST는 두가지로 이루어지는데, 
    1. 네트워크 이용주체(end-point; peer or client, server)가 있고, 
    2. 네트워크 자체를 이루는 것이 있음.(ex. router, firewall, IPS(보안).. 이들을 switch 라고함). 
    
    - 협의의 네트워크는 인터넷이라고 할 수 있는데, 인터넷은 크게 
    1. router 와 
    2. DNS로 이뤄진다고 볼 수 있음.

+ **Quiz: 그러면 일반적으로 인터넷 공유기 라고 불리는 것은 switch 인가? 맞다면 그것의 layer는 어디일까?**