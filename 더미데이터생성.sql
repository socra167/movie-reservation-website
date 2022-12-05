use tgv_db;

-- User
insert into user(site_id, password, user_name) value("test", "1234", "testuser");

-- Movie
insert into movie(title, info, director, genre, url, reservation_rate, rate) values("그래비티", "허블 우주망원경을 수리하기 위해 우주를 탐사하던 라이언 스톤 박사는 폭파된 인공위성의 잔해와 부딪히면서 소리도 산소도 없는 우주 한 가운데에 홀로 남겨지는데…", "알폰소 쿠아론", "SF", "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000077/77200/77200_1000.jpg", "8.5%", "96%" );
insert into movie(title, info, director, genre, url, reservation_rate, rate) values("올빼미", "맹인이지만 뛰어난 침술 실력을 지닌 ‘경수’는 어의 ‘이형익’에게 그 재주를 인정받아 궁으로 들어간다. 그 무렵, 청에 인질로 끌려갔던 ‘소현세자’가 8년 만에 귀국하고, ‘인조’는 아들을 향한 반가움도 잠시 정체 모를 불안감에 휩싸인다. 그러던 어느 밤, 어둠 속에서는 희미하게 볼 수 있는 ‘경수’가 ‘소현세자’의 죽음을 목격하게 되고진실을 알리려는 찰나 더 큰 비밀과 음모가 드러나며목숨마저 위태로운 상황에 빠진다.아들의 죽음 후 ‘인조’의 불안감은 광기로 변하여 폭주하기 시작하고세자의 죽음을 목격한 ‘경수’로 인해 관련된 인물들의 민낯이 서서히 드러나게 되는데...", "안태진", "스릴러", "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86481/86481_320.jpg", "20.9%", "97%" );
insert into movie(title, info, director, genre, url, reservation_rate, rate) values("극장판 뽀로로와 친구들", "게임왕국을 초토화 시킨 네모 바이러스를 없애기 위해 ‘에디박사’의 도움을 구하러 차원을 넘어온 게임왕국의 집사 ‘차차 아저씨’. 그를 쫓아온 바이러스 괴물로 인해 뽀롱뽀롱 마을은 위험에 빠지고, ‘크롱’과 ‘포비’는 네모가 되어버리고 만다. 뽀로로와 친구들은 게임왕국과 뽀롱뽀롱 마을을 구하기 위해, 팀 뽀로로 & 팀 에디로 나뉘어 ‘에디박사’가 발명한 컴퓨터 백신을 가지고 바이러스 소탕 대작전을 시작하는데… 과연 뽀로로와 친구들은 게임왕국과 뽀롱뽀롱 마을을 지킬 수 있을까?", "박영균", "애니메이션", "https://movie-phinf.pstatic.net/20221108_225/1667872338018ez9cs_JPEG/movie_image.jpg", "20.3%", "98%" );
-- Review
insert into review(mid, uid, title, content, category) value(1, 1, "우주에 관심이 많았는데 재밌었어요", "또 볼 의향이 있습니다.", "SF");
insert into review(mid, uid, title, content, category) value(2, 1, "사극 매니아입니다.", "고증이 약간 실망스러웠습니다.", "스릴러");

-- Seats
insert into ticket(uid, mid, seat) value(1, 1, "0A0");
insert into ticket(uid, mid, seat) value(1, 1, "0B1");
insert into ticket(uid, mid, seat) value(1, 1, "0C2");
insert into ticket(uid, mid, seat) value(1, 1, "0D3");

