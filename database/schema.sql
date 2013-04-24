create schema linkdump_data;
create table linkdump_data.link (
    l_id serial primary key,
    l_url text,
    l_notes text
);

create table linkdump_data.tag (
    t_id serial primary key,
    t_name text
);

create table linkdump_data.action (
    a_id serial primary key,
    a_name text
);

create table linkdump_data.link_tag (
    lt_link_id integer references linkdump_data.link (l_id),
    lt_tag_id integer references linkdump_data.tag (t_id)
);

create table linkdump_data.link_action (
    la_link_id integer references linkdump_data.link (l_id),
    la_action_id integer references linkdump_data.action (a_id)
);
