# function
# 1. 문자관련 함수
# length, char_length, instr, substr, concat, replace, trim, lpad, rpad

# 1. legnth
SELECT LENGTH('텍스트');

# 2. substr
select substr('programmers', 2, 1);
select substr('programmers', 2, 5);

select substr('programmers' from 2);
select substr('programmers' from 2 for 5);

# employee 테이블에서 남자인 직원을 조회
select emp_name
from employee
where substr(emp_no, 8, 1) in (1, 3);

# 3. concat
select concat('pro', 'gram', 'mers');

# concat_ws
select concat_ws('!', 'pro', 'gram');

# 4. instr
select instr('r', 'programmers');
# locate
select locate('r', 'programmers', 6);

# 5. replace

# trim

# lpad, rpad
select lpad('program', 11, 'hii');
select rpad('program', 11, 'hii');
select lpad('program', 11, ' ');

# employee 테이블에서 사원명과 주민번호 조회
# 주민번호 뒤 7자리는 *로 마스킹
select emp_name, rpad(substr(emp_no, 1, 7), 14, '*') as '주민번호'
from employee;

# 숫자 관련 함수
# abs, mod, floor, ceil, round, truncate
select abs(-22);
select mod(777, 10);
select floor(99.999);
select floor(-99.999);
select ceil(99.999);
select ceil(-99.999);
select round(99.99);
select round(93.99, -1);
select truncate(87.001, 0);

# 날짜 관련 함수
# now, datedif, date_add, date_sub, year, month, date
select now();
select sysdate();
select curdate();

# datediff
# employee 테이블에서 사원들의 근무일자를 조회
select emp_name, datediff(now(), hire_date) as '근무일자'
from employee
where ent_yn = 'N';

# dateadd
select date_add(now(), INTERVAL 1 day);
select date_add(now(), INTERVAL '5:10.0001' MINUTE_MICROSECCONDS);

select now(),
year(now()),
month(now()),
dayofweek(now()),
hour(now()),
minute(now()),
second(now());

# 형변환 함수
select cast('2025-03-21' as date) > '90-03-21';
select cast('2025-03-21' as datetime);
select cast('1901년 ' as year);














