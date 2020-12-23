package controllers

import (
	"encoding/json"
	"goblog/app/models/article"
	"goblog/app/models/star"
	"goblog/pkg/auth"
	"goblog/pkg/view"
	"net/http"
	"strconv"
)

type StarController struct {
	BaseController
}

// 已收藏文章列表
func (sc *StarController) Index(w http.ResponseWriter, r *http.Request) {
	// 判断用户是否登录
	isLogin := auth.Check()

	if !isLogin {
		view.RenderSimple(w, view.D{}, "auth.login")
	} else {
		userId := auth.User().ID
		// 1. 获取结果集
		articles, pagerData, err := article.GetStaredArticleListByUserId(r, 15, userId)

		if err != nil {
			sc.ResposeForSQLError(w, err)
		} else {

			// ---  2. 加载模板 ---
			view.Render(w, view.D{
				"Articles":  articles,
				"PagerData": pagerData,
			}, "stars.index", "articles._article_meta")
		}
	}
}

func (*StarController) Add(w http.ResponseWriter, r *http.Request) {
	currentUser := auth.User()
	articleId, _ := strconv.ParseUint(r.PostFormValue("articleId"), 10, 0)
	_star := star.Star{
		UserId:    currentUser.ID,
		ArticleId: articleId,
	}

	// 创建文章
	_star.Create()
	if _star.ID > 0 {
		ResponseJson(w, r, JsonResult{
			Code: 200,
			Msg:  "success",
		})
	} else {
		ResponseJson(w, r, JsonResult{
			Code: 400,
			Msg:  "error",
		})
	}
}

// 取消收藏
func (*StarController) Cancel(w http.ResponseWriter, r *http.Request) {
	currentUser := auth.User()
	articleId, _ := strconv.ParseUint(r.PostFormValue("articleId"), 10, 0)
	_star := star.Star{
		UserId:    currentUser.ID,
		ArticleId: articleId,
	}

	// 创建文章
	row, _ := _star.Delete()
	if row > 0 {
		ResponseJson(w, r, JsonResult{
			Code: 200,
			Msg:  "success",
		})
	} else {
		ResponseJson(w, r, JsonResult{
			Code: 400,
			Msg:  "error",
		})
	}
}

type JsonResult struct {
	Code int    `json:"code"`
	Msg  string `json:"msg"`
	//Data interface ``
}

func ResponseJson(w http.ResponseWriter, r *http.Request, jr JsonResult) {
	msg, err := json.Marshal(jr)

	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	w.Write(msg)
}
