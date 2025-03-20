# where 절
# employee 테이블에서 월급이 350만원 이상 600만원 이하인 사원을 조회
select *
from employee
where salary >= 3500000 and salary <= 6000000;

# *** between A and B ***
# A 이상 B 이하
select *
from employee
where salary between 3500000 and 6000000;

# 350 만원 미만 또는 600 만원 초과인 사원
select *
from employee
where salary < 3500000 or salary > 6000000;

select *
from employee
where salary not between 3500000 and 6000000;

# 입사일이 90-01-01 부터 01-01-01 사이인 모든 사원 조회
select *
from employee
where hire_date between '90-01-01' and '01-01-01';

# *** like ***
# 컬럼명 like 패턴
# 패턴문자 : %, _
# % : 'A%' A로 시작하는
#	  '%A' A로 끝나는
#     '%A%' A가 포함된

# employee 테이블에서 성이 이씨인 사원을 조회
select emp_name
from employee
where emp_name like '이%';

# 이름에 '이'가 포함되고 입사일이 01-01-01 이후인 사원 
select emp_name, emp_id, hire_date
from employee
where hire_date > '01-01-01'
and emp_name like '%이%';

# 이름이 '연'으로 끝나고 재직중인 사원 
select *
from employee
where emp_name like '%연'
and ent_yn = 'N';

# like 절의 와일드카드
# _ 문자열의 자리수를 지정
# like '___A%' : 앞자리 3자리 뒤에 A가 오는 패턴으로 시작하는 

# 전화번호 뒤에 4번째 자리가 7인 전화번호를 가진 사원 
select *
from employee
where phone like '%7___'; 

# escape 문자
# escape 'escape 문자'
# 이메일 '_' 앞에 3글자가 존재하는 사원 
select *
from employee
where email like '___\_%';

# *** in ***
# 직급코드가 J7 또는 J2인 사원 중 급여가 200만원 이상
select emp_name, salary, job_code
from employee
where job_code not in ('J7', 'J2')
and salary >= 2000000;

# *** null ***
# null : 알 수 없음
# null도 연산 가능
# null의 모든 산술연산의 결과 : null
# null의 모든 비교연산의 결과 : null
# null의 논리연산
# nul and true : null
# null and false : false
# nul or true : true
# null or false : null

# bonus가 null인 사원
select * 
from employee
where bonus is null;

# 총 연봉이 5500 미만인 사원
select emp_name, salary * 12 * (1 + ifnull(bonus, 0)) as '총연봉 '
from employee
where salary * 12 * (1 + ifnull(bonus, 0)) < 55000000;
