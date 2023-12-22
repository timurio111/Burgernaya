SET search_path = burgernaya, public;

INSERT INTO client (client_name, client_phone, client_email) VALUES ('Анна Смирнова', '79031234567', 'smirnova@example.com');
INSERT INTO client (client_name, client_phone, client_email) VALUES ('Дмитрий Кузнецов', '79032345678', 'kuznetsov@example.com');
INSERT INTO client (client_name, client_phone, client_email) VALUES ('Елена Воробьева', '79033456789', 'vorobeva@example.com');
INSERT INTO client (client_name, client_phone, client_email) VALUES ('Ирина Попова', '79035678901', 'popova@example.com');
INSERT INTO client (client_name, client_phone, client_email) VALUES ('Сергей Соколов', '12345543210', 'sokolov@example.com');


INSERT INTO restaurant (restaurant_address) VALUES ('ул. Пушкина, д. 10');
INSERT INTO restaurant (restaurant_address) VALUES ('ул. Лермонтова, д. 5');


INSERT INTO employee (restaurant_id, employee_phone, employee_email, name) VALUES (1, '12345678901', 'employee1@example.com', 'Pavlik 5');
INSERT INTO employee (restaurant_id, employee_phone, employee_email, name) VALUES (2, '23456789012', 'employee2@example.com', 'Pavlik 6');
INSERT INTO employee (restaurant_id, employee_phone, employee_email, name) VALUES (1, '34567890123', 'employee3@example.com', 'Pavlik 7');
INSERT INTO employee (restaurant_id, employee_phone, employee_email, name) VALUES (2, '34567890125', 'employee4@example.com', 'Pavlik 8');
INSERT INTO employee (restaurant_id, employee_phone, employee_email, name) VALUES (1, '12345678910', 'employeenew@example.com', 'Pavlik 9');


INSERT INTO ingredients (ingredient_name, is_spicy) VALUES ('Помидор', false);
INSERT INTO ingredients (ingredient_name, is_spicy) VALUES ('Огурец', false);
INSERT INTO ingredients (ingredient_name, is_spicy) VALUES ('Перец чили', true);
INSERT INTO ingredients (ingredient_name, is_spicy) VALUES ('Бекон', false);
INSERT INTO ingredients (ingredient_name, is_spicy) VALUES ('Котлета говяжья', false);
INSERT INTO ingredients (ingredient_name, is_spicy) VALUES ('Котлета куриная', false);
INSERT INTO ingredients (ingredient_name, is_spicy) VALUES ('Булка белая', false);
INSERT INTO ingredients (ingredient_name, is_spicy) VALUES ('Булка ржаная', false);
INSERT INTO ingredients (ingredient_name, is_spicy) VALUES ('Вода', false);
INSERT INTO ingredients (ingredient_name, is_spicy) VALUES ('Кола', false);


INSERT INTO menu (product_price, product_special_price, product_name) VALUES (1000, 800, 'Бургер куриный');
INSERT INTO menu (product_price, product_special_price, product_name) VALUES (1200, 1000, 'Бургер говяжий');
INSERT INTO menu (product_price, product_special_price, product_name) VALUES (1200, 1000, 'Бургер говяжий острый');
INSERT INTO menu (product_price, product_special_price, product_name) VALUES (100, 100, 'Кола маленькая');
INSERT INTO menu (product_price, product_special_price, product_name) VALUES (150, 150, 'Кола большая');
INSERT INTO menu (product_price, product_special_price, product_name) VALUES (50, 50, 'Стакан воды');


INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (1, 7, 200);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (1, 6, 100);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (1, 1, 50);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (1, 2, 50);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (2, 8, 200);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (2, 5, 100);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (2, 4, 10);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (2, 2, 50);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (3, 8, 200);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (3, 5, 100);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (3, 4, 10);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (3, 3, 10);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (3, 2, 50);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (4, 10, 300);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (5, 10, 600);
INSERT INTO menu_item (product_id, ingredient_id, grams) VALUES (6, 9, 300);

INSERT INTO loyalty_card (owner_id, creation_date) VALUES (1, '2023-01-19');

INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (1, 1, 1, '2023-01-15', 100, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (2, 2, 2, '2023-01-16', 150, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (3, 5, 1, '2023-01-17', 0, true);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (3, 3, 1, '2023-01-17', 50, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (2, 4, 2, '2023-01-17', 50, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (4, 1, 2, '2023-01-17', 100, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (3, 2, 1, '2023-01-17', 0, true);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (1, 3, 1, '2023-01-18', 0, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (2, 2, 2, '2023-01-19', 0, true);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (2, 1, 2, '2023-01-19', 200, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (4, 5, 2, '2023-01-20', 0, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (3, 4, 1, '2023-01-21', 50, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (3, 2, 1, '2023-01-21', 0, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (2, 3, 2, '2023-01-23', 150, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (1, 2, 1, '2023-01-24', 100, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (1, 4, 1, '2023-01-24', 0, false);
INSERT INTO orders (employee_id, client_id, restaurant_id, date, tip, loyalty_card) VALUES (4, 5, 2, '2023-01-24', 500, true);


INSERT INTO order_content (order_id, product_id, quantity) VALUES (17, 6, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (16, 2, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (16, 6, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (15, 3, 2);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (15, 4, 2);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (14, 2, 2);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (13, 1, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (12, 2, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (12, 4, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (11, 2, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (10, 6, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (10, 1, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (9, 3, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (8, 2, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (7, 2, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (6, 4, 3);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (6, 1, 2);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (6, 2, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (5, 1, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (5, 5, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (4, 3, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (4, 4, 2);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (4, 2, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (3, 1, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (2, 2, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (1, 3, 1);
INSERT INTO order_content (order_id, product_id, quantity) VALUES (1, 1, 2);
