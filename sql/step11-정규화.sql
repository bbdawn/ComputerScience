/*
		데이터베이스 정규화( Normalization )
		: 데이터 중복을 최소화하고 데이터 무결성을 보장하기 위해 테이블을 분해하는 과정을 말한다 
		
		제 1 정규형 ( 1NF , 1 Normal Form ) 
		도메인은 원자값으로 구성되어야 한다 -> 컬럼에는 복수의 속성값을 입력해서는 안된다 -> 복수의 속성값을 가지는 속성을 분리 
		도메인 : 속성or 컬럼이 가질 수 있는 값의 범위 ( 성별 컬럼에는 남과 여 ) 
		원자값 : 더 이상 쪼갤수 없는 값 
		
		ex) 주문서에 상품번호,상품내역,단가,주문수량의 속성에 저장되는 값은 원자값으로 저장되어야 하므로 
			 별도의 주문 상세 테이블로 분리되어야 한다 
			 
		제 2 정규형 ( 2NF ) 
		부분 함수 종속을 분리하여 완전 함수 종속 상태로 만든다 
		
		ex) 주문 상세 테이블에서는 주문번호와 상품번호가 복합키로 구성되어 있다 
			여기에 일반 속성으로 상품내역과 단가, 주문수량이 있다 
			주문번호+상품번호로 구성된 복합키에 완전 종속되어 있는 속성은 주문수량이다 
			상품내역과 단가는 상품번호에만 부분 종속된다 -> 이런 부분 종속된 속성을 분리하는 것이 2정규화다 
			
		제 3 정규형 ( 3NF ) 
		이행 함수 종속을 분리 ( A -> B 이면 B-> C 이고 A -> C 이다 ) 
		일반 속성에 종속적인 속성을 분리한다 
		
		ex) 주문서 테이블에 주문번호를 기본키로 담당 부서번호, 부서명, 부서전화, 관리자명의 일반속성이 있다면 
			 부서번호 일반속성에 부서명, 부서전화, 관리자명이 종속되어 있는 상태다 
			 A -> B 이면 B-> C 이고 A -> C 이다 : 이행 함수 종속 
			 주문번호 -> 부서번호 , 부서번호 -> 부서명  즉  주문번호 -> 부서명 : 이행 함수 종속 상태
			 이런 일반 속성에 종속되어 있는 속성을 분리하는 것이 3 정규화다 
			 주문서는 부서번호만 가지고 있으면 된다. 부서명,부서전화,관리자와 같은 정보를 중복되게 저장할 필요가 없다 		 	  		 	 
		
*/









