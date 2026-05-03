-- ============================================================
--  crush — демо данни (Bulgaria edition)
--  Потребители: парола = password123
--  Администратор: admin@crush.app / admin123
-- ============================================================

USE crush_db;

DELETE FROM Users WHERE Email LIKE '%@crush.app';

-- bcrypt hashes (verified against PHP password_verify)
SET @pwd   := '$2b$10$KQ71N6yUgurJxhx/TtYx6.JIM1/TM5g04MmkBVR441Q6K/GPvFUBm'; -- password123
SET @apwd  := '$2b$10$c10fWHQzBfBjt2p9I3vbmu4KcvRUC1Z0cFVu1L0CvZyWhdUDDxPCS'; -- admin123
SET @now   := UTC_TIMESTAMP();

-- ---- admin ----
INSERT INTO Users (Id, Email, PasswordHash, Name, Birthdate, Gender, InterestedIn, Bio, City, InterestsCsv, IsAdmin, CreatedAt) VALUES
('00000000-0000-0000-0000-0000000000ad', 'admin@crush.app', @apwd, 'Admin', '1990-01-01', 'nonbinary', 'everyone', 'Platform administrator.', '', '', 1, @now);

-- ---- мъже (5) ----
INSERT INTO Users (Id, Email, PasswordHash, Name, Birthdate, Gender, InterestedIn, Bio, City, InterestsCsv, CreatedAt) VALUES
('11111111-1111-1111-1111-111111111111', 'ivan@crush.app',    @pwd, 'Ivan',    '1996-04-12', 'male',   'female', 'Инженер в София. Обичам планините, кафето и тихите вечери.',       'София',            'Планини,Кафе,Фотография',  @now),
('22222222-2222-2222-2222-222222222222', 'georgi@crush.app',  @pwd, 'Георги',  '1998-09-03', 'male',   'female', 'Китарист в любителска банда. Плевен → Пловдив.',                    'Пловдив',          'Музика,Винил,Кафе',        @now),
('33333333-3333-3333-3333-333333333333', 'nikolay@crush.app', @pwd, 'Николай', '1994-02-28', 'male',   'female', 'Готвач в ресторант във Варна. Ако обичаш мусака — намерили сме се.', 'Варна',            'Готвене,Риболов,Море',     @now),
('44444444-4444-4444-4444-444444444444', 'dimitar@crush.app', @pwd, 'Димитър', '1997-07-17', 'male',   'female', 'Програмист по професия, катерач по душа. Витоша е моят офис.',       'София',            'Катерене,Код,Бира',        @now),
('55555555-5555-5555-5555-555555555555', 'martin@crush.app',  @pwd, 'Мартин',  '1999-11-22', 'male',   'female', 'Студент по архитектура в Бургас. Обичам старите къщи и морето.',      'Бургас',           'Архитектура,Сърф,Книги',   @now);

-- ---- жени (5) ----
INSERT INTO Users (Id, Email, PasswordHash, Name, Birthdate, Gender, InterestedIn, Bio, City, InterestsCsv, CreatedAt) VALUES
('66666666-6666-6666-6666-666666666666', 'maria@crush.app',    @pwd, 'Мария',     '2000-03-21', 'female', 'male', 'Художничка и мечтателка. Любимо кино — БНТ в неделя вечер.',        'София',            'Изкуство,Кино,Йога',          @now),
('77777777-7777-7777-7777-777777777777', 'elena@crush.app',    @pwd, 'Елена',     '1998-11-04', 'female', 'male', 'Маратонка, вино в петък, лоши шеги винаги. Пловдив forever.',       'Пловдив',          'Бягане,Вино,Пътешествия',     @now),
('88888888-8888-8888-8888-888888888888', 'desi@crush.app',     @pwd, 'Десислава', '2001-09-30', 'female', 'male', 'Стайни растения, книги и саркастични коментари 24/7.',              'Варна',            'Растения,Книги,Пилатес',      @now),
('99999999-9999-9999-9999-999999999999', 'viktoria@crush.app', @pwd, 'Виктория',  '1997-06-14', 'female', 'male', 'Фотограф на сватби из цяла България. Обичам изгреви и кучета.',      'Велико Търново',   'Фотография,Кучета,Пътувания', @now),
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'kalina@crush.app',   @pwd, 'Калина',    '1999-01-08', 'female', 'male', 'Лекар специализант в Русе. Дунав, велосипед, филми на Тарковски.',   'Русе',             'Велосипед,Филми,Кафе',        @now);

-- ---- снимки ----
INSERT INTO Photos (Id, UserId, Url, Position, CreatedAt) VALUES
(UUID(), '11111111-1111-1111-1111-111111111111', 'https://images.unsplash.com/photo-1585917176080-1841987bf1fe?crop=entropy&cs=srgb&fm=jpg&q=85', 0, @now),
(UUID(), '22222222-2222-2222-2222-222222222222', 'https://images.unsplash.com/photo-1629001528534-e8a48b636ded?crop=entropy&cs=srgb&fm=jpg&q=85', 0, @now),
(UUID(), '33333333-3333-3333-3333-333333333333', 'https://images.unsplash.com/photo-1624303966826-260632059640?crop=entropy&cs=srgb&fm=jpg&q=85', 0, @now),
(UUID(), '44444444-4444-4444-4444-444444444444', 'https://images.unsplash.com/photo-1600486913747-55e5470d6f40?crop=entropy&cs=srgb&fm=jpg&q=85', 0, @now),
(UUID(), '55555555-5555-5555-5555-555555555555', 'https://images.unsplash.com/photo-1618077360395-f3068be8e001?crop=entropy&cs=srgb&fm=jpg&q=85', 0, @now),
(UUID(), '66666666-6666-6666-6666-666666666666', 'https://images.unsplash.com/photo-1758521540646-abb9612038fb?crop=entropy&cs=srgb&fm=jpg&q=85', 0, @now),
(UUID(), '77777777-7777-7777-7777-777777777777', 'https://images.unsplash.com/photo-1753161023962-665967602405?crop=entropy&cs=srgb&fm=jpg&q=85', 0, @now),
(UUID(), '88888888-8888-8888-8888-888888888888', 'https://images.unsplash.com/photo-1609840114117-9aa293a418ae?crop=entropy&cs=srgb&fm=jpg&q=85', 0, @now),
(UUID(), '99999999-9999-9999-9999-999999999999', 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?crop=entropy&cs=srgb&fm=jpg&q=85', 0, @now),
(UUID(), 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'https://images.unsplash.com/photo-1619895862022-09114b41f16f?crop=entropy&cs=srgb&fm=jpg&q=85', 0, @now);
