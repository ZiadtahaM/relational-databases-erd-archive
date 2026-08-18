CREATE TABLE IF NOT EXISTS member (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, email TEXT UNIQUE NOT NULL, phone TEXT NOT NULL, type TEXT DEFAULT 'STUDENT', balance REAL DEFAULT 0.0, created_date TEXT NOT NULL DEFAULT (strftime('%Y-%m-%d %H:%M:%S', 'now')));
CREATE TABLE IF NOT EXISTS workspace (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, capacity INTEGER DEFAULT 1, status TEXT DEFAULT 'AVAILABLE', created_date TEXT NOT NULL DEFAULT (strftime('%Y-%m-%d %H:%M:%S', 'now')));
CREATE TABLE IF NOT EXISTS pricing_plan (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, price REAL NOT NULL, duration_hours INTEGER, description TEXT, created_date TEXT NOT NULL DEFAULT (strftime('%Y-%m-%d %H:%M:%S', 'now')));
CREATE TABLE IF NOT EXISTS booking (id INTEGER PRIMARY KEY AUTOINCREMENT, member_id INTEGER NOT NULL, workspace_id INTEGER NOT NULL, plan_id INTEGER NOT NULL, start_time TEXT NOT NULL, end_time TEXT, total_hours REAL, amount REAL NOT NULL, status TEXT DEFAULT 'ACTIVE', payment_status TEXT DEFAULT 'PAID', created_date TEXT NOT NULL DEFAULT (strftime('%Y-%m-%d %H:%M:%S', 'now')), FOREIGN KEY (member_id) REFERENCES member(id), FOREIGN KEY (workspace_id) REFERENCES workspace(id), FOREIGN KEY (plan_id) REFERENCES pricing_plan(id));
CREATE TABLE IF NOT EXISTS cafe_item (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, category TEXT, price REAL NOT NULL, stock INTEGER DEFAULT 0, created_date TEXT NOT NULL DEFAULT (strftime('%Y-%m-%d %H:%M:%S', 'now')));
CREATE TABLE IF NOT EXISTS cafe_order (id INTEGER PRIMARY KEY AUTOINCREMENT, member_id INTEGER NOT NULL, active_session_id INTEGER, item_id INTEGER NOT NULL, quantity INTEGER NOT NULL, unit_price REAL NOT NULL, total REAL NOT NULL, order_time TEXT NOT NULL DEFAULT (strftime('%Y-%m-%d %H:%M:%S', 'now')), payment_status TEXT DEFAULT 'PAID', FOREIGN KEY (member_id) REFERENCES member(id), FOREIGN KEY (item_id) REFERENCES cafe_item(id), FOREIGN KEY (active_session_id) REFERENCES active_session(id));
CREATE TABLE IF NOT EXISTS active_session (id INTEGER PRIMARY KEY AUTOINCREMENT, booking_id INTEGER NOT NULL, member_id INTEGER NOT NULL, workspace_id INTEGER NOT NULL, check_in_time TEXT NOT NULL DEFAULT (strftime('%Y-%m-%d %H:%M:%S', 'now')), check_out_time TEXT, status TEXT DEFAULT 'ACTIVE', FOREIGN KEY (booking_id) REFERENCES booking(id), FOREIGN KEY (member_id) REFERENCES member(id), FOREIGN KEY (workspace_id) REFERENCES workspace(id));
CREATE TABLE IF NOT EXISTS user (id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT UNIQUE NOT NULL, password TEXT NOT NULL, full_name TEXT, role TEXT DEFAULT 'ADMIN', created_date TEXT NOT NULL DEFAULT (strftime('%Y-%m-%d %H:%M:%S', 'now')));
INSERT OR IGNORE INTO user (username, password, full_name, role) VALUES ('admin', '$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa', 'Administrator', 'ADMIN');
INSERT OR IGNORE INTO pricing_plan (name, type, price, duration_hours, description) VALUES ('Hourly Rate', 'HOURLY', 10.0, 1, '$10 per hour'), ('5+ Hours', 'DAILY', 50.0, 5, '$50 for 5+ hours'), ('Daily Pass', 'DAILY', 80.0, 24, 'Full day'), ('Weekly Pass', 'WEEKLY', 300.0, 168, 'One week'), ('Monthly Pass', 'MONTHLY', 1000.0, 720, 'One month');
INSERT OR IGNORE INTO workspace (name, type, capacity, status) VALUES ('Desk 1', 'DESK', 1, 'AVAILABLE'), ('Desk 2', 'DESK', 1, 'AVAILABLE'), ('Desk 3', 'DESK', 1, 'AVAILABLE'), ('Meeting Room A', 'MEETING_ROOM', 6, 'AVAILABLE'), ('Private Office 1', 'PRIVATE_OFFICE', 2, 'AVAILABLE');
INSERT OR IGNORE INTO cafe_item (name, category, price, stock) VALUES ('Espresso', 'COFFEE', 3.0, 100), ('Cappuccino', 'COFFEE', 4.5, 100), ('Green Tea', 'TEA', 2.5, 80), ('Water', 'WATER', 1.5, 150), ('Sandwich', 'SNACK', 6.0, 50), ('Cookies', 'SNACK', 2.0, 60);

-- Sample Data for Members
INSERT OR IGNORE INTO member (id, name, email, phone, type, balance, created_date) VALUES
(1, 'Alice Smith', 'alice@example.com', '111-222-3333', 'PROFESSIONAL', 50.0, '2025-12-15 10:00:00'),
(2, 'Bob Johnson', 'bob@example.com', '444-555-6666', 'STUDENT', 0.0, '2025-12-16 11:30:00'),
(3, 'Charlie Brown', 'charlie@example.com', '777-888-9999', 'OTHER', 25.0, '2025-12-17 14:00:00');

-- Sample Data for Bookings
-- Booking 1 (Completed) for Alice Smith, Desk 1, Hourly Rate
INSERT OR IGNORE INTO booking (id, member_id, workspace_id, plan_id, start_time, end_time, total_hours, amount, status, payment_status, created_date) VALUES
(1, 1, 1, 1, '2025-12-18 09:00:00', '2025-12-18 12:00:00', 3.0, 30.0, 'COMPLETED', 'PAID', '2025-12-18 08:55:00');

-- Booking 2 (Active) for Bob Johnson, Desk 2, Daily Pass
INSERT OR IGNORE INTO booking (id, member_id, workspace_id, plan_id, start_time, end_time, total_hours, amount, status, payment_status, created_date) VALUES
(2, 2, 2, 3, '2025-12-21 08:00:00', NULL, NULL, 80.0, 'ACTIVE', 'PENDING', '2025-12-21 07:50:00');

-- Sample Data for Active Sessions
-- Active Session 1 (Completed) for Alice Smith, linked to Booking 1
INSERT OR IGNORE INTO active_session (id, booking_id, member_id, workspace_id, check_in_time, check_out_time, status) VALUES
(1, 1, 1, 1, '2025-12-18 09:05:00', '2025-12-18 11:55:00', 'COMPLETED');

-- Active Session 2 (Active) for Bob Johnson, linked to Booking 2
INSERT OR IGNORE INTO active_session (id, booking_id, member_id, workspace_id, check_in_time, check_out_time, status) VALUES
(2, 2, 2, 2, '2025-12-21 08:05:00', NULL, 'ACTIVE');

-- Sample Data for Cafe Orders
-- Cafe Order 1 for Alice Smith during her session
INSERT OR IGNORE INTO cafe_order (id, member_id, active_session_id, item_id, quantity, unit_price, total, order_time, payment_status) VALUES
(1, 1, 1, 1, 1, 3.0, 3.0, '2025-12-18 09:30:00', 'PAID'); -- Espresso for Alice

-- Cafe Order 2 for Bob Johnson during his session
INSERT OR IGNORE INTO cafe_order (id, member_id, active_session_id, item_id, quantity, unit_price, total, order_time, payment_status) VALUES
(2, 2, 2, 2, 2, 4.5, 9.0, '2025-12-21 08:45:00', 'PAID'); -- 2 Cappuccinos for Bob

-- Cafe Order 3 for Charlie Brown (not in an active session)
INSERT OR IGNORE INTO cafe_order (id, member_id, active_session_id, item_id, quantity, unit_price, total, order_time, payment_status) VALUES
(3, 3, NULL, 5, 1, 6.0, 6.0, '2025-12-20 15:00:00', 'PAID'); -- Sandwich for Charlie