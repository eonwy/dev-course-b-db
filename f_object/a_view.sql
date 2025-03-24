-- 원본 테이블로붜 유도되어 일반 테이블처럼 조작할 수 있는 가사의 테이블

create view v_emp_dept
as select emp_id, emp_name, dept_title
from employee e
join department d on (e.dept_code = d.dept_id);

select * from v_emp_dept;

show create view v_emp_dept;