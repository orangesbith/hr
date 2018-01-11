-- 1、删除已经存在的数据表
DROP TABLE logs PURGE ;
DROP TABLE actions PURGE ;
DROP TABLE role_groups PURGE ;
DROP TABLE groups PURGE ;
DROP TABLE member PURGE ;
DROP TABLE role PURGE ;
DROP SEQUENCE logs_seq ;
-- 2、创建新的数据表
CREATE TABLE role(
	rid			NUMBER ,
	title		VARCHAR2(50) ,
	CONSTRAINT pk_rid PRIMARY KEY(rid)
) ;
CREATE TABLE member(
	mid			VARCHAR2(50) ,
	password	VARCHAR2(32) ,
	name		VARCHAR2(50) ,
	lastdate	DATE ,
	rid			NUMBER ,
	CONSTRAINT pk_mid PRIMARY KEY(mid) ,
	CONSTRAINT fk_rid1 FOREIGN KEY(rid) REFERENCES role(rid)
) ;
-- 创建权限组数据表
CREATE TABLE groups (
	gid			NUMBER ,
	title		VARCHAR2(50) ,
	CONSTRAINT pk_gid PRIMARY KEY(gid)
) ;
-- 创建角色-权限组关系表
CREATE TABLE role_groups(
	rid			NUMBER ,
	gid			NUMBER ,
	CONSTRAINT fk_rid2 FOREIGN KEY(rid) REFERENCES role(rid) ,
	CONSTRAINT gk_gid2 FOREIGN KEY(gid) REFERENCES groups(gid) 
) ;
CREATE TABLE actions(
	actid		NUMBER ,
	title		VARCHAR2(50) ,
	url			VARCHAR2(200) ,
	gid			NUMBER ,
	CONSTRAINT pk_actid PRIMARY KEY(actid) ,
	CONSTRAINT fk_gid3 FOREIGN KEY(gid) REFERENCES groups(gid)
) ;
CREATE SEQUENCE logs_seq ;
CREATE TABLE logs(
	lid			NUMBER ,
	mid			VARCHAR2(50) ,
	intdate		DATE ,
	ip			VARCHAR2(50) ,
	note		VARCHAR2(200) ,
	CONSTRAINT pk_lid PRIMARY KEY(lid) ,
	CONSTRAINT fk_mid FOREIGN KEY(mid) REFERENCES member(mid)
) ;
-- 3、编写测试数据
-- （1）、增加角色数据
INSERT INTO role(rid,title) VALUES (1,'系统管理员') ;
INSERT INTO role(rid,title) VALUES (2,'信息管理员') ;
INSERT INTO role(rid,title) VALUES (3,'客服人员') ;
-- （2）、增加用户测试数据（admin/hello）
INSERT INTO member(mid,password,name,lastdate,rid) VALUES ('admin','FC2E402CBCAA21F3A0F078D1F181D74D','老王',SYSDATE,1) ;
-- （2）、增加用户测试数据（mldn/java）
INSERT INTO member(mid,password,name,lastdate,rid) VALUES ('mldn','AE2C1A447AA137CDB378A35ED5D36FA8','张三',SYSDATE,2) ;
-- （3）、增加权限组测试数据
INSERT INTO groups(gid,title) VALUES (1,'业务信息') ;
INSERT INTO groups(gid,title) VALUES (2,'任务管理') ;
INSERT INTO groups(gid,title) VALUES (3,'公告管理') ;
-- （4）、增加权限组与角色对应关系 —— 系统管理员角色具备的权限组
INSERT INTO role_groups(rid,gid) VALUES (1,1) ;
INSERT INTO role_groups(rid,gid) VALUES (1,2) ;
INSERT INTO role_groups(rid,gid) VALUES (1,3) ;
-- （4）、增加权限组与角色对应关系 —— 信息管理员角色具备的权限组
INSERT INTO role_groups(rid,gid) VALUES (1,2) ;
INSERT INTO role_groups(rid,gid) VALUES (1,3) ;
-- （4）、增加权限组与角色对应关系 —— 客服人员角色具备的权限组
INSERT INTO role_groups(rid,gid) VALUES (1,3) ;
-- （5）、建立相应的测试数据
INSERT INTO actions(actid,title,url,gid) VALUES (1,'添加客户','/pages/show.jsp',1) ;
INSERT INTO actions(actid,title,url,gid) VALUES (2,'客户列表','/pages/show.jsp',1) ;
INSERT INTO actions(actid,title,url,gid) VALUES (3,'客户修改','/pages/show.jsp',1) ;
INSERT INTO actions(actid,title,url,gid) VALUES (4,'客户删除','/pages/show.jsp',1) ;

INSERT INTO actions(actid,title,url,gid) VALUES (5,'添加任务','/pages/show.jsp',2) ;
INSERT INTO actions(actid,title,url,gid) VALUES (6,'任务列表','/pages/show.jsp',2) ;
INSERT INTO actions(actid,title,url,gid) VALUES (7,'任务完成','/pages/show.jsp',2) ;
INSERT INTO actions(actid,title,url,gid) VALUES (8,'任务修改','/pages/show.jsp',2) ;

INSERT INTO actions(actid,title,url,gid) VALUES (9,'发布公告','/pages/show.jsp',3) ;
INSERT INTO actions(actid,title,url,gid) VALUES (10,'公告列表','/pages/show.jsp',3) ;











