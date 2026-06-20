create table province (
    id serial primary key,
    name text not null,
    name_eng text not null
);

create table ward (
    id serial primary key,
    province_id int references province (id),
    name text not null,
    name_eng text not null
);

insert into
    province (name, name_eng)
values ('Thái Bình', 'Thai Binh'),
    ('Đà Nẵng', 'Da Nang'),
    ('Hà Nội', 'Ha Noi');

insert into
    ward (province_id, name, name_eng)
values (1, 'Cộng Hòa', 'Cong Hoa'),
    (2, 'Thanh Khê', 'Thanh Khe'),
    (3, 'Ba Đình', 'Ba Dinh');

update province
set
    name = 'Hưng Yên',
    name_eng = 'Hung Yen'
where
    id = 1;

update ward
set
    name = 'Ngự Thiên',
    name_eng = 'Ngu Thien'
where
    id = 1;

delete from province where id = 2;

delete from ward where id = 2;