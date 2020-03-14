CREATE TABLE [dbo].[hrm](
	[辅导员] [nvarchar](255) NULL,
	[入住状态] [nvarchar](255) NULL,
	[学号] [nvarchar](255) NOT NULL,
	[姓名] [nvarchar](255) NULL,
	[性别] [nvarchar](255) NULL,
	[年龄] [int] NULL,
	[出生日期] [nvarchar](255) NULL,
	[民族] [nvarchar](255) NULL,
	[政治面貌] [nvarchar](255) NULL,
	[入学时间] [nvarchar](255) NULL,
	[医保卡号] [nvarchar](255) NULL,
	[预计毕业时间] [nvarchar](255) NULL,
	[籍贯] [nvarchar](255) NULL,
	[生源地代码] [nvarchar](255) NULL,
	[身份证号码] [nvarchar](255) NULL,
	[户口类型] [nvarchar](255) NULL,
	[考生类别] [nvarchar](255) NULL,
	[录取类型] [nvarchar](255) NULL,
	[考生号] [nvarchar](255) NULL,
	[一卡通号] [nvarchar](255) NULL,
	[银行名称] [nvarchar](255) NULL,
	[银行账号] [nvarchar](255) NULL,
	[所在地区] [nvarchar](255) NULL,
	[是否成为青年志愿者] [nvarchar](255) NULL,
	[移动电话] [nvarchar](255) NULL,
	[电子邮件] [nvarchar](255) NULL,
	[QQ号码] [nvarchar](255) NULL,
	[微信号] [nvarchar](255) NULL,
	[通讯地址] [nvarchar](255) NULL,
	[孤儿] [nvarchar](255) NULL,
	[单亲] [nvarchar](255) NULL,
	[残疾] [nvarchar](255) NULL,
	[低保] [nvarchar](255) NULL,
	[父亲姓名] [nvarchar](255) NULL,
	[父亲工作单位] [nvarchar](255) NULL,
	[父亲联系电话] [nvarchar](255) NULL,
	[母亲姓名] [nvarchar](255) NULL,
	[母亲工作单位] [nvarchar](255) NULL,
	[母亲联系电话] [nvarchar](255) NULL,
	[家庭邮编] [nvarchar](255) NULL,
	[电话] [nvarchar](255) NULL,
	[学位] [nvarchar](255) NULL,
	[在校状态] [nvarchar](255) NULL,
	[所属学院] [nvarchar](255) NULL,
	[专业] [nvarchar](255) NULL,
	[年级] [nvarchar](255) NULL,
	[班级] [nvarchar](255) NULL,
	[每学年学费] [nvarchar](255) NULL,
	[每学年住宿费] [nvarchar](255) NULL,
	[姓名拼音] [nvarchar](255) NULL,
	[激活状态] [nvarchar](255) NULL,
	[身份] [nvarchar](10) NULL,
 CONSTRAINT [PK_hrm_1] PRIMARY KEY CLUSTERED 
(
	[学号] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[tab1](
	[tab1_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[报告日期] [nvarchar](50) NOT NULL,
	[学号工号] [nvarchar](50) NOT NULL,
	[在疫区居住地] [nvarchar](100) NULL,
	[目前在柳居住地] [nvarchar](100) NULL,
	[症状] [nvarchar](100) NULL,
	[离开武汉等疫区日期] [nvarchar](100) NULL,
	[出行方式] [nvarchar](100) NULL,
	[途经地] [nvarchar](100) NULL,
	[同行人员姓名] [nvarchar](100) NULL,
 CONSTRAINT [PK_tab1] PRIMARY KEY CLUSTERED 
(
	[tab1_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tab2](
	[tab2_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[报告日期] [nvarchar](50) NOT NULL,
	[学号工号] [nvarchar](50) NULL,
	[在疫区居住地] [nvarchar](200) NULL,
	[在湖北居住地_省] [nvarchar](50) NULL,
	[在湖北居住地_市] [nvarchar](50) NULL,
	[在湖北居住地_县] [nvarchar](200) NULL,
	[目前在柳居住地] [nvarchar](100) NULL,
	[是否返回柳州] [nvarchar](50) NULL,
	[症状] [nvarchar](100) NULL,
	[离开武汉疫区日期] [nvarchar](100) NULL,
	[到达柳州日期] [nvarchar](100) NULL,
	[出行方式] [nvarchar](100) NULL,
	[途经地] [nvarchar](200) NULL,
	[同行人员姓名] [nvarchar](100) NULL,
	[备注] [nvarchar](300) NULL,
 CONSTRAINT [PK_tab2] PRIMARY KEY CLUSTERED 
(
	[tab2_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[tab3](
	[tab3_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[报告日期] [nvarchar](50) NOT NULL,
	[学号工号] [nvarchar](50) NOT NULL,
	[目前在柳居住地] [nvarchar](100) NULL,
	[接触过疫区人员的姓名] [nvarchar](100) NULL,
	[是否接触武汉外病例] [nvarchar](50) NULL,
	[疑例病人姓名] [nvarchar](50) NULL,
	[接触时间] [nvarchar](50) NULL,
	[具体描述] [nvarchar](100) NULL,
	[症状] [nvarchar](100) NULL,
 CONSTRAINT [PK_tab3] PRIMARY KEY CLUSTERED 
(
	[tab3_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[tab4](
	[tab4_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[报告日期] [nvarchar](50) NOT NULL,
	[学号工号] [nvarchar](50) NOT NULL,
	[在疫区居住地] [nvarchar](100) NULL,
	[目前在柳居住地] [nvarchar](100) NULL,
	[是否2月10日返柳] [nvarchar](100) NULL,
	[症状] [nvarchar](100) NULL,
 CONSTRAINT [PK_tab4] PRIMARY KEY CLUSTERED 
(
	[tab4_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



CREATE TABLE [dbo].[tab5](
	[tab5_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[报告日期] [nvarchar](50) NOT NULL,
	[学号工号] [nvarchar](50) NOT NULL,
	[是否赴武汉] [nvarchar](50) NULL,
	[赴湖北省其他地区地名] [nvarchar](100) NULL,
	[赴湖北省外其他地区地名] [nvarchar](100) NULL,
	[性别] [nvarchar](5) NULL,
	[年龄] [nvarchar](5) NULL,
	[目前住址] [nvarchar](100) NULL,
	[目前住址_省] [nvarchar](50) NULL,
	[目前住址_市] [nvarchar](50) NULL,
	[目前住址_县] [nvarchar](50) NULL,
	[联系方式] [nvarchar](50) NULL,
	[离桂柳时间] [nvarchar](100) NULL,
	[返桂柳时间] [nvarchar](100) NULL,
	[返回交通工具] [nvarchar](100) NULL,
	[是否在柳州] [nvarchar](50) NULL,
	[是否离开广西] [nvarchar](50) NULL,
	[是否返回柳州] [nvarchar](50) NULL,
	[是否返回广西] [nvarchar](50) NULL,
	[外出地点1] [nvarchar](100) NULL,
	[外出地点1_省] [nvarchar](50) NULL,
	[外出地点1_市] [nvarchar](50) NULL,
	[外出地点1_县] [nvarchar](50) NULL,
	[外出时间段1] [nvarchar](100) NULL,
	[外出地点2] [nvarchar](100) NULL,
	[外出时间段2] [nvarchar](100) NULL,
	[外出事由] [nvarchar](200) NULL,
	[身体状况] [nvarchar](200) NULL,
	[本人身体状况] [nvarchar](100) NULL,
	[是否来自武汉疫区] [nvarchar](5) NULL,
	[是否到达武汉疫区] [nvarchar](5) NULL,
	[是否密切接触] [nvarchar](5) NULL,
	[是否现在武汉计划返柳人员] [nvarchar](5) NULL,
	[是否留校] [nvarchar](5) NULL,
	[是否顶岗实习] [nvarchar](5) NULL,
	[可疑症状] [nvarchar](5) NULL,
	[系统时间] [datetime] NULL,
	[是否返校] [nvarchar](5) NULL,
	[计划返校时间] [nvarchar](50) NULL,
	[是否完成居家观察14天] [nvarchar](5) NULL,
	[家长是否同意返校] [nvarchar](5) NULL,
	[防控考试是否达80分] [nvarchar](5) NULL,
	[二级学院是否同意返校] [nvarchar](5) NULL,
	[居家隔离管控] [nvarchar](200) NULL,
	[备注] [nvarchar](300) NULL,
 CONSTRAINT [PK_tab5] PRIMARY KEY CLUSTERED 
(
	[tab5_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tab8](
	[tab8_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[报告日期] [nvarchar](50) NOT NULL,
	[学号工号] [nvarchar](50) NOT NULL,
	[宿舍安排] [nvarchar](50) NULL,
	[症状] [nvarchar](50) NULL,
	[后期是否离校] [nvarchar](50) NULL,
	[预计离校时间] [nvarchar](50) NULL,
 CONSTRAINT [PK_tab8] PRIMARY KEY CLUSTERED 
(
	[tab8_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[用户](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[用户] [nvarchar](50) NULL,
	[密码] [nvarchar](50) NULL,
	[姓名] [nvarchar](50) NULL,
	[权限] [nvarchar](200) NULL,
 CONSTRAINT [PK_用户] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

insert into [用户]([用户],[密码],[姓名],[权限]) values ('admin','KM/NSmnB5so=',N'管理员','1')

insert into hrm(辅导员,学号,姓名,性别,年龄,出生日期,身份证号码,在校状态,年级,班级,身份) values (N'罗老师','123922017101',N'韦远浩',N'男','28','1992-01-12','452702123922017101',N'在籍在校','2017',N'17-电气31班',N'学生')
insert into hrm(辅导员,学号,姓名,性别,年龄,出生日期,身份证号码,在校状态,年级,班级,身份) values (N'罗老师','123922017102',N'文林',N'男','24','1996-03-29','452702123922017102',N'在籍在校','2017',N'17-电气31班',N'学生')
insert into hrm(辅导员,学号,姓名,性别,年龄,出生日期,身份证号码,在校状态,年级,班级,身份) values (N'罗老师','123922017103',N'郑璐','女','23','1997-09-30','450981123922017103',N'在籍在校','2017',N'17-电气31班',N'学生')
insert into hrm(辅导员,学号,姓名,性别,年龄,出生日期,身份证号码,在校状态,年级,班级,身份) values (N'罗老师','123922017104',N'陈淇','女','24','1996-09-18','450104123922017104',N'在籍在校','2017',N'17-电气31班',N'学生')
insert into hrm(辅导员,学号,姓名,性别,年龄,出生日期,身份证号码,在校状态,年级,班级,身份) values (N'罗老师','123922017105',N'苏永杰',N'男','24','1996-03-01','452227123922017105',N'在籍在校','2017',N'17-电气31班',N'学生')
insert into hrm(辅导员,学号,姓名,性别,年龄,出生日期,身份证号码,在校状态,年级,班级,身份) values (N'罗老师','123922017106',N'李友鹏',N'男','24','1996-02-28','450923123922017106',N'在籍在校','2017',N'17-电气31班',N'学生')
insert into hrm(辅导员,学号,姓名,性别,年龄,出生日期,身份证号码,在校状态,年级,班级,身份) values (N'罗老师','123922017107',N'周健渔',N'男','23','1997-03-01','450325123922017107',N'在籍在校','2017',N'17-电气31班',N'学生')
insert into hrm(辅导员,学号,姓名,性别,年龄,出生日期,身份证号码,在校状态,年级,班级,身份) values (N'罗老师','123922017108',N'张焕令',N'男','23','1997-09-06','452122123922017108',N'在籍在校','2017',N'17-电气31班',N'学生')
insert into hrm(辅导员,学号,姓名,性别,年龄,出生日期,身份证号码,在校状态,年级,班级,身份) values (N'罗老师','123922017109',N'王仙明','女','24','1996-08-24','452227123922017109',N'在籍在校','2017',N'17-电气31班',N'学生')
insert into hrm(辅导员,学号,姓名,性别,年龄,出生日期,身份证号码,在校状态,年级,班级,身份) values (N'罗老师','123922017110',N'韦瑞昊',N'男','23','1997-07-28','450411123922017110',N'在籍在校','2017',N'17-电气31班',N'学生')