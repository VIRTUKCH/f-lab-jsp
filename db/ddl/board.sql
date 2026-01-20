CREATE TABLE board (
    num        NUMBER PRIMARY KEY,
    title      VARCHAR2(200) NOT NULL,
    content    VARCHAR2(2000) NOT NULL,
    id         VARCHAR2(50) NOT NULL,
    postdate   DATE DEFAULT SYSDATE NOT NULL,
    visitcount NUMBER,
    CONSTRAINT fk_board_member
        FOREIGN KEY (id) REFERENCES member(id)
);
