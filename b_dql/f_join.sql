# join
# 데이터 중복을 최소화하고 이상현상을 방지하기 위해 테이블을 설계하는 과정에서
# 연관된 데이터를 분리하여 저장
# 서로 연관된 데이터였으나 분리되어 저장된테이블을 결합하여 조회할 때 사용

# 서브쿼리와 동일한 동작을 하는 쿼리를 작성하면 성능사의 문제를 최소화 할 수 있다.

# 모든 직원이 이름, 부서명 조회
select emp_name,
	(select dept_title from department where e.dept_code = dept_id)
from employee e;

select *
from employee e
join department d on (e.dept_code = d.dept_id);

# join
# cross join
# inner join
# outer join
# 		left join
# 		right join
# 		full outer join - 지원해주지 않음

# cross join
# 조인조건절이 무조건 참인 join
# 30만개 * 300만개 -> 9천억개 result
select *
from employee
cross join department;

# inner join(equals join, 등가조인)
# inner join -> join 
select emp_id, emp_name, e.job_code, job_name
from employee e
join job j on (e.job_code = j.job_code);

# using
select emp_id, emp_name, job_code, job_name
from employee e
join job j using(job_code);

# 여러 테이블 join 하기
# 모든 사원들의 사번, 이름, 부서명, 근무지를 출력
select emp_id, emp_name, dept_title, local_name
from employee e
join department d on(e.dept_code = d.dept_id)
join location l on (d.location_id = l.local_code);