# 산술연산자
# +, -, *, /
select 10 + 10;
select 10 - 10;
select 10 * 10;
select 10 / 3;


# 비교연산자
# <, >, <=, >=, =, !=, <>(이것도 다르다는 뜻)
select 20 < 10;
select 20 > 10;
select 20 <= 10;
select 20 >= 10;
select 20 = 10;
select 20 <> 10;

select date('90-01-01') > date('25-03-20');

# 논리연산자
# not, and, or
select true and true;
select not false and true; # not이 and보다 연산우선순위가 높
select false and false;
select true or false;
