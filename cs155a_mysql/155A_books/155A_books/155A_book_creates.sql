-- CS 155A  MySQL


-- drop the tables/view if they already exist
use a_bkinfo;

    drop view if exists  a_bkorders.CustWithOrders;
    drop table if exists a_bkorders.order_details;
    drop table if exists a_bkorders.order_headers;
    drop table if exists a_bkorders.customers; 
    drop table if exists a_bkorders.handling_fees;
   
    drop table if exists a_bkinfo.book_authors;
    drop table if exists a_bkinfo.authors;
    drop table if exists a_bkinfo.book_topics;   
    drop table if exists a_bkinfo.books;
    drop table if exists a_bkinfo.topics;
    drop table if exists a_bkinfo.publishers; 
 
 
-- create publishers
create table a_bkinfo.publishers (
   publ_id           integer          not null
 , publ_name         varchar(25)      not null  
 , constraint bk_publishers_pk        primary key(publ_id) 
 , constraint publ_id_range check (publ_id >1000)
)engine = INNODB;


-- create topics
create table a_bkinfo.topics (
   topic_id           varchar(5)      not null
 , topic_descr        varchar(25)     not null  
 , constraint bk_topics_pk            primary key(topic_id) 
 , constraint bk_topic_descr_un       unique (topic_descr)
)engine = INNODB;


-- create books
create table a_bkinfo.books (
    book_id           integer          not null
  , title             varchar(75)      not null 
  , publ_id           integer          null
  , year_publd        integer          not null
  , isbn              varchar(17)      null
  , page_count        integer          null  
  , list_price        numeric(6,2)     null  
  , constraint bk_books_pk             primary key (book_id)
  , constraint bk_books_publ_fk        foreign key(publ_id) 
               references a_bkinfo.publishers  (publ_id)
  , constraint book_id_range           check (book_id > 1000)
  , constraint bk_page_count_ck        check (page_count >= 0)
  , constraint bk_price_ck             check (list_price >= 0)             
  , constraint bk_books_year_ck        check (year_publd >= 1850)
)engine = INNODB;


-- create book_topics
create  table a_bkinfo.book_topics (
    book_id           integer          not null
  , topic_id          varchar(5)       not null  
  , constraint bk_book_topics_pk        primary key (book_id, topic_id)
  , constraint bk_books_topics_fk      foreign key(topic_id) 
               references a_bkinfo.topics(topic_id)
  , constraint bk_books_id_fk          foreign key(book_id) 
               references a_bkinfo.books(book_id)
)engine = INNODB;

                      
-- create authors
create table a_bkinfo.authors (
    author_name_first varchar(20)      null 
  , author_name_last  varchar(20)      not null      
  , author_id         char (5)         not null
  , constraint bk_authors_pk           primary key(author_id)
)engine = INNODB;


-- create book_authors
create table a_bkinfo.book_authors (
    book_id           integer          not null 
  , author_id         char (5)         not null
  , author_sequence   integer          not null 
  , constraint bk_book_authors_pk       primary key (book_id, author_id) 
  , constraint bk_book_authors_book_fk  foreign key(book_id)
               references a_bkinfo.books(book_id)
  , constraint bk_book_authors_auth_fk  foreign key(author_id)
               references a_bkinfo.authors(author_id)
  , constraint bk_book_author_seq_un   unique(book_id, author_sequence) 
  , constraint bk_author_seq_ck        check (author_sequence > 0)  
)engine = INNODB;


-- create customers
create  table  a_bkorders.customers (
    cust_id           integer          not null 
  , cust_name_last    varchar(20)      not null
  , cust_name_first   varchar(20)      null
  , cust_state        char(2)          not null
  , cust_postal_code  char(10)         not null
  , cust_acct_opened  date             not null 
  , constraint bk_cust_pk              primary key (cust_id)
  , constraint bk_cust_id_range        check (cust_id > 1000)
  , constraint bk_cust_acct_opened_ck  check (cust_acct_opened >=  '1975-01-01' )
)engine = INNODB;


-- create order_headers 
create  table   a_bkorders.order_headers (
    order_id          integer          not null 
  , order_date        date             not null
  , cust_id           integer          not null 
  , constraint bk_orders_pk            primary key (order_id)
  , constraint bk_orders_cust_fk       foreign key(cust_id) 
               references a_bkorders.customers(cust_id) 
  , constraint bk_order_id_range       check (order_id > 100)
 ,  constraint bk_order_date_ck        check (order_date >=  '2000-01-01')
)engine = INNODB;


-- create order_details  
create  table   a_bkorders.order_details (
    order_id          integer          not null 
  , order_line        integer          not null 
  , book_id           integer          not null 
  , quantity          integer          not null 
  , order_price       numeric(6,2)     not null   
  , constraint bk_orderline_pk         primary key (order_id, order_line)
  , constraint bk_orderline_order_fk   foreign key (order_id) 
               references a_bkorders.order_headers(order_id) on delete cascade
  , constraint bk_orderline_book_fk    foreign key (book_id )  
               references a_bkinfo.books(book_id)
  , constraint bk_quantity_ck          check (quantity > 0) 
  , constraint bk_ordprice_ck          check (order_price >= 0) 
)engine = INNODB;

-- create  handling_fees  
create table a_bkorders.handling_fees(
    low_limit      integer       
  , high_limit     integer       
  , handling_fee   numeric(5,2)
  , constraint bk_low_limit_ck         check (low_limit >= 0)
  , constraint bk_high_limit_ck        check (high_limit >= low_limit) 
  , constraint bk_handling_fee_ck      check (handling_fee >= 0) 
)engine = INNODB;


-- create view
create  or replace view a_bkorders.CustWithOrders(
   c_id, c_name, order_date, order_id, book
   ) as
   select  C.cust_id 
   ,       Concat(C.cust_name_last ,  coalesce( Concat( ', ' , C.cust_name_first), ''))
   ,       OH.order_date 
   ,       OD.order_id
   ,       OD.book_id 
   from    a_bkorders.customers C
   inner join a_bkorders.order_headers OH on C.cust_id = OH.cust_ID  
   inner join a_bkorders.order_details OD on OH.order_id= OD.order_id
;


