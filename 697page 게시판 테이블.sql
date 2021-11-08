create table t_Board(
    articleNO       number(10)      PRIMARY KEY,
    parentNO        number(10)      default 0,
    title           VARCHAR2(500)   not null,
    content         VARCHAR2(4000),
    imageFileName   VARCHAR2(100),
    writedate       date            DEFAULT sysdate not null,
    id              VARCHAR2(10),
    CONSTRAINT FK_ID foreign key(id)
    REFERENCES t_member(id)
);

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(1, 0, '테스트글입니다.', '테스트글입니다.', null, sysdate, 'hong');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(2, 0, '안녕하세요.', '상품 후기 입니다.', null, sysdate, 'hong');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(3, 2, '답변입니다.', '상품 후기에 대한 답변입니다.', null, sysdate, 'hong');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(5, 3, '답변입니다.', '상품 좋습니다.', null, sysdate, 'lee');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(4, 0, '김유신입니다..', '김유신 테스트글입니다.', null, sysdate, 'kim');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(6, 2, '상품 후기 입니다..', '이순신끼의 상품 사용 후기를 올립니다!!', null, sysdate, 'lee');

commit;

select *
from t_board;

select level,
    articleNO,
    parentNO,
    lpad(' ', 4*(level-1)) || title title,
    content,
    writeDate,
    id
    from t_board
    start with parentNo=0
    CONNECT by PRIOR articleNO=parentNO
    order SIBLINGS by articleNo desc;