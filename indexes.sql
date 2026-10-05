CREATE INDEX idx_user_id  ON big_data(user_id);
CREATE INDEX idx_category ON big_data(category);
CREATE INDEX idx_created  ON big_data(created);
CREATE INDEX idx_user_cat ON big_data(user_id, category);

-- Посмотреть все индексы
SELECT name, tbl_name FROM sqlite_master WHERE type='index';
