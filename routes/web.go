package routes

import (
	"net/http"

	"github.com/gorilla/mux"

	"goblog/app/http/controllers"
	"goblog/app/http/middlewares"
)

// RegisterWebRoutes 注册网页相关路由
func RegisterWebRoutes(r *mux.Router) {

	// 静态页面
	pc := new(controllers.PagesController)
	r.NotFoundHandler = http.HandlerFunc(pc.NotFound)
	r.HandleFunc("/about", pc.About).Methods("GET").Name("about")

	// 文章相关页面
	ac := new(controllers.ArticlesController)
	// 首页文章列表
	r.HandleFunc("/", ac.Index).Methods("GET").Name("home")
	r.HandleFunc("/articles", ac.Index).Methods("GET").Name("articles.index")

	// 展示文章详情
	r.HandleFunc("/articles/{id:[0-9]+}", ac.Show).Methods("GET").Name("articles.show")
	// 展示新建文章页面
	r.HandleFunc("/articles/create", middlewares.Auth(ac.Create)).Methods("GET").Name("articles.create")
	// 保存文章
	r.HandleFunc("/articles", middlewares.Auth(ac.Store)).Methods("POST").Name("articles.store")
	// 展示修改文章页面
	r.HandleFunc("/articles/{id:[0-9]+}/edit", middlewares.Auth(ac.Edit)).Methods("GET").Name("articles.edit")
	// 修改文章
	r.HandleFunc("/articles/{id:[0-9]+}", middlewares.Auth(ac.Update)).Methods("POST").Name("articles.update")
	// 删除文章
	r.HandleFunc("/articles/{id:[0-9]+}/delete", middlewares.Auth(ac.Delete)).Methods("POST").Name("articles.delete")

	// 文章分类
	cc := new(controllers.CategoriesController)
	r.HandleFunc("/categories/create", middlewares.Auth(cc.Create)).Methods("GET").Name("categories.create")
	r.HandleFunc("/categories", middlewares.Auth(cc.Store)).Methods("POST").Name("categories.store")
	r.HandleFunc("/categories/{id:[0-9]+}", cc.Show).Methods("GET").Name("categories.show")

	// 用户认证
	auc := new(controllers.AuthController)
	r.HandleFunc("/auth/register", middlewares.Guest(auc.Register)).Methods("GET").Name("auth.register")
	r.HandleFunc("/auth/do-register", middlewares.Guest(auc.DoRegister)).Methods("POST").Name("auth.doregister")
	r.HandleFunc("/auth/login", middlewares.Guest(auc.Login)).Methods("GET").Name("auth.login")
	r.HandleFunc("/auth/dologin", middlewares.Guest(auc.DoLogin)).Methods("POST").Name("auth.dologin")
	r.HandleFunc("/auth/logout", middlewares.Auth(auc.Logout)).Methods("POST").Name("auth.logout")

	// 用户信息
	uc := new(controllers.UserController)
	r.HandleFunc("/users/{id:[0-9]+}", uc.Show).Methods("GET").Name("users.show")

	// 静态资源
	r.PathPrefix("/css/").Handler(http.FileServer(http.Dir("./public")))
	r.PathPrefix("/js/").Handler(http.FileServer(http.Dir("./public")))

	// 迁移数据

	// --- 全局中间件 ---

	// 开始会话
	r.Use(middlewares.StartSession)
}
