drop table if exists Books;
drop table if exists Authors;
drop table if exists Categories;

Create Table If Not Exists Authors (
 AuthorID integer primary key,
 AuthorName text not null
 );

create table Categories
 (
 CategoryID integer primary key,
 CategoryTitle text not null unique
 );


create table if not exists Books
 (
 BookID integer primary key autoincrement,
 AuthorID integer not null default 14,
 BookTitle text not null,
 BookPrice real not null,
 CategoryID integer not null,
 foreign key(AuthorID) references Authors(AuthorID) on delete cascade,
 foreign key(CategoryID) references Categories(CategoryID) on delete cascade
 );
