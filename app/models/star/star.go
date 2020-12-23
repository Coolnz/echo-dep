package star

import "goblog/app/models"

type Star struct {
	models.BaseModel

	UserId    uint64 `gorm:"not null;index"`
	ArticleId uint64 `gorm:"not null;index"`
}
