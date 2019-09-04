--관리자 (system)

-- 간단한 게시판 작성을 위한 사용자 생성 -- 사용자명 : simple / 비밀번호 : 1234
create USER simple identified by 1234
default tablespace users
temporary tablespace temp;

-- 사용자에게 권한부여
grant connect, dba to simple;

-- 저장
commit;

-- 사용자 (simple/1234)
