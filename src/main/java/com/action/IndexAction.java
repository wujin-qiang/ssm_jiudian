package com.action;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Article;
import com.entity.Cart;
import com.entity.Cate;
import com.entity.Fcart;
import com.entity.Fcate;
import com.entity.Fitems;
import com.entity.Foods;
import com.entity.Forders;
import com.entity.Orders;
import com.entity.Rooms;
import com.entity.Users;
import com.service.ArticleService;
import com.service.BooksService;
import com.service.CartService;
import com.service.CateService;
import com.service.FcartService;
import com.service.FcateService;
import com.service.FitemsService;
import com.service.FoodsService;
import com.service.FordersService;
import com.service.OrdersService;
import com.service.RoomsService;
import com.service.UsersService;
import com.util.PageHelper;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping("/index")
public class IndexAction extends BaseAction {

	@Autowired
	@Resource
	private UsersService usersService;
	@Autowired
	@Resource
	private ArticleService articleService;
	@Autowired
	@Resource
	private CateService cateService;
	@Autowired
	@Resource
	private RoomsService roomsService;
	@Autowired
	@Resource
	private CartService cartService;
	@Autowired
	@Resource
	private OrdersService ordersService;
	@Autowired
	@Resource
	private FcateService fcateService;
	@Autowired
	@Resource
	private FoodsService foodsService;
	@Autowired
	@Resource
	private FcartService fcartService;
	@Autowired
	@Resource
	private FordersService fordersService;
	@Autowired
	@Resource
	private FitemsService fitemsService;
	@Autowired
	@Resource
	private BooksService booksService;

	// 公共方法 提供公共查询数据
	private void front() {
		this.getRequest().setAttribute("title", "青山酒店餐饮住宿管理信息系统");
		List<Cate> cateList = this.cateService.getAllCate();
		this.getRequest().setAttribute("cateList", cateList);
		List<Fcate> fcateList = this.fcateService.getAllFcate();
		this.getRequest().setAttribute("fcateList", fcateList);
		List<Foods> foodsList = this.foodsService.getHotFoods();
		this.getRequest().setAttribute("hotList", foodsList);
	}

	// 首页显示
	@RequestMapping("index.action")
	public String index() {
		this.front();
		List<Rooms> roomsList = this.roomsService.getFrontRooms();
		this.getRequest().setAttribute("roomsList", roomsList);
		List<Foods> foodsList = this.foodsService.getFrontFoods();
		this.getRequest().setAttribute("foodsList", foodsList);
		return "users/index";
	}

	// 公告
	@RequestMapping("article.action")
	public String article(String number) {
		this.front();
		List<Article> tempList = this.articleService.getAllArticle();
		PageHelper.getIndexPage(tempList, "article", "article", null, 10, number, this.getRequest());
		return "users/article";
	}

	// 阅读公告
	@RequestMapping("read.action")
	public String read(String id) {
		this.front();
		Article article = this.articleService.getArticleById(id);
		article.setHits("" + (Integer.parseInt(article.getHits()) + 1));
		this.articleService.updateArticle(article);
		this.getRequest().setAttribute("article", article);
		return "users/read";
	}

	@RequestMapping("rooms.action")
	public String rooms(String number) {
		this.front();
		List<Rooms> roomsList = this.roomsService.getAllRooms();
		PageHelper.getIndexPage(roomsList, "rooms", "rooms", null, 12, number, this.getRequest());
		return "users/roomslist";
	}

	@RequestMapping("roomscate.action")
	public String roomscate(String number) {
		this.front();
		String id = this.getRequest().getParameter("id");
		Rooms rooms = new Rooms();
		rooms.setCateid(id);
		List<Rooms> roomsList = this.roomsService.getRoomsByCond(rooms);
		PageHelper.getIndexPage(roomsList, "rooms", "rooms", null, 12, number, this.getRequest());
		return "users/roomslist";
	}

	@RequestMapping("roomsdetail.action")
	public String roomsdetail(String id) {
		this.front();
		Rooms rooms = this.roomsService.getRoomsById(id);
		this.getRequest().setAttribute("rooms", rooms);
		return "users/roomsdetail";
	}

	@RequestMapping("foods.action")
	public String foods(String number) {
		this.front();
		List<Foods> foodsList = this.foodsService.getAllFoods();
		PageHelper.getIndexPage(foodsList, "foods", "foods", null, 12, number, this.getRequest());
		return "users/foodslist";
	}

	@RequestMapping("foodscate.action")
	public String foodscate(String number) {
		this.front();
		String id = this.getRequest().getParameter("id");
		Foods foods = new Foods();
		foods.setFcateid(id);
		List<Foods> foodsList = this.foodsService.getFoodsByCond(foods);
		PageHelper.getIndexPage(foodsList, "foods", "foods", null, 12, number, this.getRequest());
		return "users/foodslist";
	}

	@RequestMapping("foodsdetail.action")
	public String foodsdetail(String id) {
		this.front();
		Foods foods = this.foodsService.getFoodsById(id);
		this.getRequest().setAttribute("foods", foods);
		return "users/foodsdetail";
	}

	// 准备登录
	@RequestMapping("preLogin.action")
	public String prelogin() {
		this.front();
		return "users/login";
	}

	// 用户登录
	@RequestMapping("login.action")
	public String login() {
		this.front();
		String username = this.getRequest().getParameter("username");
		String password = this.getRequest().getParameter("password");
		Users u = new Users();
		u.setUsername(username);
		List<Users> usersList = this.usersService.getUsersByCond(u);
		if (usersList.size() == 0) {
			this.getSession().setAttribute("message", "用户名不存在");
			return "redirect:/index/preLogin.action";
		} else {
			Users users = usersList.get(0);
			if (password.equals(users.getPassword())) {
				this.getSession().setAttribute("userid", users.getUsersid());
				this.getSession().setAttribute("username", users.getUsername());
				this.getSession().setAttribute("users", users);
				return "redirect:/index/index.action";
			} else {
				this.getSession().setAttribute("message", "密码错误");
				return "redirect:/index/preLogin.action";
			}
		}
	}

	// 准备注册
	@RequestMapping("preReg.action")
	public String preReg() {
		this.front();
		return "users/register";
	}

	// 用户注册
	@RequestMapping("register.action")
	public String register(Users users) {
		this.front();
		Users u = new Users();
		u.setUsername(users.getUsername());
		List<Users> usersList = this.usersService.getUsersByCond(u);
		if (usersList.size() == 0) {
			users.setRegdate(VeDate.getStringDateShort());
			this.usersService.insertUsers(users);
		} else {
			this.getSession().setAttribute("message", "用户名已存在");
			return "redirect:/index/preReg.action";
		}

		return "redirect:/index/preLogin.action";
	}

	// 退出登录
	@RequestMapping("exit.action")
	public String exit() {
		this.front();
		this.getSession().removeAttribute("userid");
		this.getSession().removeAttribute("username");
		this.getSession().removeAttribute("users");
		return "index";
	}

	// 准备修改密码
	@RequestMapping("prePwd.action")
	public String prePwd() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		return "users/editpwd";
	}

	// 修改密码
	@RequestMapping("editpwd.action")
	public String editpwd() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		String password = this.getRequest().getParameter("password");
		String repassword = this.getRequest().getParameter("repassword");
		Users users = this.usersService.getUsersById(userid);
		if (password.equals(users.getPassword())) {
			users.setPassword(repassword);
			this.usersService.updateUsers(users);
		} else {
			this.getSession().setAttribute("message", "旧密码错误");
			return "redirect:/index/prePwd.action";
		}
		return "redirect:/index/prePwd.action";
	}

	@RequestMapping("usercenter.action")
	public String usercenter() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		return "users/usercenter";
	}

	@RequestMapping("userinfo.action")
	public String userinfo() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		this.getSession().setAttribute("users", this.usersService.getUsersById(userid));
		return "users/userinfo";
	}

	@RequestMapping("personal.action")
	public String personal(Users users) {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		this.usersService.updateUsers(users);
		return "redirect:/index/userinfo.action";
	}

	// 添加产品到购物车
	@RequestMapping("addcart.action")
	public String addcart() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		if(VeDate.strToDate(getRequest().getParameter("begindate")).getTime()<VeDate.strToDate(VeDate.getStringDateShort()).getTime()
		||VeDate.strToDate(getRequest().getParameter("enddate")).getTime()<VeDate.strToDate(VeDate.getStringDateShort()).getTime()
		||VeDate.strToDate(getRequest().getParameter("enddate")).getTime()<VeDate.strToDate(getRequest().getParameter("begindate")).getTime()){
			this.getSession().setAttribute("message", "预订开始日期必须大于等于今日，预订结束日期必须大于预订开始日期");
			return  "redirect:/index/index.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		Cart cart = new Cart();
		cart.setRoomsid(getRequest().getParameter("roomsid"));
		List<Cart> list= cartService.getCartByCondIsUse(cart);
		for (Cart c:list) {
			if((VeDate.strToDate(c.getEnddate()).getTime()>=VeDate.strToDate(getRequest().getParameter("begindate")).getTime()
			  &&VeDate.strToDate(c.getBegindate()).getTime()<=VeDate.strToDate(getRequest().getParameter("begindate")).getTime())
					||(VeDate.strToDate(c.getBegindate()).getTime()<=VeDate.strToDate(getRequest().getParameter("enddate")).getTime()&&
					VeDate.strToDate(c.getEnddate()).getTime()>=VeDate.strToDate(getRequest().getParameter("enddate")).getTime())
					||(VeDate.strToDate(c.getBegindate()).getTime()<=VeDate.strToDate(getRequest().getParameter("begindate")).getTime()&&
					VeDate.strToDate(c.getEnddate()).getTime()>=VeDate.strToDate(getRequest().getParameter("enddate")).getTime())
					||(VeDate.strToDate(c.getBegindate()).getTime()>=VeDate.strToDate(getRequest().getParameter("begindate")).getTime()&&
					VeDate.strToDate(c.getEnddate()).getTime()<=VeDate.strToDate(getRequest().getParameter("enddate")).getTime())
			){
				this.getSession().setAttribute("message", "该客房已经被预订，请重新选择客房");
				return  "redirect:/index/index.action";
			}
		}
		cart.setAddtime(VeDate.getStringDateShort());
		cart.setRoomsid(getRequest().getParameter("roomsid"));
		cart.setPrice(getRequest().getParameter("price"));
		cart.setBegindate(getRequest().getParameter("begindate"));
		cart.setEnddate(getRequest().getParameter("enddate"));
		cart.setCarroomflag("0");
		cart.setUsersid(userid);
		this.cartService.insertCart(cart);
		return "redirect:/index/cart.action";
	}

	@RequestMapping("addfcart.action")
	public String addfcart() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		Fcart cart = new Fcart();
		cart.setAddtime(VeDate.getStringDateShort());
		cart.setFoodsid(getRequest().getParameter("foodsid"));
		cart.setPrice(getRequest().getParameter("price"));
		cart.setNum(getRequest().getParameter("num"));
		cart.setUsersid(userid);
		this.fcartService.insertFcart(cart);
		return "redirect:/index/fcart.action";
	}

	// 查看购物车
	@RequestMapping("cart.action")
	public String cart() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		Cart cart = new Cart();
		cart.setUsersid(userid);
		List<Cart> cartList = this.cartService.getCartByCond(cart);
		this.getRequest().setAttribute("cartList", cartList);
		return "users/cart";
	}

	@RequestMapping("fcart.action")
	public String fcart() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		Fcart cart = new Fcart();
		cart.setUsersid(userid);
		List<Fcart> cartList = this.fcartService.getFcartByCond(cart);
		this.getRequest().setAttribute("cartList", cartList);
		return "users/fcart";
	}

	// 删除购物车中的产品
	@RequestMapping("deletecart.action")
	public String deletecart(String id) {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		this.cartService.deleteCart(id);
		return "redirect:/index/cart.action";
	}

	@RequestMapping("deletefcart.action")
	public String deletefcart(String id) {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		this.fcartService.deleteFcart(id);
		return "redirect:/index/fcart.action";
	}

	@RequestMapping("checkout.action")
	public String checkout() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		Cart cart = new Cart();
		cart.setUsersid(userid);
		List<Cart> cartList = this.cartService.getCartByCond(cart);
		String ordercode = "ROS" + VeDate.getStringDatex();
		for (Cart x : cartList) {
			Orders orders = new Orders();
			orders.setOrdercode(ordercode);
			orders.setOrdersid(UUID.randomUUID().toString().replaceAll("-", ""));
			orders.setPrice(x.getPrice());
			orders.setRoomsid(x.getRoomsid());
			orders.setStatus("未入住");
			orders.setUsersid(userid);
			orders.setBegindate(x.getBegindate());
			this.ordersService.insertOrders(orders);
			x.setCarroomflag("1");
			this.cartService.updateCartType(x);
		}
		return "redirect:/index/roomsorders.action";
	}

	@RequestMapping("roomsorders.action")
	public String roomsorders(String number) {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		Orders orders = new Orders();
		orders.setUsersid(userid);
		List<Orders> list = this.ordersService.getOrdersByCond(orders);
		PageHelper.getIndexPage(list, "orders", "roomsorders", null, 10, number, this.getRequest());
		return "users/roomsorders";
	}

	@RequestMapping("fcheckout.action")
	public String fcheckout() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		Fcart cart = new Fcart();
		cart.setUsersid(userid);
		List<Fcart> cartList = this.fcartService.getFcartByCond(cart);
		String ordercode = "FOS" + VeDate.getStringDatex();
		double total = 0;
		for (Fcart x : cartList) {
			Fitems items = new Fitems();
			items.setFitemsid(UUID.randomUUID().toString().replaceAll("-", ""));
			items.setFoodsid(x.getFoodsid());
			items.setNum(x.getNum());
			items.setOrdercode(ordercode);
			items.setPrice(x.getPrice());
			this.fitemsService.insertFitems(items);
			total += Double.parseDouble(items.getNum()) * Double.parseDouble(items.getPrice());
			Foods foods = this.foodsService.getFoodsById(x.getFoodsid());
			foods.setSellnum("" + (Integer.parseInt(foods.getSellnum()) + Integer.parseInt(x.getNum())));
			this.foodsService.updateFoods(foods);
			this.fcartService.deleteFcart(x.getFcartid());
		}
		Forders orders = new Forders();
		orders.setAddtime(VeDate.getStringDateShort());
		orders.setOrdercode(ordercode);
		orders.setStatus("未结算");
		orders.setTotal("" + VeDate.getDouble(total));
		orders.setUsersid(userid);
		this.fordersService.insertForders(orders);
		return "redirect:/index/foodsrders.action";
	}

	@RequestMapping("foodsrders.action")
	public String foodsrders(String number) {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		Forders orders = new Forders();
		orders.setUsersid(userid);
		List<Forders> list = this.fordersService.getFordersByCond(orders);
		PageHelper.getIndexPage(list, "forders", "foodsrders", null, 10, number, this.getRequest());
		return "users/foodsrders";
	}

	@RequestMapping("details.action")
	public String details() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		Fitems items = new Fitems();
		items.setOrdercode(this.getRequest().getParameter("id"));
		List<Fitems> detailsList = this.fitemsService.getFitemsByCond(items);
		this.getRequest().setAttribute("detailsList", detailsList);
		return "users/orderdetail";
	}

}
