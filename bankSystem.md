## 功能分析

### 用户模块

* 用户登入/登出

  login.html

  * 正常登录

    1. 输入用户名和密码，点击登录
    2. 调用HomeControllerCb的login方法，根据username,password，在Loginuser表中查询
    3. 登陆成功后，根据用户的usertype，'A'进入管理员界面，'U'进入用户界面,'D'进入员工界面

  * 忘记密码(未写)

    forget.html

    1. 输入用户名和身份证号
    2. 核实身份后，提供修改密码
    3. 更改数据库
    4. 修改成功后，重定向到登录界面

  * 注册用户

    register.html

    1. 输入信息：用户名、密码、身份证号、姓名、性别、家庭住址、联系方式、email、头像

    2. 检查信息合法性：姓名，账号，密码不能为空，身份证号18位。
    3. 生成userid，将user和userinfo信息分别插入至loginuser和userinfo表中

  * 用户登出

    点击登出按钮，清空session，指向index.do登入界面；调用HomeControllerCb的loginout

* 预约开户

  open-account.html 

  1. 用户界面点击预约开户，进入开户界面
  2. 界面输入户主名，身份证号码，支付密码
  3. 调用ControllerXx的set_Rmbbusiness方法，用户名和密码不能为空，用户存在userinfo中
  4. 随机生成20位卡号，生成信息插入到表Rmbbusiness中。
  5. 成功后跳转到用户界面index/user.do

* 贷款

  * 贷款申请
    1. 用户界面点击我要贷款，进入贷款申请页面loaning-my.html
    2. 提交身份证号、贷款类型、贷款金额、银行卡号和材料证明；贷款类型有：个人助学贷款、个人汽车贷款、个人住房贷款、个人自主贷款；材料证明可为pdf,doc,docx,xlsx格式的文件，文件可以不上传
    3. 在ControllerGq的submitApplyInf方法中核实信息完整性和正确性，正确则插入到loan表

  * 贷款进度查询

    loaning-process.html - > ControllerGq类中的loanApplySchedule方法

    1. 点击贷款进度查询进入查询页面，显示贷款信息；
    2. 根据身份证号在loan表中查询贷款信息
    3. 显示贷款人、贷款类型、申请时间和贷款进度；贷款进度有审核通过和拒绝贷款

  * 贷款归还

    1. 贷款归还业务介绍，跳转至loaning-back.html
    2. 选择指定贷款和归还选项 进行归还

  * 贷款产品介绍

    1. 主界面点击贷款产品介绍，跳转到loaning-product.html
    2. 对贷款种类和利率进行文字介绍(静态)

  * 贷款利率查询

    1. 主界面点击贷款利率，跳转到loaning-rate.html
    2. 页面选择日期，ControllerGq中的loanInterestTableQuery返回当天的贷款利率值

* 存款业务

  * 业务介绍
    1. 首页点击存款业务介绍，进入storage-service.html
    2. 显示存款业务信息
  * 利率查询
    1. 首页点击存款利率，进入storage-rate.html
    2. 选择日期，查看利率

### 管理员模块

管理员账户登录，自动定向到manage_main.html

* 角色管理

  点击角色管理，ControlleYg重定向至role-manage.html

  * 查询角色
    1. 选择要查询的目标角色：行长、出纳和贷款审核员；
    2. 点击查询按钮后，显示查询到的角色账号、权限和账号状态；可对角色账号、权限进行删除和修改
  * 添加用户
    1. 重定向至add-role.html页面
    2. 输入角色账号、初始密码和角色权限进行添加角色
  * 修改密码
    1. 重定向至manage-modify-password.html页面
    2. 输入角色账号、旧密码和新密码进行更改密码

* 利率调整

  * 储蓄业务
    1. 重定向至manage-storage-rate.html页面
    2. 展示当前利率
    3. 选择时间，输入需要修改的利率进行修改；(未写）
  * 贷款业务
    1. 重定向至manage-loan-rate.html页面
    2. 展示当前贷款利率；调用ControllerYg中的loanInterestTableQuery()方法查询
    3. 修改利率后提交;LoanInterestupdate方法更新利率

### 员工模块

员工账号登陆，进入员工界面employee-manage.html

* 储蓄业务(做的不全)

  * 存钱
    1. 重定向至save-draw-transfer.html
    2. 输入金额，提交
  * 取钱
    1. 输入金额
    2. 判断金额合法性，即是否为负，是否超出余额
    3. 提交
  * 转账
    1. 输入金额和转入账号
    2. 判断金额是否超出余额，判断对方账号是否存在，账号是否异常
    3. 提交
  * 账号管理
    1. 进入account-manage.html界面
    2. 展示户主名，银行卡号，开卡时间，账户状态
    3. 可对账户进行注销和挂失
    4. 可新开卡和修改密码

* 贷款业务

  * 贷款业务说明

    重定向至loaning-back.html

  * 业务介绍

    重定向至loaning-product.html

  * 贷款审批

    1. 重定向至loan-approval.html
    2. 输入姓名和身份账号码可查询贷款信息。
    3. 分页展示申请人、身份证号码、贷款金额、银行卡号、审核状态