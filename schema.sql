-- طرح اولیه پیشنهادی؛ پیش از استفاده واقعی باید احراز هویت و سیاست‌های دسترسی امن تکمیل شوند.
create table if not exists classes (id bigserial primary key, name text not null, class_code text unique not null);
create table if not exists questions (id bigserial primary key, class_id bigint references classes(id), question_text text not null);
create table if not exists exams (id bigserial primary key, class_id bigint references classes(id), title text not null);
create table if not exists results (id bigserial primary key, exam_id bigint references exams(id), student_name text not null, score numeric);
