
var projectName = '汉服推广网站';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.html'
},

{
	name: '我的订单',
	url: '../shop-order/list.html'
},

{
	name: '我的地址',
	url: '../shop-address/list.html'
},

{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '商品',
	url: './pages/shangpin/list.html'
}, 
{
	name: '图文动态区',
	url: './pages/tuwendongtaiqu/list.html'
}, 
{
	name: '视频动态区',
	url: './pages/shipindongtaiqu/list.html'
}, 
{
	name: '近期活动',
	url: './pages/jinqihuodong/list.html'
}, 

{
	name: '汉服交流',
	url: './pages/forum/list.html'
}, 
{
	name: '汉服知识',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/springboot68bv8/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


cartFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"商品","menuJump":"列表","tableName":"shangpin"}],"menu":"商品管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"图文动态区","menuJump":"列表","tableName":"tuwendongtaiqu"}],"menu":"图文动态区管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"视频动态区","menuJump":"列表","tableName":"shipindongtaiqu"}],"menu":"视频动态区管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"近期活动","menuJump":"列表","tableName":"jinqihuodong"}],"menu":"近期活动管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"活动报名","menuJump":"列表","tableName":"huodongbaoming"}],"menu":"活动报名管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"社团","menuJump":"列表","tableName":"shetuan"}],"menu":"社团管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"活动票券","menuJump":"列表","tableName":"huodongpiaoquan"}],"menu":"活动票券管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汉服交流","tableName":"forum"}],"menu":"汉服交流"},{"child":[{"buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"汉服知识","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"已完成订单","tableName":"orders/已完成"},{"buttons":["新增","查看","修改","删除","确认收货"],"menu":"已发货订单","tableName":"orders/已发货"},{"buttons":["新增","查看","修改","删除"],"menu":"未支付订单","tableName":"orders/未支付"},{"buttons":["新增","查看","修改","删除"],"menu":"已取消订单","tableName":"orders/已取消"},{"buttons":["新增","查看","修改","删除","发货"],"menu":"已支付订单","tableName":"orders/已支付"},{"buttons":["新增","查看","修改","删除"],"menu":"已退款订单","tableName":"orders/已退款"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"商品列表","menuJump":"列表","tableName":"shangpin"}],"menu":"商品模块"},{"child":[{"buttons":["查看"],"menu":"图文动态区列表","menuJump":"列表","tableName":"tuwendongtaiqu"}],"menu":"图文动态区模块"},{"child":[{"buttons":["查看"],"menu":"视频动态区列表","menuJump":"列表","tableName":"shipindongtaiqu"}],"menu":"视频动态区模块"},{"child":[{"buttons":["查看","报名"],"menu":"近期活动列表","menuJump":"列表","tableName":"jinqihuodong"}],"menu":"近期活动模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","新增","修改","删除"],"menu":"图文动态区","menuJump":"列表","tableName":"tuwendongtaiqu"}],"menu":"图文动态区管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"视频动态区","menuJump":"列表","tableName":"shipindongtaiqu"}],"menu":"视频动态区管理"},{"child":[{"buttons":["查看"],"menu":"活动报名","menuJump":"列表","tableName":"huodongbaoming"}],"menu":"活动报名管理"},{"child":[{"buttons":["查看","新增"],"menu":"社团","menuJump":"列表","tableName":"shetuan"}],"menu":"社团管理"},{"child":[{"buttons":["查看"],"menu":"活动票券","menuJump":"列表","tableName":"huodongpiaoquan"}],"menu":"活动票券管理"}],"frontMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"商品列表","menuJump":"列表","tableName":"shangpin"}],"menu":"商品模块"},{"child":[{"buttons":["查看"],"menu":"图文动态区列表","menuJump":"列表","tableName":"tuwendongtaiqu"}],"menu":"图文动态区模块"},{"child":[{"buttons":["查看"],"menu":"视频动态区列表","menuJump":"列表","tableName":"shipindongtaiqu"}],"menu":"视频动态区模块"},{"child":[{"buttons":["查看","报名"],"menu":"近期活动列表","menuJump":"列表","tableName":"jinqihuodong"}],"menu":"近期活动模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}