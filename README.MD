## Mapper.xml에서 resultType에 패키지를 일일히 선언하지 않으려면
```
// mybatis-config.xml

<typeAliases>
	<package name="kr.co.web.domain" />
</typeAliases>
```

## controller
- 등록작업은 크게 2가지로 구분
```
1. 등록을 위한 입력페이지를 보는 경우(GET 방식)
2. 실제로 데이터를 처리하는 부분(POST 방식)
```

## Criteria.java
```
파라미터들을 맡아서 관리하는 클래스

page, perPageNum, getPageStart
```

## PageMaker.java

- 페이지 번호를 출력하는 기능을 처리하는 클래스

- 필요한 데이터

```
 외부에서 입력되는 데이터 : page, perPageNum(Criteria)
 
 DB에서 계산되는 데이터 : totalDataCount(데이터 전체 개수)
 
 계산을 통해 만들어지는 데이터 : startPage(시작페이지), endPage(끝 페이지),
 					prev(이전 버튼 활성화 여부), netx(다음 버튼 활성화 여부)
```

//예: 현재 페이지가 13이면 13/10 = 1.3 올림-> 2 끝페이지는 2*10=20
		this.endPage = (int)(Math.ceil(page/(double)displayPageCnt)*displayPageCnt);
		
		
		
this.next = (endPage * perPageNum < totalDataCount); //아직 더 보여질 페이지가 있으면 true 
???