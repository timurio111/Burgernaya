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
