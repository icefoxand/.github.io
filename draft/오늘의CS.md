오늘의 CS 질문 (24-02-29)

1. 웹 서버 어플리케이션과 웹 어플리케이션 서버는 각각 무엇일까요?
   
   1. Web Server Application은 인터넷을 통해 사용자 요청을 받고, 웹 page, image, file 등을 브라우저로 전송하는 역할을 하는 software입니다. 예로는 Apache, Nginx, Microsoft IIS 등이 있습니다. 웹 사이트의 모든 resource를 관리하고, 사용자의 요청에 따라 적절한 response을 제공합니다. 
   2. Web Application: WB를 User Interface로 이용하는 Application.

2. naver에 접속할 때 일어나는 일은 뭘까요?
   
   1. user가 chrome 에서 www.naver.com (URL) 을 주소창에 검색한다.
   
   2. URL에 포함된 웹서버의 호스트명을 DNS(이름 해석) 서버에 질의해, 웹서버의 IP 주소를 해석한다. 
   
   3. DNS 서버에 질의할때, 이더넷 MAC 주소를 구하기 위해 ARP(주소 해석) 시행.
   
   4. 라우터가 DNS 서비기능을 가진다고 가정할때, 라우터에서 다시 DNS로 질의함.(라우터 자체엔 목적지인 웹서버 IP 주소가 없음.)
   
   5. 웹서버 IP 주소를 알면, 그 IP 주소를 지정하여 WB ↔ WSA 間, TCP connection 체결.
   
   6. chrome은 TCP로 WSA에 파일 전송 요청을 보낸다 (WB에서 지정한 URL을 포함한 HTTP request. ex: GET method)
   
   7. WSA는 TCP로 요청받은 파일을 응답으로 돌려보낸다 (response.)
   
   8. 수신받은 파일(TCP에서 복수로 분할된 웹 페이지의 파일을 조립하여)을 chrome에서 내용을 표시한다.
   
   9. user가 웹 사이트를 볼수 있다.
   
   10. 웹 사이트 접속에 이용하는 순서별 프로토콜: 
       
       - HTTP_wellknown port 80 (application layer) 
       
       - TCP (transport layer) 
       
       - <mark>(DNS)</mark> -> IP (internet layer)
       
       - <mark>(ARP)</mark> -> ethernet_MAC address (network interface layer) 

3. WB는 무엇일까요?
   
   1. Web Browser는 사용자가 인터넷을 통해 웹 page, 웹 application에 접근할 수 있게 하는 software입니다. 사용자는 WB를 통해 URL을 입력하고, 웹 서버로 부터 HTML이나 파일을 요청합니다.

4. (Web) Application Server ↔ Database Server 

5. 
