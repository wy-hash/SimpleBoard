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
-- 유저 시퀀스 생성
create sequence user_seq;

-- 유저 테이블 생성
CREATE TABLE member
(
    seq             NUMBER           NOT NULL, 
    id              VARCHAR2(50)     NOT NULL, 
    password        VARCHAR2(100)    NOT NULL, 
    name            VARCHAR2(50)     NOT NULL, 
    birthday        DATE             NOT NULL, 
    email           VARCHAR2(100)    NOT NULL, 
    area            VARCHAR2(100)    NOT NULL, 
    phone_number    VARCHAR2(13)     NOT NULL, 
    state           char(1)          NOT NULL, 
    regdate         DATE             NOT NULL, 
    updatedate      DATE             NOT NULL, 
    photo           VARCHAR2(400)    NOT NULL, 
    CONSTRAINT MEMBER_PK PRIMARY KEY (seq)
);

select *
from member;
--현재 계정의 테이블 조회
select *
from tab;
