--------------------------------------------------------
--  
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CAFEFILE_CFILE_NO_SEQ
--------------------------------------------------------
--이하는 admin권한으로 스크립트 실행
DROP USER c##cafeinme CASCADE;
CREATE USER c##cafeinme IDENTIFIED BY cafeinme DEFAULT TABLESPACE users TEMPORARY
TABLESPACE temp PROFILE DEFAULT;
GRANT CONNECT, RESOURCE TO c##cafeinme;
GRANT CREATE VIEW, CREATE SYNONYM TO c##cafeinme;
GRANT UNLIMITED TABLESPACE TO c##cafeinme;
ALTER USER c##cafeinme ACCOUNT UNLOCK;

--여기부터는 계정으로 접속
conn c##cafeinme/cafeinme;





   CREATE SEQUENCE  "C##CAFEINME"."CAFEFILE_CFILE_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CAFE_CAFE_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##CAFEINME"."CAFE_CAFE_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CATEGORYS_CATEGORY_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##CAFEINME"."CATEGORYS_CATEGORY_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence COMMENTS_COMMENT_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##CAFEINME"."COMMENTS_COMMENT_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MENUFILE_MFILE_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##CAFEINME"."MENUFILE_MFILE_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MENU_MENU_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##CAFEINME"."MENU_MENU_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ORDERS_ORDER_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##CAFEINME"."ORDERS_ORDER_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence REVIEWS_REVIEW_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##CAFEINME"."REVIEWS_REVIEW_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TAGS_TAG_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##CAFEINME"."TAGS_TAG_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table BOOKMARKS
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."BOOKMARKS" 
   (	"MEMBER_ID" VARCHAR2(30), 
	"CAFE_NO" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."BOOKMARKS"."MEMBER_ID" IS '�쉶�썝�븘�씠�뵒';
   COMMENT ON COLUMN "C##CAFEINME"."BOOKMARKS"."CAFE_NO" IS '移댄럹踰덊샇';
--------------------------------------------------------
--  DDL for Table CAFE
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."CAFE" 
   (	"CAFE_NO" NUMBER(10,0) DEFAULT "C##CAFEINME"."CAFE_CAFE_NO_SEQ"."NEXTVAL", 
	"CAFE_OWNERID" VARCHAR2(30), 
	"CAFE_NAME" VARCHAR2(60), 
	"BN" VARCHAR2(12), 
	"CAFE_ADDRESS1" VARCHAR2(90), 
	"CAFE_ADDRESS2" VARCHAR2(90), 
	"CAFE_TEL" VARCHAR2(13), 
	"OPEN_TIME" VARCHAR2(7), 
	"CLOSE_TIME" VARCHAR2(7), 
	"CAFE_CONTENT" CLOB, 
	"CAFE_ONLINESALE" NUMBER(1,0)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."CAFE"."CAFE_NO" IS '移댄럹踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."CAFE"."CAFE_OWNERID" IS '�젏二쇱븘�씠�뵒';
   COMMENT ON COLUMN "C##CAFEINME"."CAFE"."CAFE_NAME" IS '移댄럹紐�';
   COMMENT ON COLUMN "C##CAFEINME"."CAFE"."BN" IS '�궗�뾽�옄踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."CAFE"."CAFE_ADDRESS1" IS '移댄럹二쇱냼';
   COMMENT ON COLUMN "C##CAFEINME"."CAFE"."CAFE_ADDRESS2" IS '移댄럹�긽�꽭二쇱냼';
   COMMENT ON COLUMN "C##CAFEINME"."CAFE"."CAFE_TEL" IS '移댄럹�쟾�솕踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."CAFE"."OPEN_TIME" IS '媛쒖젏�떆媛�';
   COMMENT ON COLUMN "C##CAFEINME"."CAFE"."CLOSE_TIME" IS '�룓�젏�떆媛�';
   COMMENT ON COLUMN "C##CAFEINME"."CAFE"."CAFE_CONTENT" IS '移댄럹�꽕紐�';
   COMMENT ON COLUMN "C##CAFEINME"."CAFE"."CAFE_ONLINESALE" IS '�삩�씪�씤�뙋留ㅼ뿬遺�';
--------------------------------------------------------
--  DDL for Table CAFEFILE
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."CAFEFILE" 
   (	"CFILE_NO" NUMBER(10,0), 
	"CFILE_ORIGIN_NAME" VARCHAR2(150), 
	"CFILE_CHANGE_NAME" VARCHAR2(150), 
	"CFILE_SIZE" VARCHAR2(45), 
	"CFILE_TYPE" VARCHAR2(100), 
	"CFILE_PATH" VARCHAR2(100), 
	"CAFE_NO" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."CAFEFILE"."CFILE_NO" IS '�뙆�씪踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."CAFEFILE"."CFILE_ORIGIN_NAME" IS '蹂몃옒�뙆�씪紐�';
   COMMENT ON COLUMN "C##CAFEINME"."CAFEFILE"."CFILE_CHANGE_NAME" IS '���옣�맆�뙆�씪紐�';
   COMMENT ON COLUMN "C##CAFEINME"."CAFEFILE"."CFILE_SIZE" IS '�뙆�씪�궗�씠利�';
   COMMENT ON COLUMN "C##CAFEINME"."CAFEFILE"."CFILE_TYPE" IS '�뙆�씪�삎�떇';
   COMMENT ON COLUMN "C##CAFEINME"."CAFEFILE"."CFILE_PATH" IS '�뙆�씪���옣寃쎈줈';
   COMMENT ON COLUMN "C##CAFEINME"."CAFEFILE"."CAFE_NO" IS '移댄럹踰덊샇';
--------------------------------------------------------
--  DDL for Table CAFETAGS
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."CAFETAGS" 
   (	"CAFE_NO" NUMBER(10,0), 
	"TAG_NO" NUMBER(4,0)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."CAFETAGS"."CAFE_NO" IS '移댄럹踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."CAFETAGS"."TAG_NO" IS '�깭洹몃쾲�샇';
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."CART" 
   (	"MEMBER_ID" VARCHAR2(30), 
	"CAFE_NO" NUMBER(10,0), 
	"MENU_NO" NUMBER(10,0), 
	"MENU_NAME" VARCHAR2(60), 
	"MENU_COUNT" NUMBER(5,0), 
	"MENU_PRICE" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."CART"."MEMBER_ID" IS '�쉶�썝�븘�씠�뵒';
   COMMENT ON COLUMN "C##CAFEINME"."CART"."CAFE_NO" IS '移댄럹踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."CART"."MENU_NO" IS '硫붾돱踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."CART"."MENU_NAME" IS '硫붾돱紐�';
   COMMENT ON COLUMN "C##CAFEINME"."CART"."MENU_COUNT" IS '硫붾돱媛쒖닔';
   COMMENT ON COLUMN "C##CAFEINME"."CART"."MENU_PRICE" IS '硫붾돱媛�寃�';
--------------------------------------------------------
--  DDL for Table CATEGORYS
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."CATEGORYS" 
   (	"CATEGORY_NO" NUMBER(4,0) DEFAULT "C##CAFEINME"."CATEGORYS_CATEGORY_NO_SEQ"."NEXTVAL", 
	"CATEGORY_NAME" VARCHAR2(30)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."CATEGORYS"."CATEGORY_NO" IS '移댄뀒怨좊━踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."CATEGORYS"."CATEGORY_NAME" IS '移댄뀒怨좊━紐�';
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."COMMENTS" 
   (	"COMMENT_NO" NUMBER(10,0), 
	"COMMENT_CONTENT" CLOB, 
	"COMMENT_DATE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"CAFE_NO" NUMBER(10,0), 
	"REVIEW_NO" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."COMMENTS"."COMMENT_NO" IS '�뙎湲�踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."COMMENTS"."COMMENT_CONTENT" IS '�뙎湲��궡�슜';
   COMMENT ON COLUMN "C##CAFEINME"."COMMENTS"."COMMENT_DATE" IS '�뙎湲��궇吏�';
   COMMENT ON COLUMN "C##CAFEINME"."COMMENTS"."CAFE_NO" IS '移댄럹踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."COMMENTS"."REVIEW_NO" IS '由щ럭踰덊샇';
--------------------------------------------------------
--  DDL for Table MEMBERS
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."MEMBERS" 
   (	"MEMBER_ID" VARCHAR2(30), 
	"MEMBER_PW" VARCHAR2(16), 
	"MEMBER_NAME" VARCHAR2(10), 
	"MEMBER_BIRTH" DATE, 
	"MEMBER_NICKNAME" VARCHAR2(30), 
	"MEMBER_ADDRESS1" VARCHAR2(90), 
	"MEMBER_ADDRESS2" VARCHAR2(90), 
	"MEMBER_TEL" VARCHAR2(13)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."MEMBERS"."MEMBER_ID" IS '�쉶�썝�븘�씠�뵒';
   COMMENT ON COLUMN "C##CAFEINME"."MEMBERS"."MEMBER_PW" IS '鍮꾨�踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."MEMBERS"."MEMBER_NAME" IS '�씠由�';
   COMMENT ON COLUMN "C##CAFEINME"."MEMBERS"."MEMBER_BIRTH" IS '�깮�뀈�썡�씪';
   COMMENT ON COLUMN "C##CAFEINME"."MEMBERS"."MEMBER_NICKNAME" IS '蹂꾩묶';
   COMMENT ON COLUMN "C##CAFEINME"."MEMBERS"."MEMBER_ADDRESS1" IS '二쇱냼';
   COMMENT ON COLUMN "C##CAFEINME"."MEMBERS"."MEMBER_ADDRESS2" IS '�긽�꽭二쇱냼';
   COMMENT ON COLUMN "C##CAFEINME"."MEMBERS"."MEMBER_TEL" IS '�쟾�솕踰덊샇';
--------------------------------------------------------
--  DDL for Table MENU
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."MENU" 
   (	"MENU_NO" NUMBER(10,0) DEFAULT "C##CAFEINME"."MENU_MENU_NO_SEQ"."NEXTVAL", 
	"MENU_NAME" VARCHAR2(60), 
	"MENU_PRICE" NUMBER(10,0), 
	"MENU_CONTENT" VARCHAR2(150), 
	"MENU_CATEGORY" NUMBER(4,0), 
	"MENU_ONLINESALE" NUMBER(1,0), 
	"CAFE_NO" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."MENU"."MENU_NO" IS '硫붾돱踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."MENU"."MENU_NAME" IS '硫붾돱紐�';
   COMMENT ON COLUMN "C##CAFEINME"."MENU"."MENU_PRICE" IS '硫붾돱媛�寃�';
   COMMENT ON COLUMN "C##CAFEINME"."MENU"."MENU_CONTENT" IS '硫붾돱�꽕紐�';
   COMMENT ON COLUMN "C##CAFEINME"."MENU"."MENU_CATEGORY" IS '硫붾돱移댄뀒怨좊━';
   COMMENT ON COLUMN "C##CAFEINME"."MENU"."MENU_ONLINESALE" IS '�삩�씪�씤�뙋留ㅼ뿬遺�';
   COMMENT ON COLUMN "C##CAFEINME"."MENU"."CAFE_NO" IS '移댄럹踰덊샇';
--------------------------------------------------------
--  DDL for Table MENUFILE
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."MENUFILE" 
   (	"MFILE_NO" NUMBER(10,0), 
	"MFILE_ORIGIN_NAME" VARCHAR2(150), 
	"MFILE_CHANGE_NAME" VARCHAR2(150), 
	"MFILE_SIZE" VARCHAR2(45), 
	"MFILE_TYPE" VARCHAR2(100), 
	"MFILE_PATH" VARCHAR2(100), 
	"MENU_NO" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."MENUFILE"."MFILE_NO" IS '�뙆�씪踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."MENUFILE"."MFILE_ORIGIN_NAME" IS '蹂몃옒�뙆�씪紐�';
   COMMENT ON COLUMN "C##CAFEINME"."MENUFILE"."MFILE_CHANGE_NAME" IS '���옣�맆�뙆�씪紐�';
   COMMENT ON COLUMN "C##CAFEINME"."MENUFILE"."MFILE_SIZE" IS '�뙆�씪�궗�씠利�';
   COMMENT ON COLUMN "C##CAFEINME"."MENUFILE"."MFILE_TYPE" IS '�뙆�씪���엯';
   COMMENT ON COLUMN "C##CAFEINME"."MENUFILE"."MFILE_PATH" IS '�뙆�씪���옣寃쎈줈';
   COMMENT ON COLUMN "C##CAFEINME"."MENUFILE"."MENU_NO" IS '硫붾돱踰덊샇';
--------------------------------------------------------
--  DDL for Table ORDERDETAIL
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."ORDERDETAIL" 
   (	"ORDER_NO" NUMBER(10,0), 
	"MENU_NO" NUMBER(10,0), 
	"MENU_NAME" VARCHAR2(60), 
	"MENU_COUNT" NUMBER(5,0), 
	"MENU_PRICE" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."ORDERDETAIL"."ORDER_NO" IS '二쇰Ц踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERDETAIL"."MENU_NO" IS '硫붾돱踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERDETAIL"."MENU_NAME" IS '硫붾돱紐�';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERDETAIL"."MENU_COUNT" IS '硫붾돱媛쒖닔';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERDETAIL"."MENU_PRICE" IS '硫붾돱媛�寃�';
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."ORDERS" 
   (	"ORDER_NO" NUMBER(10,0), 
	"MEMBER_ID" VARCHAR2(30), 
	"CAFE_NO" NUMBER(10,0), 
	"ORDER_ITEMS" CLOB, 
	"ORDER_PRICE" NUMBER(10,0), 
	"ORDER_COUNT" NUMBER(9,0), 
	"ORDER_DATE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"ORDER_ADDRESS1" VARCHAR2(90), 
	"ORDER_ADDRESS2" VARCHAR2(90), 
	"ORDER_PAYMENTTYPE" VARCHAR2(20), 
	"ORDER_RECEIVETYPE" VARCHAR2(10), 
	"ORDER_STATUS" VARCHAR2(15), 
	"ORDER_REVIEW_YN" NUMBER(1,0)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."ORDER_NO" IS '二쇰Ц踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."MEMBER_ID" IS '二쇰Ц�옄�븘�씠�뵒';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."CAFE_NO" IS '二쇰Ц移댄럹踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."ORDER_ITEMS" IS '二쇰Ц�긽�뭹';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."ORDER_PRICE" IS '二쇰Ц珥앷�寃�';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."ORDER_COUNT" IS '二쇰Ц珥앷컻�닔';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."ORDER_DATE" IS '二쇰Ц�궇吏�';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."ORDER_ADDRESS1" IS '諛곕떖二쇱냼';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."ORDER_ADDRESS2" IS '諛곕떖�긽�꽭二쇱냼';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."ORDER_PAYMENTTYPE" IS '二쇰Ц寃곗젣諛⑹떇';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."ORDER_RECEIVETYPE" IS '二쇰Ц�닔�졊諛⑹떇';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."ORDER_STATUS" IS '二쇰Ц�긽�깭';
   COMMENT ON COLUMN "C##CAFEINME"."ORDERS"."ORDER_REVIEW_YN" IS '由щ럭�쑀臾�';
--------------------------------------------------------
--  DDL for Table REVIEWS
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."REVIEWS" 
   (	"REVIEW_NO" NUMBER(10,0), 
	"REVIEW_NICKNAME" VARCHAR2(30), 
	"REVIEW_ITEMS" CLOB, 
	"REVIEW_CONTENT" CLOB, 
	"REVIEW_STAR" NUMBER(1,0), 
	"REVIEW_DATE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"REVIEW_CMT" NUMBER(1,0), 
	"MEMBER_ID" VARCHAR2(30), 
	"CAFE_NO" NUMBER(10,0), 
	"ORDER_NO" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."REVIEWS"."REVIEW_NO" IS '由щ럭踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."REVIEWS"."REVIEW_NICKNAME" IS '由щ럭�옉�꽦�옄 �땳�꽕�엫';
   COMMENT ON COLUMN "C##CAFEINME"."REVIEWS"."REVIEW_ITEMS" IS '二쇰Ц�븘�씠�뀥';
   COMMENT ON COLUMN "C##CAFEINME"."REVIEWS"."REVIEW_CONTENT" IS '由щ럭�궡�슜';
   COMMENT ON COLUMN "C##CAFEINME"."REVIEWS"."REVIEW_STAR" IS '由щ럭蹂꾩젏';
   COMMENT ON COLUMN "C##CAFEINME"."REVIEWS"."REVIEW_DATE" IS '由щ럭�옉�꽦�씪';
   COMMENT ON COLUMN "C##CAFEINME"."REVIEWS"."REVIEW_CMT" IS '�뙎湲��쑀臾�';
   COMMENT ON COLUMN "C##CAFEINME"."REVIEWS"."MEMBER_ID" IS '由щ럭�옉�꽦�옄 �븘�씠�뵒';
   COMMENT ON COLUMN "C##CAFEINME"."REVIEWS"."CAFE_NO" IS '移댄럹踰덊샇';
   COMMENT ON COLUMN "C##CAFEINME"."REVIEWS"."ORDER_NO" IS '二쇰Ц踰덊샇';
--------------------------------------------------------
--  DDL for Table TAGS
--------------------------------------------------------

  CREATE TABLE "C##CAFEINME"."TAGS" 
   (	"TAG_NO" NUMBER(4,0) DEFAULT "C##CAFEINME"."TAGS_TAG_NO_SEQ"."NEXTVAL", 
	"TAG_NAME" VARCHAR2(30)
   ) ;

   COMMENT ON COLUMN "C##CAFEINME"."TAGS"."TAG_NO" IS '�깭洹몃쾲�샇';
   COMMENT ON COLUMN "C##CAFEINME"."TAGS"."TAG_NAME" IS '�깭洹몃챸';
REM INSERTING into C##CAFEINME.BOOKMARKS
SET DEFINE OFF;
REM INSERTING into C##CAFEINME.CAFE
SET DEFINE OFF;
Insert into C##CAFEINME.CAFE (CAFE_NO,CAFE_OWNERID,CAFE_NAME,BN,CAFE_ADDRESS1,CAFE_ADDRESS2,CAFE_TEL,OPEN_TIME,CLOSE_TIME,CAFE_ONLINESALE) values (14,'aaa@bbb.com','dfdf','010-85-20852','�꽌�슱�듅蹂꾩떆 留덊룷援� �긽�븫�궛濡�1湲� 15','1痢�','010-8520-8520','09:00','21:00',0);
Insert into C##CAFEINME.CAFE (CAFE_NO,CAFE_OWNERID,CAFE_NAME,BN,CAFE_ADDRESS1,CAFE_ADDRESS2,CAFE_TEL,OPEN_TIME,CLOSE_TIME,CAFE_ONLINESALE) values (1,'test@test.com','�뒪��踰낆뒪 �궪�궛�젏','111-11-11111','�슱�궛愿묒뿭�떆 �궓援� �궪�궛濡� 16','�뒪��踰낆뒪 �궪�궛�젏','010-0000-0000','10:00','22:00',1);
Insert into C##CAFEINME.CAFE (CAFE_NO,CAFE_OWNERID,CAFE_NAME,BN,CAFE_ADDRESS1,CAFE_ADDRESS2,CAFE_TEL,OPEN_TIME,CLOSE_TIME,CAFE_ONLINESALE) values (2,'test2@test.com','怨좎뼇�씠 移댄럹','123-33-21233','�슱�궛愿묒뿭�떆 �궓援� �궪�궛濡� 20','151-21 2痢�','010-2323-1313','14:00','22:00',1);
Insert into C##CAFEINME.CAFE (CAFE_NO,CAFE_OWNERID,CAFE_NAME,BN,CAFE_ADDRESS1,CAFE_ADDRESS2,CAFE_TEL,OPEN_TIME,CLOSE_TIME,CAFE_ONLINESALE) values (3,'test3@test.com','�뒪��踰낆뒪 �떊蹂듭젏','123-21-33323','�슱�궛愿묒뿭�떆 �궓援� �떊蹂듬줈72踰덇만 24-36','24-36踰덉� 1痢�','010-2232-1132','09:00','20:00',1);
Insert into C##CAFEINME.CAFE (CAFE_NO,CAFE_OWNERID,CAFE_NAME,BN,CAFE_ADDRESS1,CAFE_ADDRESS2,CAFE_TEL,OPEN_TIME,CLOSE_TIME,CAFE_ONLINESALE) values (4,'test4@test.com','蹂꾩씠鍮쏅굹�뒗諛ㅼ뿉','123-32-45345','�슱�궛愿묒뿭�떆 �궓援� �궪�궛濡� 20','蹂꾨튆鍮뚮뵫 1痢�','010-3333-1111','10:00','23:00',1);
Insert into C##CAFEINME.CAFE (CAFE_NO,CAFE_OWNERID,CAFE_NAME,BN,CAFE_ADDRESS1,CAFE_ADDRESS2,CAFE_TEL,OPEN_TIME,CLOSE_TIME,CAFE_ONLINESALE) values (5,'test5@test.com','KH�젙蹂닿탳�쑁�썝','123-22-22344','�슱�궛愿묒뿭�떆 �궓援� �궪�궛濡� 19','5痢� 501�샇','010-2233-1132','09:00','21:30',1);
Insert into C##CAFEINME.CAFE (CAFE_NO,CAFE_OWNERID,CAFE_NAME,BN,CAFE_ADDRESS1,CAFE_ADDRESS2,CAFE_TEL,OPEN_TIME,CLOSE_TIME,CAFE_ONLINESALE) values (6,'test6@test.com','�씠�뵒�빞 �궪�궛�젏','123-43-24232','�슱�궛愿묒뿭�떆 �궓援� �궪�궛濡�35踰덇만 18','濡��뜲留덊듃 1痢�','010-2233-1123','00:00','12:00',1);
Insert into C##CAFEINME.CAFE (CAFE_NO,CAFE_OWNERID,CAFE_NAME,BN,CAFE_ADDRESS1,CAFE_ADDRESS2,CAFE_TEL,OPEN_TIME,CLOSE_TIME,CAFE_ONLINESALE) values (7,'test7@test.com','�뙏�룄吏꾨�몄뭅�럹','123-44-32212','�슱�궛愿묒뿭�떆 以묎뎄 蹂묒쁺濡� 44','蹂묒쁺�궗嫄곕━ 11-32踰덉�','010-2233-1123','08:00','22:00',1);
Insert into C##CAFEINME.CAFE (CAFE_NO,CAFE_OWNERID,CAFE_NAME,BN,CAFE_ADDRESS1,CAFE_ADDRESS2,CAFE_TEL,OPEN_TIME,CLOSE_TIME,CAFE_ONLINESALE) values (8,'test8@test.com','�옣寃�而ㅽ뵾�꽱�꽣','021-32-21123','�슱�궛愿묒뿭�떆 �슱二쇨뎔 踰붿꽌�쓭 �옣寃�湲� 60','臾몄닔�룞�썝濡쒖뻹���겕','010-8224-1814','10:00','00:00',1);
Insert into C##CAFEINME.CAFE (CAFE_NO,CAFE_OWNERID,CAFE_NAME,BN,CAFE_ADDRESS1,CAFE_ADDRESS2,CAFE_TEL,OPEN_TIME,CLOSE_TIME,CAFE_ONLINESALE) values (9,'test9@test.com','�뒪��踰낆뒪 蹂묒쁺�젏','123-44-58689','�슱�궛愿묒뿭�떆 以묎뎄 蹂묒쁺1湲� 17-2','蹂묒쁺 1湲� �궓�쇅�룞','010-2883-3139','10:00','20:00',1);
Insert into C##CAFEINME.CAFE (CAFE_NO,CAFE_OWNERID,CAFE_NAME,BN,CAFE_ADDRESS1,CAFE_ADDRESS2,CAFE_TEL,OPEN_TIME,CLOSE_TIME,CAFE_ONLINESALE) values (10,'test10@test.com','JAVA移댄럹','012-31-32242','�슱�궛愿묒뿭�떆 �궓援� �삦�쁽濡� 19','�삦�쁽珥덈벑�븰援먮쭪���렪','010-3321-4353','10:00','21:00',1);
REM INSERTING into C##CAFEINME.CAFEFILE
SET DEFINE OFF;
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (1,'�씪�젙.jpg','400330123041.jpeg','187753','image/jpeg','aaa@bbb.com/cafeimg/400330123041.jpeg',14);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (6,'food-2940553_1920.jpg','960326034349.jpeg','687802','image/jpeg','test4@test.com/cafeimg/960326034349.jpeg',4);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (7,'coffee-690054_1920.jpg','310326034349.jpeg','268705','image/jpeg','test4@test.com/cafeimg/310326034349.jpeg',4);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (3,'starbucks-1262392_1920.jpg','810326032345.jpeg','153034','image/jpeg','test@test.com/cafeimg/810326032345.jpeg',1);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (4,'cats-cafe-4697753_1920.jpg','160326033032.jpeg','647463','image/jpeg','test2@test.com/cafeimg/160326033032.jpeg',2);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (5,'starbucks-1262392_1920.jpg','160326034036.jpeg','153034','image/jpeg','test3@test.com/cafeimg/160326034036.jpeg',3);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (8,'KH.jpg','370326034649.jpeg','126970','image/jpeg','test5@test.com/cafeimg/370326034649.jpeg',5);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (9,'street-cafe-4472312_1920.jpg','620326035256.jpeg','491045','image/jpeg','test6@test.com/cafeimg/620326035256.jpeg',6);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (10,'nature-5111414_1920.jpg','570326035653.jpeg','547489','image/jpeg','test7@test.com/cafeimg/570326035653.jpeg',7);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (11,'cafe-768771_1920.jpg','210326040651.jpeg','477762','image/jpeg','test8@test.com/cafeimg/210326040651.jpeg',8);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (12,'starbucks-1262392_1920.jpg','530326040922.jpeg','153034','image/jpeg','test9@test.com/cafeimg/530326040922.jpeg',9);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (13,'electric-scooter-4983759_640.jpg','460326041229.jpeg','107945','image/jpeg','test10@test.com/cafeimg/460326041229.jpeg',10);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (16,'starbucks-1262392_1920.jpg','400326041420.jpeg','153034','image/jpeg','test@test.com/cafeimg/400326041420.jpeg',1);
Insert into C##CAFEINME.CAFEFILE (CFILE_NO,CFILE_ORIGIN_NAME,CFILE_CHANGE_NAME,CFILE_SIZE,CFILE_TYPE,CFILE_PATH,CAFE_NO) values (17,'starbucks-1262392_1920.jpg','600326041610.jpeg','153034','image/jpeg','test@test.com/cafeimg/600326041610.jpeg',1);
REM INSERTING into C##CAFEINME.CAFETAGS
SET DEFINE OFF;
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (1,1);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (1,4);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (1,6);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (1,7);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (1,8);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (1,9);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (1,11);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (1,16);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (2,2);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (2,5);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (2,8);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (2,15);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (2,19);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (3,1);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (3,6);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (3,7);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (3,8);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (3,9);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (3,11);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (3,12);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (3,16);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (3,18);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (3,20);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (4,2);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (4,11);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (4,12);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (4,19);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (5,3);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (5,6);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (5,7);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (5,12);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (5,19);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (6,1);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (6,8);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (6,9);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (6,11);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (6,12);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (6,14);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (6,16);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (6,18);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (7,6);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (7,7);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (7,8);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (7,11);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (7,12);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (7,14);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (8,2);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (8,3);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (8,4);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (8,9);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (8,11);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (8,18);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (8,19);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (9,1);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (9,4);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (9,8);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (9,11);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (9,12);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (9,13);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (9,16);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (9,18);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (9,19);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (10,2);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (10,3);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (10,10);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (10,12);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (10,13);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (10,15);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (10,16);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (10,17);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (10,18);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (10,19);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (14,1);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (14,8);
Insert into C##CAFEINME.CAFETAGS (CAFE_NO,TAG_NO) values (14,9);
REM INSERTING into C##CAFEINME.CART
SET DEFINE OFF;
REM INSERTING into C##CAFEINME.CATEGORYS
SET DEFINE OFF;
Insert into C##CAFEINME.CATEGORYS (CATEGORY_NO,CATEGORY_NAME) values (1,'而ㅽ뵾');
Insert into C##CAFEINME.CATEGORYS (CATEGORY_NO,CATEGORY_NAME) values (2,'�뵒���듃');
Insert into C##CAFEINME.CATEGORYS (CATEGORY_NO,CATEGORY_NAME) values (3,'湲고�');
REM INSERTING into C##CAFEINME.COMMENTS
SET DEFINE OFF;
REM INSERTING into C##CAFEINME.MEMBERS
SET DEFINE OFF;
Insert into C##CAFEINME.MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_NICKNAME,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_TEL) values ('aaa@bbb.com','1234','�뼱姨뚭뎄',to_date('01/01/01','RR/MM/DD'),'�뀒�뒪�꽣�엫','�꽌�슱�듅蹂꾩떆 媛뺣궓援� 媛뺣궓��濡�114湲� 26','1痢�','010-1111-1111');
Insert into C##CAFEINME.MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_NICKNAME,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_TEL) values ('test2@test.com','1234','臾멸꼍�썝',to_date('93/07/01','RR/MM/DD'),'臾멸꼍�썝','�슱�궛愿묒뿭�떆 �궓援� �궪�궛濡� 6','�떊�젙鍮뚮씪 103�샇','010-2222-3333');
Insert into C##CAFEINME.MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_NICKNAME,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_TEL) values ('test3@test.com','1234','源��븯�쑄',to_date('93/04/02','RR/MM/DD'),'源��븯�쑄','�꽌�슱�듅蹂꾩떆 媛뺣궓援� �궪�꽦濡� 629','�궪�꽦�룞�꽱�듃�윺�븘�씠�뙆�겕 103�샇','010-2323-1919');
Insert into C##CAFEINME.MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_NICKNAME,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_TEL) values ('test4@test.com','1234','媛뺤�吏�',to_date('00/12/22','RR/MM/DD'),'媛뺤�吏�','寃쎌긽�궓�룄 �궓�빐援� �씠�룞硫� 誘멸뎅留덉쓣湲� 14','誘멸뎅�궗�엺','010-2321-2435');
Insert into C##CAFEINME.MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_NICKNAME,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_TEL) values ('test5@test.com','1234','�씠�긽�븰',to_date('66/05/05','RR/MM/DD'),'�씠�긽�븰','�슱�궛愿묒뿭�떆 �궓援� �궪�궛濡� 19','5痢� 501�샇','010-2232-1123');
Insert into C##CAFEINME.MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_NICKNAME,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_TEL) values ('test6@test.com','1234','�솉湲몃룞',to_date('31/09/01','RR/MM/DD'),'�솉湲몃룞','�쟾�씪�궓�룄 �옣�씎援� �슜�궛硫� 議곗꽑諛깆옄湲� 28','議곗꽑�궗�엺','010-2233-1123');
Insert into C##CAFEINME.MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_NICKNAME,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_TEL) values ('test7@test.com','1234','�씠�꽦怨�',to_date('03/03/27','RR/MM/DD'),'�씠�꽦怨�','寃쎄린�룄 �븞�궛�떆 �긽濡앷뎄 �븳�뼇���븰濡� 55','�븳�뼇�궗�엺','010-2233-1124');
Insert into C##CAFEINME.MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_NICKNAME,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_TEL) values ('test8@test.com','1234','�뀒�뒪�꽣',to_date('88/02/02','RR/MM/DD'),'�뀒�뒪�꽣1','�꽌�슱�듅蹂꾩떆 �꽌珥덇뎄 諛섑룷��濡� 3','�씠�뒪�듃鍮뚮뵫','010-2823-1100');
Insert into C##CAFEINME.MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_NICKNAME,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_TEL) values ('test9@test.com','1234','�뀒�뒪�꽣',to_date('98/10/02','RR/MM/DD'),'�넱罹�','�쟾�씪�궓�룄 媛뺤쭊援� 蹂묒쁺硫� 蹂묒쁺�궓臾멸만 6','蹂묒쁺�궗嫄곕━','010-3323-1575');
Insert into C##CAFEINME.MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_NICKNAME,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_TEL) values ('test10@test.com','1234','�옄諛�',to_date('77/03/11','RR/MM/DD'),'JAVA','寃쎌긽�궓�룄 �넻�쁺�떆 �넻�쁺�빐�븞濡� 489','�옄諛붿빱�뵾','010-2232-1443');
Insert into C##CAFEINME.MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_NICKNAME,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_TEL) values ('test@test.com','1234','�젙�룞�썕',to_date('93/10/15','RR/MM/DD'),'�젙�룞�썕','�슱�궛愿묒뿭�떆 �궓援� �떊蹂듬줈46踰덇만 26','101�룞 701�샇','000-1111-2222');
REM INSERTING into C##CAFEINME.MENU
SET DEFINE OFF;
Insert into C##CAFEINME.MENU (MENU_NO,MENU_NAME,MENU_PRICE,MENU_CONTENT,MENU_CATEGORY,MENU_ONLINESALE,CAFE_NO) values (1,'�븘硫붾━移대끂',4300,'�븘硫붾━移대끂',1,1,1);
Insert into C##CAFEINME.MENU (MENU_NO,MENU_NAME,MENU_PRICE,MENU_CONTENT,MENU_CATEGORY,MENU_ONLINESALE,CAFE_NO) values (2,'移댄뫖移섎끂',5300,'移댄뫖移섎끂',1,0,1);
Insert into C##CAFEINME.MENU (MENU_NO,MENU_NAME,MENU_PRICE,MENU_CONTENT,MENU_CATEGORY,MENU_ONLINESALE,CAFE_NO) values (3,'移댄럹�씪�뼹',5500,'移댄럹�씪�뼹',1,1,1);
Insert into C##CAFEINME.MENU (MENU_NO,MENU_NAME,MENU_PRICE,MENU_CONTENT,MENU_CATEGORY,MENU_ONLINESALE,CAFE_NO) values (4,'紐⑥뭅�씪�뼹',5700,'紐⑥뭅�씪�뼹',1,1,1);
Insert into C##CAFEINME.MENU (MENU_NO,MENU_NAME,MENU_PRICE,MENU_CONTENT,MENU_CATEGORY,MENU_ONLINESALE,CAFE_NO) values (5,'�뿀�땲釉뚮젅�뱶',8000,'�뿀�땲釉뚮젅�뱶',2,0,1);
Insert into C##CAFEINME.MENU (MENU_NO,MENU_NAME,MENU_PRICE,MENU_CONTENT,MENU_CATEGORY,MENU_ONLINESALE,CAFE_NO) values (6,'���뵆',6000,'���뵆',2,1,1);
Insert into C##CAFEINME.MENU (MENU_NO,MENU_NAME,MENU_PRICE,MENU_CONTENT,MENU_CATEGORY,MENU_ONLINESALE,CAFE_NO) values (7,'�뵺湲곕컮�굹�굹',4500,'�뵺湲곕컮�굹�굹',1,0,1);
Insert into C##CAFEINME.MENU (MENU_NO,MENU_NAME,MENU_PRICE,MENU_CONTENT,MENU_CATEGORY,MENU_ONLINESALE,CAFE_NO) values (8,'怨좎뼇�씠媛꾩떇',1500,'怨좎뼇�씠�뱾�씠 醫뗭븘�븯�뒗 媛꾩떇�엯�땲�떎.',3,0,2);
Insert into C##CAFEINME.MENU (MENU_NO,MENU_NAME,MENU_PRICE,MENU_CONTENT,MENU_CATEGORY,MENU_ONLINESALE,CAFE_NO) values (9,'�븘硫붾━移대끂',2500,'�궗�엺�쓣 �쐞�븳 而ㅽ뵾�엯�땲�떎.',1,1,2);
Insert into C##CAFEINME.MENU (MENU_NO,MENU_NAME,MENU_PRICE,MENU_CONTENT,MENU_CATEGORY,MENU_ONLINESALE,CAFE_NO) values (10,'移댄럹�씪�뼹',3000,'�궗�엺�쓣 �쐞�븳 而ㅽ뵾�엯�땲�떎.',1,1,2);
REM INSERTING into C##CAFEINME.MENUFILE
SET DEFINE OFF;
Insert into C##CAFEINME.MENUFILE (MFILE_NO,MFILE_ORIGIN_NAME,MFILE_CHANGE_NAME,MFILE_SIZE,MFILE_TYPE,MFILE_PATH,MENU_NO) values (1,'ice-coffee-2546041_1920.jpg','290326032612.jpeg','338401','image/jpeg','/test@test.com/cafemenu/290326032612.jpeg',1);
Insert into C##CAFEINME.MENUFILE (MFILE_NO,MFILE_ORIGIN_NAME,MFILE_CHANGE_NAME,MFILE_SIZE,MFILE_TYPE,MFILE_PATH,MENU_NO) values (2,'latte-art-2431160_1920.jpg','00326032612.jpeg','216970','image/jpeg','/test@test.com/cafemenu/00326032612.jpeg',2);
Insert into C##CAFEINME.MENUFILE (MFILE_NO,MFILE_ORIGIN_NAME,MFILE_CHANGE_NAME,MFILE_SIZE,MFILE_TYPE,MFILE_PATH,MENU_NO) values (3,'coffee-841425_1920.jpg','160326032612.jpeg','442948','image/jpeg','/test@test.com/cafemenu/160326032612.jpeg',3);
Insert into C##CAFEINME.MENUFILE (MFILE_NO,MFILE_ORIGIN_NAME,MFILE_CHANGE_NAME,MFILE_SIZE,MFILE_TYPE,MFILE_PATH,MENU_NO) values (4,'milk-5286575_1920.jpg','560326032612.jpeg','262085','image/jpeg','/test@test.com/cafemenu/560326032612.jpeg',4);
Insert into C##CAFEINME.MENUFILE (MFILE_NO,MFILE_ORIGIN_NAME,MFILE_CHANGE_NAME,MFILE_SIZE,MFILE_TYPE,MFILE_PATH,MENU_NO) values (5,'dessert-984947_1920.jpg','650326032612.jpeg','422395','image/jpeg','/test@test.com/cafemenu/650326032612.jpeg',5);
Insert into C##CAFEINME.MENUFILE (MFILE_NO,MFILE_ORIGIN_NAME,MFILE_CHANGE_NAME,MFILE_SIZE,MFILE_TYPE,MFILE_PATH,MENU_NO) values (6,'pancakes-5989136_1920.jpg','940326032612.jpeg','272927','image/jpeg','/test@test.com/cafemenu/940326032612.jpeg',6);
Insert into C##CAFEINME.MENUFILE (MFILE_NO,MFILE_ORIGIN_NAME,MFILE_CHANGE_NAME,MFILE_SIZE,MFILE_TYPE,MFILE_PATH,MENU_NO) values (7,'boba-4402055_1920.jpg','180326032612.jpeg','314008','image/jpeg','/test@test.com/cafemenu/180326032612.jpeg',7);
Insert into C##CAFEINME.MENUFILE (MFILE_NO,MFILE_ORIGIN_NAME,MFILE_CHANGE_NAME,MFILE_SIZE,MFILE_TYPE,MFILE_PATH,MENU_NO) values (8,'dog-food-4693738_1920.jpg','80326033255.jpeg','520811','image/jpeg','/test2@test.com/cafemenu/80326033255.jpeg',8);
Insert into C##CAFEINME.MENUFILE (MFILE_NO,MFILE_ORIGIN_NAME,MFILE_CHANGE_NAME,MFILE_SIZE,MFILE_TYPE,MFILE_PATH,MENU_NO) values (9,'ice-coffee-2546041_1920.jpg','870326033255.jpeg','338401','image/jpeg','/test2@test.com/cafemenu/870326033255.jpeg',9);
Insert into C##CAFEINME.MENUFILE (MFILE_NO,MFILE_ORIGIN_NAME,MFILE_CHANGE_NAME,MFILE_SIZE,MFILE_TYPE,MFILE_PATH,MENU_NO) values (10,'latte-art-2431160_1920.jpg','950326033255.jpeg','216970','image/jpeg','/test2@test.com/cafemenu/950326033255.jpeg',10);
REM INSERTING into C##CAFEINME.ORDERDETAIL
SET DEFINE OFF;
REM INSERTING into C##CAFEINME.ORDERS
SET DEFINE OFF;
REM INSERTING into C##CAFEINME.REVIEWS
SET DEFINE OFF;
REM INSERTING into C##CAFEINME.TAGS
SET DEFINE OFF;
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (1,'�봽�젋李⑥씠利�');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (2,'媛쒖씤 移댄럹');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (3,'�뒪�꽣�뵒 移댄럹');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (4,'猷� 移댄럹');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (5,'�븷寃� 移댄럹');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (6,'2痢� �씠�긽');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (7,'二쇱감�옣 �뿬遺�');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (8,'媛먯꽦 �씤�뀒由ъ뼱');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (9,'釉뚮윴移�');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (10,'�븣肄� �뙋留�');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (11,'�뵒���듃 �뙋留�');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (12,'�삁�빟 媛��뒫');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (13,'而ㅽ뵾 �닔�뾽');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (14,'24�떆媛� �쁺�뾽');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (15,'諛섎젮 �룞臾�');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (16,'�썝�몢 �뙋留�');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (17,'�옣�븷�씤 醫뚯꽍');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (18,'�궎�삤�뒪�겕');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (19,'�끂�궎利� 議�');
Insert into C##CAFEINME.TAGS (TAG_NO,TAG_NAME) values (20,'肄섏꽱�듃 �닔');
--------------------------------------------------------
--  DDL for Index CAFE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."CAFE_PK" ON "C##CAFEINME"."CAFE" ("CAFE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index CAFEFILE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."CAFEFILE_PK" ON "C##CAFEINME"."CAFEFILE" ("CFILE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index MEMBERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."MEMBERS_PK" ON "C##CAFEINME"."MEMBERS" ("MEMBER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MENU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."MENU_PK" ON "C##CAFEINME"."MENU" ("MENU_NO") 
  ;
--------------------------------------------------------
--  DDL for Index ORDERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."ORDERS_PK" ON "C##CAFEINME"."ORDERS" ("ORDER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index TAGS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."TAGS_PK" ON "C##CAFEINME"."TAGS" ("TAG_NO") 
  ;
--------------------------------------------------------
--  DDL for Index CAFETAGS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."CAFETAGS_PK" ON "C##CAFEINME"."CAFETAGS" ("CAFE_NO", "TAG_NO") 
  ;
--------------------------------------------------------
--  DDL for Index REVIEWS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."REVIEWS_PK" ON "C##CAFEINME"."REVIEWS" ("REVIEW_NO") 
  ;
--------------------------------------------------------
--  DDL for Index CATEGORYS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."CATEGORYS_PK" ON "C##CAFEINME"."CATEGORYS" ("CATEGORY_NO") 
  ;
--------------------------------------------------------
--  DDL for Index BOOKMARKS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."BOOKMARKS_PK" ON "C##CAFEINME"."BOOKMARKS" ("MEMBER_ID", "CAFE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index REVIEWS_UNIQUE1
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."REVIEWS_UNIQUE1" ON "C##CAFEINME"."REVIEWS" ("ORDER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."CART_PK" ON "C##CAFEINME"."CART" ("MEMBER_ID", "MENU_NO") 
  ;
--------------------------------------------------------
--  DDL for Index COMMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."COMMENTS_PK" ON "C##CAFEINME"."COMMENTS" ("COMMENT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index ORDERDETAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."ORDERDETAIL_PK" ON "C##CAFEINME"."ORDERDETAIL" ("ORDER_NO", "MENU_NO") 
  ;
--------------------------------------------------------
--  DDL for Index MENUFILE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##CAFEINME"."MENUFILE_PK" ON "C##CAFEINME"."MENUFILE" ("MFILE_NO") 
  ;
--------------------------------------------------------
--  Constraints for Table CAFETAGS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."CAFETAGS" ADD CONSTRAINT "CAFETAGS_PK" PRIMARY KEY ("CAFE_NO", "TAG_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."COMMENTS" ADD CONSTRAINT "COMMENTS_PK" PRIMARY KEY ("COMMENT_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."COMMENTS" MODIFY ("COMMENT_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."COMMENTS" MODIFY ("COMMENT_DATE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."COMMENTS" MODIFY ("CAFE_NO" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."COMMENTS" MODIFY ("REVIEW_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CAFE
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."CAFE" ADD CONSTRAINT "CAFE_PK" PRIMARY KEY ("CAFE_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."CAFE" ADD UNIQUE ("CAFE_OWNERID")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."CAFE" ADD UNIQUE ("BN")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."CAFE" MODIFY ("CAFE_OWNERID" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFE" MODIFY ("CAFE_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFE" MODIFY ("BN" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFE" MODIFY ("CAFE_ADDRESS1" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFE" MODIFY ("CAFE_ADDRESS2" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFE" MODIFY ("CAFE_TEL" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFE" MODIFY ("OPEN_TIME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFE" MODIFY ("CLOSE_TIME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFE" MODIFY ("CAFE_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFE" MODIFY ("CAFE_ONLINESALE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFE" ADD CONSTRAINT "CAFE_CHK1" CHECK (CAFE_ONLINESALE IN(0, 1)) ENABLE;
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."CART" ADD CONSTRAINT "CART_PK" PRIMARY KEY ("MEMBER_ID", "MENU_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."CART" MODIFY ("CAFE_NO" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CART" MODIFY ("MENU_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CART" MODIFY ("MENU_COUNT" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CART" ADD CONSTRAINT "CART_CHK1" CHECK (MENU_COUNT >= 0) ENABLE;
  ALTER TABLE "C##CAFEINME"."CART" MODIFY ("MENU_PRICE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CART" ADD CONSTRAINT "CART_CHK2" CHECK (MENU_PRICE >= 0) ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."ORDERS" ADD CONSTRAINT "ORDERS_PK" PRIMARY KEY ("ORDER_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."ORDERS" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERS" MODIFY ("CAFE_NO" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERS" MODIFY ("ORDER_ITEMS" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERS" MODIFY ("ORDER_PRICE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERS" ADD CONSTRAINT "ORDERS_CHK1" CHECK (ORDER_PRICE >= 0) ENABLE;
  ALTER TABLE "C##CAFEINME"."ORDERS" MODIFY ("ORDER_COUNT" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERS" ADD CONSTRAINT "ORDERS_CHK2" CHECK (ORDER_COUNT >= 0) ENABLE;
  ALTER TABLE "C##CAFEINME"."ORDERS" MODIFY ("ORDER_DATE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERS" MODIFY ("ORDER_ADDRESS1" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERS" MODIFY ("ORDER_PAYMENTTYPE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERS" MODIFY ("ORDER_RECEIVETYPE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERS" MODIFY ("ORDER_STATUS" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERS" ADD CONSTRAINT "ORDERS_CHK3" CHECK (ORDER_STATUS IN('�젒�닔��湲�', '二쇰Ц�젒�닔', '二쇰Ц�셿猷�', '二쇰Ц嫄곕�')) ENABLE;
  ALTER TABLE "C##CAFEINME"."ORDERS" ADD CONSTRAINT "ORDERS_CHK4" CHECK (ORDER_REVIEW_YN IN(0, 1)) ENABLE;
--------------------------------------------------------
--  Constraints for Table CAFEFILE
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."CAFEFILE" ADD CONSTRAINT "CAFEFILE_PK" PRIMARY KEY ("CFILE_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."CAFEFILE" MODIFY ("CFILE_ORIGIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFEFILE" MODIFY ("CFILE_CHANGE_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFEFILE" MODIFY ("CFILE_SIZE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFEFILE" MODIFY ("CFILE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFEFILE" MODIFY ("CFILE_PATH" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."CAFEFILE" MODIFY ("CAFE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDERDETAIL
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."ORDERDETAIL" ADD CONSTRAINT "ORDERDETAIL_PK" PRIMARY KEY ("ORDER_NO", "MENU_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."ORDERDETAIL" MODIFY ("MENU_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERDETAIL" MODIFY ("MENU_COUNT" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERDETAIL" ADD CONSTRAINT "ORDERDETAIL_CHK1" CHECK (MENU_COUNT >= 0) ENABLE;
  ALTER TABLE "C##CAFEINME"."ORDERDETAIL" MODIFY ("MENU_PRICE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."ORDERDETAIL" ADD CONSTRAINT "ORDERDETAILE_CHK2" CHECK (MENU_PRICE >= 0) ENABLE;
--------------------------------------------------------
--  Constraints for Table TAGS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."TAGS" ADD CONSTRAINT "TAGS_PK" PRIMARY KEY ("TAG_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."TAGS" MODIFY ("TAG_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEWS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."REVIEWS" ADD CONSTRAINT "REVIEWS_PK" PRIMARY KEY ("REVIEW_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."REVIEWS" MODIFY ("REVIEW_NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."REVIEWS" MODIFY ("REVIEW_ITEMS" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."REVIEWS" MODIFY ("REVIEW_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."REVIEWS" MODIFY ("REVIEW_STAR" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."REVIEWS" ADD CONSTRAINT "REVIEWS_CHK1" CHECK (REVIEW_STAR IN(1, 2, 3, 4, 5)) ENABLE;
  ALTER TABLE "C##CAFEINME"."REVIEWS" MODIFY ("REVIEW_DATE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."REVIEWS" ADD CONSTRAINT "REVIEWS_CHK2" CHECK (REVIEW_CMT IN(0, 1)) ENABLE;
  ALTER TABLE "C##CAFEINME"."REVIEWS" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."REVIEWS" MODIFY ("CAFE_NO" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."REVIEWS" ADD CONSTRAINT "REVIEWS_UNIQUE1" UNIQUE ("ORDER_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."REVIEWS" MODIFY ("ORDER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORYS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."CATEGORYS" ADD CONSTRAINT "CATEGORYS_PK" PRIMARY KEY ("CATEGORY_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."CATEGORYS" MODIFY ("CATEGORY_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."MENU" ADD CONSTRAINT "MENU_PK" PRIMARY KEY ("MENU_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."MENU" MODIFY ("MENU_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MENU" MODIFY ("MENU_PRICE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MENU" ADD CONSTRAINT "MENU_CHK1" CHECK (MENU_PRICE >= 0) ENABLE;
  ALTER TABLE "C##CAFEINME"."MENU" MODIFY ("MENU_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MENU" MODIFY ("MENU_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MENU" MODIFY ("MENU_ONLINESALE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MENU" ADD CONSTRAINT "MENU_CHK2" CHECK (MENU_ONLINESALE IN(0, 1)) ENABLE;
  ALTER TABLE "C##CAFEINME"."MENU" MODIFY ("CAFE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MENUFILE
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."MENUFILE" ADD CONSTRAINT "MENUFILE_PK" PRIMARY KEY ("MFILE_NO")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."MENUFILE" MODIFY ("MFILE_ORIGIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MENUFILE" MODIFY ("MFILE_CHANGE_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MENUFILE" MODIFY ("MFILE_SIZE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MENUFILE" MODIFY ("MFILE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MENUFILE" MODIFY ("MFILE_PATH" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MENUFILE" MODIFY ("MENU_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBERS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."MEMBERS" ADD CONSTRAINT "MEMBERS_PK" PRIMARY KEY ("MEMBER_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."MEMBERS" ADD UNIQUE ("MEMBER_TEL")
  USING INDEX  ENABLE;
  ALTER TABLE "C##CAFEINME"."MEMBERS" MODIFY ("MEMBER_PW" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MEMBERS" MODIFY ("MEMBER_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MEMBERS" MODIFY ("MEMBER_BIRTH" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MEMBERS" MODIFY ("MEMBER_NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MEMBERS" MODIFY ("MEMBER_ADDRESS1" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MEMBERS" MODIFY ("MEMBER_ADDRESS2" NOT NULL ENABLE);
  ALTER TABLE "C##CAFEINME"."MEMBERS" MODIFY ("MEMBER_TEL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOKMARKS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."BOOKMARKS" ADD CONSTRAINT "BOOKMARKS_PK" PRIMARY KEY ("MEMBER_ID", "CAFE_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOOKMARKS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."BOOKMARKS" ADD CONSTRAINT "BOOKMARKS_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "C##CAFEINME"."MEMBERS" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "C##CAFEINME"."BOOKMARKS" ADD CONSTRAINT "BOOKMARKS_FK2" FOREIGN KEY ("CAFE_NO")
	  REFERENCES "C##CAFEINME"."CAFE" ("CAFE_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CAFE
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."CAFE" ADD CONSTRAINT "CAFE_FK1" FOREIGN KEY ("CAFE_OWNERID")
	  REFERENCES "C##CAFEINME"."MEMBERS" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CAFEFILE
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."CAFEFILE" ADD CONSTRAINT "CAFEFILE_FK1" FOREIGN KEY ("CAFE_NO")
	  REFERENCES "C##CAFEINME"."CAFE" ("CAFE_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CAFETAGS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."CAFETAGS" ADD CONSTRAINT "CAFETAGS_FK1" FOREIGN KEY ("CAFE_NO")
	  REFERENCES "C##CAFEINME"."CAFE" ("CAFE_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "C##CAFEINME"."CAFETAGS" ADD CONSTRAINT "CAFETAGS_FK2" FOREIGN KEY ("TAG_NO")
	  REFERENCES "C##CAFEINME"."TAGS" ("TAG_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."CART" ADD CONSTRAINT "CART_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "C##CAFEINME"."MEMBERS" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK1" FOREIGN KEY ("CAFE_NO")
	  REFERENCES "C##CAFEINME"."CAFE" ("CAFE_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "C##CAFEINME"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK2" FOREIGN KEY ("REVIEW_NO")
	  REFERENCES "C##CAFEINME"."REVIEWS" ("REVIEW_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."MENU" ADD CONSTRAINT "MENU_FK1" FOREIGN KEY ("CAFE_NO")
	  REFERENCES "C##CAFEINME"."CAFE" ("CAFE_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "C##CAFEINME"."MENU" ADD CONSTRAINT "MENU_FK2" FOREIGN KEY ("MENU_CATEGORY")
	  REFERENCES "C##CAFEINME"."CATEGORYS" ("CATEGORY_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MENUFILE
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."MENUFILE" ADD CONSTRAINT "MENUFILE_FK1" FOREIGN KEY ("MENU_NO")
	  REFERENCES "C##CAFEINME"."MENU" ("MENU_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERDETAIL
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."ORDERDETAIL" ADD CONSTRAINT "ORDERDETAIL_FK1" FOREIGN KEY ("ORDER_NO")
	  REFERENCES "C##CAFEINME"."ORDERS" ("ORDER_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."ORDERS" ADD CONSTRAINT "ORDERS_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "C##CAFEINME"."MEMBERS" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEWS
--------------------------------------------------------

  ALTER TABLE "C##CAFEINME"."REVIEWS" ADD CONSTRAINT "REVIEWS_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "C##CAFEINME"."MEMBERS" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "C##CAFEINME"."REVIEWS" ADD CONSTRAINT "REVIEWS_FK2" FOREIGN KEY ("CAFE_NO")
	  REFERENCES "C##CAFEINME"."CAFE" ("CAFE_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "C##CAFEINME"."REVIEWS" ADD CONSTRAINT "REVIEWS_FK3" FOREIGN KEY ("ORDER_NO")
	  REFERENCES "C##CAFEINME"."ORDERS" ("ORDER_NO") ON DELETE CASCADE ENABLE;
