一、HTML + CSS
1.能看到标签的结构
* 父子关系
<p>
    <span>123</span>
</p>

* 属性
<img src="images/01.png">

2.了解元素（标签）的类型
1> block：块级
* 独占一行
* 能随意修改尺寸

2> inline：行内
* 多个行内元素能显示在同一行
* 不能修改尺寸，尺寸取决于内容的多少

3> inline-block：行内-块级
* 多个行内-块级元素能显示在同一行
* 能随意修改尺寸
* 不设置尺寸，默认的尺寸取决于内容的多少

3.了解常见的属性
1> font-size : 字体大小
2> color: 文字颜色
3> background: 背景
4> display: 显示的类型（block、inline、inline-block、none）
5> padding
6> margin
7> border
8> width
9> height

4.脱离标准流
1> float: left\right
2> 绝对定位
* position : absolute;
* right: 0px;
* bottom: 0px;
// 右下角
// 如果想相对于父节点进行定位，最好设置父节点的position为relative
// 原则：子绝父相

5.常见的选择器
1> 标签选择器：tagName
2> 类选择器：.className
3> id选择器：#id
4> 后代选择器(多个选择器之间用空格隔开)：tagName .className .className tagName
5> 群组选择器(多个选择器之间用逗号,隔开)：tagName, .className, tagName, .className
6> 直接后代选择器(多个选择器之间用大于号>隔开)：tagName > .className > .className > tagName
7> 属性选择器：tagName[arrtName="attrValue"]
8> 选择器组合（多个选择器粘在一起）：tagName.className
9> 伪类
* tagName:hover
* .className:hover
* tagName.className tagName:hover

6.进阶
* 百度

二、JS
1.节点的基本操作（CRUD）
* C（Create）：
var div = document.createElement('div');
document.body.appendChild(div);

* R（Read）：
var div = document.getElementById('logo');
var div = document.getElementsByTagName('div')[0];
var div = document.getElementsByClassName('logo')[0];

* U（Update）：
var img = document.getElementById('logo');
img.src = 'images/01.png';

* D（Delete）：
var img = document.getElementById('logo');
img.parentNode.removeChild(img);

2.事件绑定
1> 推荐做法
var button = document.getElementById('login');
button.onclick = function() {
    // 实现点击按钮想做的事情
};

2> 直接写在标签内部
<button onclick="var age = 20; alert(age);">登录</button>

3> 不常用
function login() {
    // 实现点击按钮想做的事情
}

var button = document.getElementById('login');
button.onclick = login;

三、jQuery
1.通过选择器查找元素
* $('选择器')
* jQuery支持绝大部分的CSS选择器

2.属性操作
* 获得属性：$('选择器').attr('属性名');
* 设置属性：$('选择器').attr('属性名', '属性值');

3.显示和隐藏
* 显示：$('选择器').show();
* 隐藏：$('选择器').hide();
* 显示和隐藏来回切换：$('选择器').toggle();

4.事件绑定
* 点击事件(常用)
$('选择器').click(function() {
    // 实现点击按钮想做的事情
}).hide();
// 先给节点绑定事件，再隐藏

* 点击事件(不常用)
function login() {
    // 实现点击按钮想做的事情
}
$('选择器').click(login);

四、参考手册
1.www.w3school.com.cn
2.http://www.w3school.com.cn/jquery/jquery_reference.asp
3.http://www.php100.com/manual/jquery/

五、HTML5框架（大部分都是为移动设备而写的）
1.概念
* 有了HTML5框架，编写简易的几行JS代码，就能实现非常漂亮的手机界面
* HTML5框架封装了大量的DOM节点操作，封装了大量的CSS样式
* 对JS的要求比较高，对CSS的要求并不高

2.常见的HTML5框架
* PhoneGap
* jQuery Mobile
* sencha-touch