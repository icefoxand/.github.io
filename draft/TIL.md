TIL (2024-03-05)

## <mark>SASS(Syntactically Awesome StyleSheets)</mark>

- ### **CSS(종속형 시트)로 해석 및 컴파일되는 스크립트 언어**

- CSS의 전처리기. CSS의 한계와 단점을 보완하여, 더욱 가독성 높고 재사용성 높은 CSS를 만들어줌.

## <mark>React</mark>

- ### render()
  
  - 함수 컴포넌트가 호출되면 render()도 호출됨
  
  - React 요소 트리로부터 VDOM 만들고, 전 VDOM과 비교해서 RDOM에 반영할 내용 결정
  
  - props, state 변경시, 예전 렌더링된 요소와 새로 return된 요소를 비교함
  
  - 실제 DOM을 업데이트 할 지 말지 결정
  
  - 순수함수
  
  - render phase: VDOM 만들고, RDOM과 비교해서 업데이트
  
  - commit phase: RDOM 업데이트

- ### JSX
  
  - HTML 구조를 작성할 수 있도록 만들어진 JS 확장 문법
  
  - ex) React.createElement("div", null, item.name)

- ### React.Fragment
  
  - <></>
  
  - React는 여러 element를 return 못함. syntax error 뜸.
  
  - 의미 없는 div 태그를 사용하여, RDOM에 노드를 추가 안해도 됨.
  
  - 재조정하는 과정에서 tree 사용. 16.2부터 도입

- ### props
  
  - 부모에서 자식으로 전달되는 값, 지금 안 변하는 값.

- ### state
  
  - 해당 컴포넌트 내부적으로 갖고있고, 지금 변하는 값

- ### class
  
  - lifecycle 메소드 제공. 생성자에서 state정의 

- ### hooks
  
  - 간결한 함수형 코드. this 키워드 없이 함수 등 정의.

- ### const [initialState, setState] = useState

## <mark>Python +a</mark>

- ### enumerate
  
  - index와 그 인덱스에 해당하는 것을 같이 사용할 수 있게 해줌
  
  - ex) [i+1 for i, score in enumerate(scores) if score == max_score ]

- ### 패턴이 있고, 검증대상이 패턴 길이보다 길 경우
  
  - 모듈러 연산으로 순환주기를 일치시켜 준다.

- ### [1,2,3]을 '123'으로 만드는법
  
  - ' '.join( str (item) for item in [1,2,3] )
- ## "123"을 [1,2,3]으로 만드는 법
  - [int]
