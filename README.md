# 酒店管理系统

利用 java web 技术开发一个酒店管理系统

---

## 功能要求（TODO)：

### 1. 基础设置
  - [X ?] 客房类型设置
    - 设置客房分类信息：客房类型、房价、空余房间数—经理
    <代码实现>：
             @前端:将输入的值传入dao中的方法
             @sql:insert into Room_Type values(?,?,?);
  - [X ?] 客房信息设置
    - 房间号，房间类型、楼层、朝向、房间特征描述、房间状态是否空置等—经理
    <代码实现>：
             @前端:将输入的值传入dao中的方法
             @sql:insert into Room_Info values(?,?,?,?,?);
  - [X ?] 账号设置
    - 添加删除修改各类角色账号—经理
    <代码实现>：
             @前端:
                  添加：将输入的值传入dao中的方法
                  删除：给后端一个要删除对象的用户名
                  修改：将修改后的值传入dao中的方法
             @sql:
                  添加：insert into  Staff values(?,?,?)
                  删除：delete from  Customer where username=?
                  修改：update Customer set pass=?,position=? where username=?
                      
### 2. 在线预订
  - [X ] 注册与登录功能
    - 录入身份证等个人基本信息—订房客户
    <代码实现>：
              @前端：
                   注册：将输入的值传入dao中的方法
                   登录：将用户名和密码传入dao中的方法，后端返回一个boolean型变量判断是否成功。
              @sql：
                   注册：insert into Customer values(?,?,?,?,?)   
                   登录：select pass from Customer  where username=?
  - [X ] 在线浏览房间信息
    - 可以查询酒店房间信息，按时间搜索有效空余房间—订房客户
    <代码实现>：
              @前端：
                   查询所有房间信息
                   按时间查询空余房间信息：给后端一个in_day和out_day,后端返回一个空余房间信息数组
              @sql：     
                   select room_id,floors,face,feature,kind from Room_Info;
                   select * from Room_Info where (in_day is null and out_day is null) or (out_day<'2017-02-11' or in_day>'2017-02-14')
                                      order by kind asc;
    
  - [ ] 预订
    - 凭借身份证号在线预订空余房间，录入入住和离店日期，房价、房间类型，一旦预订将锁定直至入住日。—订房客户
    <代码实现>：
              @前端：将预订单所需信息传入后端给的dao方法中，后端将预订单信息存入预订单表中。
              @sql: insert into Pre_Book values(?,?,?,?,?,?);
### 3. 前台管理
  - [ ] 预订入住
    - 根据身份证号直接调出预订单，并按客户要求如楼层、朝向等分配房间直接入住。--前台接待员
    <代码实现>：
              @前端：输入身份证号给后端的dao方法返回一个可用房间的数组，点击确认传给后端账单信息保存至账单表
                     并改动房间信息状态。
              @sql： select * from Room_Info where (in_day is null and out_day is null) or (out_day<'2017-02-11' or in_day>'2017-02-14')
                                      order by kind asc;
                    insert into Bill values(?,?,?,?,?,?,?);
                    update Room_Info set in_day=?,out_day=? where room_id=?;
                    
  - [ ] 退房管理
    - 将房间设置为可用，显示结账账单。--前台接待员
    <代码实现>：
              @前端：输入用户身份证号,房间号，查询账单信息，后端返回一个账单对象，点击确认，后端删除账单信息。
              @sql：select * from Bill where id=?;
                    delete from Bill where id=?;
                    update Room_Info set in_day=null,out_day=null,where room_id=?;
                    
### 4. 客房管理
  - [ ] 可用房查询
    - 根据日期、房型查阅可用房间--前台接待员
    <代码实现>：
             @sql：  select * from Room_Info where (in_day is null and out_day is null) or (out_day<'2017-02-11' or in_day>'2017-02-14')
                                     order by kind asc;
                    select * from Room_Info where (in_day is null and out_day is null) or (out_day<'2017-02-11' or in_day>'2017-02-14') 
                   and kind=? order by room_id asc;
  - [ ] 房态统计
    - 用表格或图形显示整个酒店房间状态，可以分客房类型、楼层朝向等进行分类查询统计。—经理
    <代码实现>：
             @sql：  select * from Room_Info where (in_day is null and out_day is null) or (out_day<'2017-02-11' or in_day>'2017-02-14')
                   and floors =? order by kind asc;
                     select * from Room_Info where (in_day is null and out_day is null) or (out_day<'2017-02-11' or in_day>'2017-02-14') 
                   and face =? order by kind asc;
                    select * from Room_Info where (in_day is null and out_day is null) or (out_day<'2017-02-11' or in_day>'2017-02-14')
                   and kind=? order by room_id asc;
### 5. 访客浏览
  - [ ] 浏览
    - 查看酒店简介、房间简介、剩余房间数等。不需要登录。 ---访客
    <代码实现>：
             @sql： select room_id,kind,floors,face,feature from Room_Info;
                   select sum(room_id) from Room_Info where in_day=out_day=null or ?>out_day or ?<in_day 
                   and floors =? ;
                   select sum(room_id) from Room_Info where in_day=out_day=null or ?>out_day or ?<in_day 
                   and face =? ;
                   select sum(room_id) from Room_Info where in_day=out_day=null or ?>out_day or ?<in_day 
                   and kind=?;
    

## ~~功能扩展~~

### 1. 预订管理
  - [ ] 增加经理控房功能
    - 销售旺季，为防止无计划低价销售，经理可以保留一部分房间，在适当的时候再销售—经理
  - [ ] 预订查询和修改
    - 可以查询客户预订情况并进行修改—经理
  - [ ] 团体预订
    - 可以维护团队信息，包括人数、团队名、团队描述、预订房间类型、预订数量等—前台接待员和经理
### 2. 在线预订
  - [ ] 订单管理
    - 查看自己的所有订单信息—订房客户
  - [ ] 评价
    - 可以在入住结束后进行评价并打分，在线预订时，其他客户可以查看该酒店的评价信息和每个类型房间的评分—订房客户
### 3. 前台管理
  - [ ] 散客入住
    - 未预订直接入住，需要登记客人基本信息。录入入住日期和离店日期，房间号，价格等。--前台接待员
  - [ ] 团队入住
    - 团队一般都需要预订，对预订的团队入住进行管理，并分配房间。--前台接待员
  - [ ] 客人续住
    - 可以进行续住操作，修改离店日期。--前台接待员
  - [ ] 客人换房
    - 可以在入住后更换房间--前台接待员
  - [ ] 团队退房
    - 可以完成团队集体统一退房操作，快速完成该团所有房间的退房。--前台接待员
### 4. 客房管理
  - [ ] 房态管理
    - 可以直接对当日酒店的房态图进行操作，如开房、更改客房状态、退房等--前台接待员
  - [ ] 销售月报表
    - 统计一个月中每日的分类型房间出售数量、单价、总价。—经理
  - [ ] 在住客人报表
    - 可以统计查询分析在住房客的信息。—经理
  - [ ] 在住团队报表
    - 查询统计某团队的在住房客信息。—经理
  - [ ] 维修管理
    - 发现客房存在问题，设置故障维修，等候维修结束后，可以重新转为正常客房。--前台接待员