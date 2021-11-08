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
values(1, 0, '�׽�Ʈ���Դϴ�.', '�׽�Ʈ���Դϴ�.', null, sysdate, 'hong');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(2, 0, '�ȳ��ϼ���.', '��ǰ �ı� �Դϴ�.', null, sysdate, 'hong');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(3, 2, '�亯�Դϴ�.', '��ǰ �ı⿡ ���� �亯�Դϴ�.', null, sysdate, 'hong');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(5, 3, '�亯�Դϴ�.', '��ǰ �����ϴ�.', null, sysdate, 'lee');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(4, 0, '�������Դϴ�..', '������ �׽�Ʈ���Դϴ�.', null, sysdate, 'kim');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(6, 2, '��ǰ �ı� �Դϴ�..', '�̼��ų��� ��ǰ ��� �ı⸦ �ø��ϴ�!!', null, sysdate, 'lee');

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