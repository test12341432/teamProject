/* 컨텐츠 테이블*/
create table contents(
content_code int primary key        --컨텐츠 코드
,content_seq int 		            --회차
,content_date varchar2(300) 					 --날짜
,content_title varchar2(300)        -- 제목
,content_subtitle varchar2(300)     -- 부제,영어제목
,content_spot varchar2(500)        --행사장소
,content_cast varchar2(4000) default '없음' --출연진
,content_rating int                 -- 관람등급
,content_com_price int    default 0    -- 자유석입장료
,content_vip_price int    default 0    -- vip입장료
,content_r_price int    default 0    -- R석 입장료
,content_s_price int    default 0    -- S석 입장료
,content_a_price int    default 0    -- A석 입장료
,content_time varchar2(300)       			  --  시간
,content_maxline int                --총 열
,content_maxrow int					-- 총 행
,content_genre varchar2(300)		--장르
);
select * from contents;
select * from book_content;
/*시퀀스 등록*/
create sequence contents_no_seq increment by 1 start with 1 nocache;

/*예약(좌석)정보 테이블 */
create table book_content(
fk_code int        -- foreign key로 연결
,content_date varchar2(500)  --날짜
,content_seq int            --회차
,select_line int            --선택 열
,select_row int             --선택 행
,seat_class	varchar2(30)	-- 좌석 클래스 (vip,r,s,a)석
,user_id varchar2(300)       --user id
,book_date date				--등록 날짜
);

/* 밑에 건 신경쓰지 말것 
ALTER TABLE book_content ADD CONSTRAINT fk_book_code FOREIGN KEY (fk_code) REFERENCES contents (content_code); -- 컨텐츠 코드 외래키 지정
drop table book_content;
update contents set content_genre='뮤지컬' where content_code=2;
*/

/*테스트용 레코드 등록*/
insert into contents values (contents_no_seq.nextval,7,'2014/11/11','뮤지컬 위키드','Musical Wicked',
'샤롯데씨어터','김선영/박혜나/김소현/김보경/이지훈/조상웅/외..',7,0,140000,110000,90000,60000,'2시간30분',32,25,'뮤지컬');

insert into BOOK_CONTENT values(2,'2014/11/11',1,3,2,'vip','test01',sysdate);
insert into BOOK_CONTENT values(2,'2014/11/11',1,4,3,'vip','test01',sysdate);
insert into BOOK_CONTENT values(2,'2014/11/11',1,1,5,'vip','test01',sysdate);
