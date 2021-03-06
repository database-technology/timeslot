drop table if exists rooms;
create table rooms (
  id integer primary key autoincrement,
  cost_per_hr decimal(8,2),
  included_facilities text not null
);



drop table if exists meetings;
create table meetings (
  meeting_id integer primary key autoincrement,
  person_id integer,
  team_id integer,
  bus_partner_id integer,
  room_num integer,
  start_time text,
  end_time text,
  meeting_date text

);

drop table if exists teams;
create table teams (
  id integer primary key autoincrement,
  name text not null,
  total_cost_accrued decimal(8,2),
  deleted integer
);


drop table if exists company_people;
create table company_people (
  id integer primary key autoincrement,
  team_id int,
  name text not null,
  position text not null
);

drop table if exists business_partners;
create table business_partners (
  id integer primary key autoincrement,
  name text not null,
  position text not null,
  company text not null
);
