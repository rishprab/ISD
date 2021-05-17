INSERT INTO PRODUCT_CATEGORIES (CATEGORY, ARCHIVED)
VALUES ('Displays', false),
       ('Motors', false),
       ('Motion Sensors', false),
       ('Navigation modules', false),
       ('Raspberry Pi', false)
;

INSERT INTO PRODUCTS (NAME, STOCK, PRICE, CATEGORY, DESCRIPTION, ARCHIVED)
VALUES ('0.5 Display', 10, 0.20, 'Displays', 'This is a 0.5 display', false),
       ('0.5 Nvidia Display ', 20, 0.50, 'Displays', 'This is a Nvidia display', false),
       ('0.7 Display ', 10, 0.70, 'Displays', 'This is a 0.7 display', false),
       ('1.5 Nvidia Display ', 25, 8.50, 'Displays',
        'This is a 1.5" Nvidia display.', false),
       ('2.5 Microfarad Display', 20, 1.50, 'Displays', 'This is a microfarad display', false),
       ('3.5 Display Kit', 30, 12.00, 'Displays', 'Display kit comes with 2 displays', false),
       ('0.3 Display ', 16, 3.50, 'Displays', 'This is a 0.3 display', false),
       ('High Quality 1.5 Display', 20, 4.00, 'Displays', 'This is a high quality 1.5 display', false),
       ('Plastic Film Display', 20, 1.50, 'Displays', 'This is a plastic film display', false),
       ('DC Shunt Motor', 30, 5.50, 'Motors', 'This is a DC shunt motor', false),
       ('Separately Excited Motor', 40, 6.00, 'Motors', 'This is a Separately Excited Motor', false),
       ('DC Series Motor', 20, 0.50, 'Motors', 'This is a DC Series Motor', false),
       ('PMDC Motor', 10, 1.50, 'Motors', 'This is a PMDC Motor', false),
       ('DC Compound Motor', 20, 4.50, 'Motors', 'This is a DC Compound Motor', false),
       ('Synchronous Motor', 50, 9.50, 'Motors', 'This is a Synchronous Motor', false),
       ('Induction Motor', 90, 10.00, 'Motors', 'This is a Induction Motor', false),
       ('NavPix', 20, 1.50, 'Navigation modules', 'This is a NavPix', false),
       ('TomTom Go', 80, 7.00, 'Navigation modules', 'This is a TomTom Go', false),
       ('TomTom Navigator', 20, 1.50, 'Navigation modules', 'This is a TomTom Navigator', false),
       ('TMC Accessory Kit', 10, 0.50, 'Navigation modules', 'This is a TMC Accessory Kit', false),
       ('Passive infrared (PIR)', 18, 12.80, 'Motion Sensors', 'Passive infrared (PIR) sensor', false),
       ('Dual technology motion Sensors', 23, 7.99, 'Motion Sensors', 'Dual technology motion sensors', false),
       ('Contact Sensors', 3, 24.99, 'Motion Sensors', 'Contact Sensor', false)
;
