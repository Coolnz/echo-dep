package controllers

import (
	"goblog/pkg/view"
	"net/http"
)

type StarController struct {
	BaseController
}

func (star *StarController) Index(w http.ResponseWriter, r *http.Request)  {
	view.Render(w, view.D{})
}

func (star *StarController) Add(w http.ResponseWriter, r *http.Request)  {
	view.Render(w, view.D{})
}

func (star *StarController) Cancel(w http.ResponseWriter, r *http.Request)  {
	view.Render(w, view.D{})
}