<?php
/*======Login===*/
$getSQL["checklogin"] = "SELECT * FROM users WHERE fullname =?";
$getSQL["gAutoIncrement"] = "SELECT Auto_increment FROM information_schema.tables WHERE TABLE_SCHEMA = ? AND table_name= ?";
$getSQL["addUserlogin"] = "INSERT INTO admin(admin_id, username, password, fullname, email, role) VALUES(?, ?, 0, ?, ?, 0)";

// ============Province================

$getSQL["gProvince"]="SELECT * FROM province";
$getSQL["gProvinceActive"]="SELECT * FROM province WHERE published =0";

/*======News====*/
$getSQL["iNews"]="INSERT INTO news(id_type, id_job, id_province , id_subcate, id_typesalary, price, start_pr, end_pr, title, description, files, contacts) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
$getSQL["iNewsCate"]="INSERT INTO news_cate(id_cate,id_news) VALUES(?,?)";
// Active 
$getSQL["iActive"]="INSERT INTO active(id_news,end_date) VALUES (?,?)";
// 
$getSQL["sNews"]="SELECT n.id, m.name, n.title, n.files, n.timestamp FROM news n INNER JOIN menu m ON n.menu_id=m.id ORDER BY n.id ASC";
$getSQL["sNews2"]="SELECT * FROM news ORDER BY id DESC";
$getSQL["sNewsActive"]="SELECT * FROM active WHERE id_news= ?";
$getSQL["gNews1"]="SELECT id, title, description, files FROM news WHERE id=1";
$getSQL["gNews2"]="SELECT id, title, description, files FROM news WHERE id=2";
$getSQL["gNews3"]="SELECT id, title, description, files FROM news WHERE id=3";
$getSQL["gAllNews"]="SELECT id, title, description, files FROM news ORDER BY id DESC";

$getSQL["gNewsfield"]="SELECT n.id, id_type, id_job, id_province, id_subcate,  title, description, files, price, start_pr, end_pr, `timestamp`, contacts FROM news as n WHERE n.id= ?";

$getSQL["gDetail"]="SELECT id, title, description FROM news WHERE id=?";
$getSQL["gMenu"]="SELECT * FROM menu ";
$getSQL["gMenu2"]="SELECT * FROM menu WHERE status = 0 ORDER BY sort_order ";
$getSQL["fParent"]="SELECT id,name FROM menu WHERE id=?";

$getSQL["gImg"] = "SELECT id, title, file_name, timestamp FROM files";
// End news
$getSQL["iInfo"]="INSERT INTO menu (name,description,parent,slug) VALUES (?,?,?,?) ";
/*Category*/
$getSQL["gCate"]="SELECT * FROM category";
$getSQL["iCate"]="INSERT INTO category(name,description) VALUES (?,?)";
/*Sub-Category*/
$getSQL["gSub"]="SELECT * FROM companies ORDER BY id desc";
$getSQL["iSub"]="INSERT INTO companies(id_address,name,description,files) VALUES (?,?,?,?)";
/*District*/
$getSQL["gDisct"]="SELECT * FROM district";
$getSQL["gDisctByaddID"]="SELECT d.id FROM `district` as d JOIN `address` as a ON d.id = a.id WHERE a.id = ?";
/*Address*/
$getSQL["iAdd"]="INSERT INTO address (id_district,name) VALUES (?,?)";
$getSQL["gAddByAddID"]="SELECT a.name FROM `address` as a  WHERE a.id = ?";
/*Type post*/
$getSQL["iType"]="INSERT INTO type_post (menu_id,description) VALUES (?,?) ";
$getSQL["gTypeMenu"]="SELECT tp.id as tid, tp.menu_id, m.id as mid, m.name FROM type_post as tp LEFT JOIN menu as m ON tp.menu_id=m.id ORDER BY tp.id ASC";
$getSQL["gType"]="SELECT * FROM type_post";
$getSQL["gSalary"]="SELECT * FROM typesalary";
$getSQL["iSubcate_Cate"]="INSERT INTO cate_company(id_cate,id_subcate) VALUES(?,?)";
/*Jobs */
$getSQL["gJobs"]="SELECT * FROM jobs ORDER BY name desc";
$getSQL['iJobs']="INSERT INTO jobs (name,description) VALUES(?,?)";


// =========User============
$getSQL["gUsers"]=" SELECT `id`, `oauth_provider`, `oauth_uid`, `id_app`, `id_em`, `email`, `fullname`, `password`, `picture`, `link`, `phone` FROM `users` WHERE id = ?";

?>