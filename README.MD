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