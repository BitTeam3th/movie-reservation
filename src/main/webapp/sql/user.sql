-- 사용자 테이블 생성

CREATE TABLE USER (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    EMAIL VARCHAR(100) NOT NULL,
    PASSWORD VARCHAR(100) NOT NULL,
    USERNAME VARCHAR(100) NOT NULL 
);

-- 코멘트

ALTER TABLE USER COMMENT ='사용자테이블';
ALTER TABLE USER MODIFY EMAIL VARCHAR(100) COMMENT '로그인아이디';
ALTER TABLE USER MODIFY PASSWORD VARCHAR(100) COMMENT '로그인비밀번호';
ALTER TABLE USER MODIFY USERNAME VARCHAR(100) COMMENT '사용자명';