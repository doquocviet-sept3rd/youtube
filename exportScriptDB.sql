alter table com_interact drop foreign key FK7pf25ohuxatqqlqco61tkl4o3;
alter table com_interact drop foreign key FKcr9320s84soysl9hb6g2y7qh9;
alter table comment drop foreign key FK8kcum44fvpupyw6f5baccx25c;
alter table comment drop foreign key FKbsuh08kv1lyh8v6ivufrollr6;
alter table history drop foreign key FKn4gjyu69m6xa5f3bot571imbe;
alter table history drop foreign key FKlxcb55el15q6huo5abu5ct8xw;
alter table subscribe drop foreign key FK31lkjb2x51cw4bljtmswtj6r;
alter table subscribe drop foreign key FKseu3x0mvbxvmkcfxtom5h0h82;
alter table vid_interact drop foreign key FKerwlbsh631x9hxl7y97f9fvtq;
alter table vid_interact drop foreign key FKpbvwgytbunwo54cta9w0m8hq5;
alter table video drop foreign key FKq1uengrrk45ucgcdp7kt7qc4k;
alter table video drop foreign key FKlvftuhj7tfoq8kigg4lc2ps7p;
drop table if exists category;
drop table if exists com_interact;
drop table if exists comment;
drop table if exists history;
drop table if exists subscribe;
drop table if exists user;
drop table if exists vid_interact;
drop table if exists video;
create table category
(
    id          bigint not null auto_increment,
    created_by  bigint,
    created_on  datetime(6),
    modified_by bigint,
    modified_on datetime(6),
    name        nvarchar(255) not null,
    primary key (id)
) engine=InnoDB;
create table com_interact
(
    user_id     bigint not null,
    comment_id  bigint not null,
    created_by  bigint,
    created_on  datetime(6),
    isLike      bit    not null,
    modified_by bigint,
    modified_on datetime(6),
    primary key (user_id, comment_id)
) engine=InnoDB;
create table comment
(
    id          bigint not null auto_increment,
    content     nvarchar(4096) not null,
    created_by  bigint,
    created_on  datetime(6),
    dislikes    bigint not null,
    likes       bigint not null,
    modified_by bigint,
    modified_on datetime(6),
    time        datetime(6) not null,
    user_id     bigint not null,
    video_id    bigint not null,
    primary key (id)
) engine=InnoDB;
create table history
(
    id          bigint not null auto_increment,
    created_by  bigint,
    created_on  datetime(6),
    modified_by bigint,
    modified_on datetime(6),
    time        datetime(6) not null,
    user_id     bigint not null,
    video_id    bigint not null,
    primary key (id)
) engine=InnoDB;
create table subscribe
(
    user_id_sub bigint not null,
    user_id     bigint not null,
    created_by  bigint,
    created_on  datetime(6),
    modified_by bigint,
    modified_on datetime(6),
    primary key (user_id_sub, user_id)
) engine=InnoDB;
create table user
(
    id               bigint        not null auto_increment,
    avatarChannelUrl varchar(4096),
    avatarUrl        varchar(4096) not null,
    coverChannelUrl  varchar(4096),
    created_by       bigint,
    created_on       datetime(6),
    email            varchar(255)  not null,
    modified_by      bigint,
    modified_on      datetime(6),
    name             nvarchar(255) not null,
    nameChannel      nvarchar(255),
    subscribe        bigint,
    primary key (id)
) engine=InnoDB;
create table vid_interact
(
    video_id    bigint not null,
    user_id     bigint not null,
    created_by  bigint,
    created_on  datetime(6),
    isLike      bit    not null,
    modified_by bigint,
    modified_on datetime(6),
    primary key (video_id, user_id)
) engine=InnoDB;
create table video
(
    id          bigint           not null auto_increment,
    avatarUrl   varchar(255),
    category_id bigint           not null,
    content     varchar(4096),
    created_by  bigint,
    created_on  datetime(6),
    dislikes    bigint           not null,
    hashtag     nvarchar(255),
    likes       bigint           not null,
    modified_by bigint,
    modified_on datetime(6),
    name        varchar(255)     not null,
    postingTime datetime(6) not null,
    src         varchar(4096)    not null,
    timeLimit   double precision not null,
    user_id     bigint           not null,
    views       bigint           not null,
    primary key (id)
) engine=InnoDB;
alter table user
    add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email);
alter table com_interact
    add constraint FK7pf25ohuxatqqlqco61tkl4o3 foreign key (comment_id) references comment (id);
alter table com_interact
    add constraint FKcr9320s84soysl9hb6g2y7qh9 foreign key (user_id) references user (id);
alter table comment
    add constraint FK8kcum44fvpupyw6f5baccx25c foreign key (user_id) references user (id);
alter table comment
    add constraint FKbsuh08kv1lyh8v6ivufrollr6 foreign key (video_id) references video (id);
alter table history
    add constraint FKn4gjyu69m6xa5f3bot571imbe foreign key (user_id) references user (id);
alter table history
    add constraint FKlxcb55el15q6huo5abu5ct8xw foreign key (video_id) references video (id);
alter table subscribe
    add constraint FK31lkjb2x51cw4bljtmswtj6r foreign key (user_id) references user (id);
alter table subscribe
    add constraint FKseu3x0mvbxvmkcfxtom5h0h82 foreign key (user_id_sub) references user (id);
alter table vid_interact
    add constraint FKerwlbsh631x9hxl7y97f9fvtq foreign key (user_id) references user (id);
alter table vid_interact
    add constraint FKpbvwgytbunwo54cta9w0m8hq5 foreign key (video_id) references video (id);
alter table video
    add constraint FKq1uengrrk45ucgcdp7kt7qc4k foreign key (category_id) references category (id);
alter table video
    add constraint FKlvftuhj7tfoq8kigg4lc2ps7p foreign key (user_id) references user (id);
alter table com_interact drop foreign key FK7pf25ohuxatqqlqco61tkl4o3;
alter table com_interact drop foreign key FKcr9320s84soysl9hb6g2y7qh9;
alter table comment drop foreign key FK8kcum44fvpupyw6f5baccx25c;
alter table comment drop foreign key FKbsuh08kv1lyh8v6ivufrollr6;
alter table history drop foreign key FKn4gjyu69m6xa5f3bot571imbe;
alter table history drop foreign key FKlxcb55el15q6huo5abu5ct8xw;
alter table subscribe drop foreign key FK31lkjb2x51cw4bljtmswtj6r;
alter table subscribe drop foreign key FKseu3x0mvbxvmkcfxtom5h0h82;
alter table vid_interact drop foreign key FKerwlbsh631x9hxl7y97f9fvtq;
alter table vid_interact drop foreign key FKpbvwgytbunwo54cta9w0m8hq5;
alter table video drop foreign key FKq1uengrrk45ucgcdp7kt7qc4k;
alter table video drop foreign key FKlvftuhj7tfoq8kigg4lc2ps7p;
drop table if exists category;
drop table if exists com_interact;
drop table if exists comment;
drop table if exists history;
drop table if exists subscribe;
drop table if exists user;
drop table if exists vid_interact;
drop table if exists video;
create table category (id bigint not null auto_increment, created_by bigint, created_on datetime(6), modified_by bigint, modified_on datetime(6), name nvarchar(255) not null, primary key (id)) engine=InnoDB;
create table com_interact (user_id bigint not null, comment_id bigint not null, created_by bigint, created_on datetime(6), isLike bit not null, modified_by bigint, modified_on datetime(6), primary key (user_id, comment_id)) engine=InnoDB;
create table comment (id bigint not null auto_increment, content nvarchar(4096) not null, created_by bigint, created_on datetime(6), dislikes bigint not null, likes bigint not null, modified_by bigint, modified_on datetime(6), time datetime(6) not null, user_id bigint not null, video_id bigint not null, primary key (id)) engine=InnoDB;
create table history (id bigint not null auto_increment, created_by bigint, created_on datetime(6), modified_by bigint, modified_on datetime(6), time datetime(6) not null, user_id bigint not null, video_id bigint not null, primary key (id)) engine=InnoDB;
create table subscribe (user_id_sub bigint not null, user_id bigint not null, created_by bigint, created_on datetime(6), modified_by bigint, modified_on datetime(6), primary key (user_id_sub, user_id)) engine=InnoDB;
create table user (id bigint not null auto_increment, avatarChannelUrl varchar(4096), avatarUrl varchar(4096) not null, coverChannelUrl varchar(4096), created_by bigint, created_on datetime(6), email varchar(255) not null, modified_by bigint, modified_on datetime(6), name nvarchar(255) not null, nameChannel nvarchar(255), subscribe bigint, primary key (id)) engine=InnoDB;
create table vid_interact (video_id bigint not null, user_id bigint not null, created_by bigint, created_on datetime(6), isLike bit not null, modified_by bigint, modified_on datetime(6), primary key (video_id, user_id)) engine=InnoDB;
create table video (id bigint not null auto_increment, avatarUrl varchar(255), category_id bigint not null, content varchar(4096), created_by bigint, created_on datetime(6), dislikes bigint not null, hashtag nvarchar(255), likes bigint not null, modified_by bigint, modified_on datetime(6), name varchar(255) not null, postingTime datetime(6) not null, src varchar(4096) not null, timeLimit double precision not null, user_id bigint not null, views bigint not null, primary key (id)) engine=InnoDB;
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email);
alter table com_interact add constraint FK7pf25ohuxatqqlqco61tkl4o3 foreign key (comment_id) references comment (id);
alter table com_interact add constraint FKcr9320s84soysl9hb6g2y7qh9 foreign key (user_id) references user (id);
alter table comment add constraint FK8kcum44fvpupyw6f5baccx25c foreign key (user_id) references user (id);
alter table comment add constraint FKbsuh08kv1lyh8v6ivufrollr6 foreign key (video_id) references video (id);
alter table history add constraint FKn4gjyu69m6xa5f3bot571imbe foreign key (user_id) references user (id);
alter table history add constraint FKlxcb55el15q6huo5abu5ct8xw foreign key (video_id) references video (id);
alter table subscribe add constraint FK31lkjb2x51cw4bljtmswtj6r foreign key (user_id) references user (id);
alter table subscribe add constraint FKseu3x0mvbxvmkcfxtom5h0h82 foreign key (user_id_sub) references user (id);
alter table vid_interact add constraint FKerwlbsh631x9hxl7y97f9fvtq foreign key (user_id) references user (id);
alter table vid_interact add constraint FKpbvwgytbunwo54cta9w0m8hq5 foreign key (video_id) references video (id);
alter table video add constraint FKq1uengrrk45ucgcdp7kt7qc4k foreign key (category_id) references category (id);
alter table video add constraint FKlvftuhj7tfoq8kigg4lc2ps7p foreign key (user_id) references user (id);
