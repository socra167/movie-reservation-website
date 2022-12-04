use tgv_db;

-- User
insert into user(site_id, password, user_name) value("test", "1234", "testuser");

-- Movie
insert into movie(title, info, director, genre) values("토이스토리2", "장난감이 살아 움직인다!", "토감독", "코미디");
insert into movie(title, info, director, genre) values("무한열차", "벽력일섬", "젠이츠", "액션");
insert into movie(title, info, director, genre) values("인터스텔라", "다른 행성을 찾아보자.", "크리스토퍼 꿀잼", "SF");
insert into movie(title, info, director, genre) values("나우유씨미", "마술을 보여드릴게요.", "김마술", "액션");

-- Review
insert into review(mid, uid, title, content, category) value(1, 1, "첫 리뷰", "리뷰를 작성해보세요.", "Action");

-- Seats
insert into ticket(uid, mid, seat) value(1, 1, "0A0");
insert into ticket(uid, mid, seat) value(1, 1, "0B1");
insert into ticket(uid, mid, seat) value(1, 1, "0C2");
insert into ticket(uid, mid, seat) value(1, 1, "0D3");

