SELECT * FROM emp;

SELECT DISTINCT job FROM emp;

SELECT * FROM emp ORDER BY sal;

select * from emp order by deptno asc,job desc; 

SELECT DISTINCT job FROM emp ORDER BY job DESC;

SELECT mgr FROM emp; 
SELECT * FROM emp WHERE empno in (select mgr from emp); 

SELECT * FROM emp WHERE hiredate < '01-jan-1981';

SELECT empno ,ename ,sal,sal/31 daily_sal ,12*sal annsal FROM emp ORDER BY annsal;

select empno,ename ,job,hiredate, months_between(sysdate,hiredate) exp
from emp where empno in (select mgr from emp); 

UPDATE emp SET MGR = '7369' WHERE job = 'PRESIDENT'; 
SELECT empno,ename,sal, months_between(sysdate,hiredate) exp FROM emp WHERE mgr = 7369;

SELECT * FROM emp WHERE comm > sal;

select empno,ename,job,sal,comm,months_between(sysdate,hiredate) exp,sal/30 dialy_sal from emp where sal/31 > 100;

select empno,ename,job from emp where job = 'CLERK' or job = 'ANALYST' ORDER BY job;

select ename,hiredate from emp;
select * from emp where hiredate in ( '1-may-81','3-dec-81','17-dec-81','19-jan-80') order by hiredate; 

select * from emp where deptno = '10' or deptno = '20';

select * from emp where hiredate > '31-dec-80' and hiredate < '1-jan-82';

select ename,sal, sal*12 annual_sal from emp where sal*12 > 22000 and sal*12 < 45000;

select ename from emp where length (ename) = 5; 

select ename from emp where ename like 's%' and length (ename) = 5; 

select * from emp where length(ename) = 4 and ename like '__r%'; 

select * from emp where length(ename) = 5 and ename like 's%_' and ename like '%h';
select * from emp where length(ename) = 5 and ename like 's%h';

select * from emp where to_char (hiredate,'mon') = 'jan';
 

select * from emp where ename like '%ll%';

select * from emp where deptno != '20';

select * from emp where job != 'PRESIDENT'  and job != 'managers' order by sal;

select * from emp where empno not like '78%';

select job from emp;
select * from emp where job in ('CLERK','SALESMAN','ANALYST');

select * from emp where to_char (hiredate,'MON') != 'MAR';

select * from emp where deptno = '20';

select * from emp where to_char (hiredate,'yyyy') = '1981' and deptno = '10' or deptno = '30';

select * from emp where ename like 'SMITH%';

select * from branch where branchno = '102'; 