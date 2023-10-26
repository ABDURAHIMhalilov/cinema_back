   create table cinema(
        "id" serial primary key,
        "payment" text,
        "type" text,
        "year" INTEGER NOT NULL,
        "title" text,
        "more_loking" integer default 0 not null,
        "time" integer,
        "appearance" integer,
        "ovoz_berdi" text,
        "country" text,
        "age_limit" integer,
        "description" text,
        "language" text,
        "video" text,
        "treler" text,
        "Tayming" text,
        "time_create" timestamp default current_timestamp not null,
        "time_update" timestamp default current_timestamp not null
    );
    create table image_cinema(
       "id" serial primary key,
       "cinema_id" integer not null,
       "image" text,
       "time_create" timestamp default current_timestamp not null,
       "time_update" timestamp default current_timestamp not null
    );
create table comment(
      "id" serial primary key,
       "cinema_id" integer not null,
       "supcomment" integer not null,
       "description" text,
       "creator" integer not null,
       "time_create" timestamp default current_timestamp not null,
       "time_update" timestamp default current_timestamp not null

);
create table comment_mark(
       "id" serial primary key,
       "dislike" boolean default false not null ,
       "comment_id" integer not null,
       "time_create" timestamp default current_timestamp not null,
       "time_update" timestamp default current_timestamp not null      
);
create table sharx(
       "id" serial primary key,
       "cinema_id" integer not null,
       "description" text,
       "rating" integer default 6 not null,
       "title" text,
       "creator" integer not null,
       "time_create" timestamp default current_timestamp not null,
       "time_update" timestamp default current_timestamp not null
);
create table aloqa(
       "id" serial primary key,
       "fullname" text,
       "tema" text,
       "message" text,
       "email" text,
       "time_create" timestamp default current_timestamp not null,
       "time_update" timestamp default current_timestamp not null
);

create table tarjima_cinema(
        "id" serial primary key,
        "cinema_id" integer not null,
        "tarjimon_id" integer not null,
        "time_create" timestamp default current_timestamp not null,
        "time_update" timestamp default current_timestamp not null
    );
    create table janr_cinema(
        "id" serial primary key,
        "cinema_id" integer not null,
        "janr_id" integer not null,
        "time_create" timestamp default current_timestamp not null,
        "time_update" timestamp default current_timestamp not null
    );
create table tarjima(
        "id" serial primary key,
        "full_name" VARCHAR (50),
        "time_create" timestamp default current_timestamp not null,
        "time_update" timestamp default current_timestamp not null
    );
   create table janr(
        "id" serial primary key,
        "title" VARCHAR(50) NOT null,
        "time_create" timestamp default current_timestamp not null,
        "time_update" timestamp default current_timestamp not null
    );
create table mark(
        "id" serial primary key,
        "cinema_id" integer,
        "title" integer,
        "time_create" timestamp default current_timestamp not null,
        "time_update" timestamp default current_timestamp not null
    );

create table users(
    "id" serial primary key,
    "email" VARCHAR (50),
    "password" text,
    "ptichka" boolean default false not null,
    "name" text,
    "token" text, 
     unique(email),
    "superadmin" boolean default false not null,
    "time_create" timestamp default current_timestamp not null,
    "time_update" timestamp default current_timestamp not null
    );

