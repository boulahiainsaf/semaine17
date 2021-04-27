INSERT INTO `categories` ( `cat_name`, `cat_parent_id`) VALUES
( 'Matériaux', NULL),
('Tondeuses électriques', 3)



INSERT INTO `customers` ( `cus_lastname`, `cus_firstname`, `cus_address`, `cus_zipcode`, `cus_city`, `cus_countries_id`, `cus_mail`, `cus_phone`, `cus_password`, `cus_add_date`, `cus_update_date`) VALUES

( 'Riviere', 'Romain', '2301 boulevard Alsace-Lorraine', '80000', 'Amiens', 'FR', 'risus.morbi@laposte.net', '201583083', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjL', '2017-01-02 23:47:20', '2020-05-06 00:01:53'),
( 'Bailly', 'Lilou', 'Ap #125-483 Fusce Street', '80300', 'Birmingham', 'GB', 'sagittis.placerat@Aliquam.co.uk', '700966695', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToH', '2002-12-14 06:52:52', '2020-05-18 00:00:00')



INSERT INTO `posts` (`pos_libelle`) VALUES
('Directeur(/trice) du marketing'),
('Assistant(e) marketing')



INSERT INTO `suppliers` (`sup_name`, `sup_city`, `sup_countries_id`, `sup_address`, `sup_zipcode`, `sup_contact`, `sup_phone`, `sup_mail`) VALUES
('Barbeuc', 'Narbonne', 'FR', '56 avenue Donald Trump', '11000', 'Gérard Menfaim', '0512345678', 'sales@barbeuc.com'),
('FOURNIRIEN', 'Shangaï', 'CN', '112 rue de Pékin', '340', 'Chang Li', '0102030405', 'chang.li@fournirien.cn');



INSERT INTO `orders` ( `ord_order_date`, `ord_payment_date`, `ord_ship_date`, `ord_reception_date`, `ord_status`, `ord_cus_id`) VALUES
( '2008-08-20', '2018-12-01', '2019-08-29', '2000-04-17', '  ', 1),
( '2016-01-22', '2011-02-02', '2013-04-13', '2004-10-29', 'Commande urgente', 2)