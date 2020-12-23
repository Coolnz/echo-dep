package star

import (
	"goblog/pkg/logger"
	"goblog/pkg/model"
	"gorm.io/gorm"
	"strconv"
)

// 收藏
func (star *Star) Create() (err error) {

	model.DB.Transaction(func(tx *gorm.DB) error {
		if err = model.DB.Create(&star).Error; err != nil {
			logger.LogError(err)
			return err
		}

		if err = model.DB.Table("articles").Where("id = ?", star.ArticleId).Where("user_id = ?", star.UserId).Update("is_stared", 1).Error; err != nil {
			logger.LogError(err)
			return err
		}

		return nil
	})

	return err
}

// 取消收藏
func (star *Star) Delete() (rowsAffected int64, err error) {
	//result := model.DB.Where("user_id = ?", star.UserId).Where("article_id = ?", star.ArticleId).Delete(&star)
	//
	//if err = result.Error; err != nil {
	//	logger.LogError(err)
	//	return 0, err
	//}
	//// 修改article表中is_stared字段
	//model.DB.Table("articles").Where("id = ?", star.ArticleId).Where("user_id = ?", star.UserId).Update("is_stared", 0)
	//
	//return result.RowsAffected, nil

	result := model.DB.Where("user_id = ?", star.UserId).Where("article_id = ?", star.ArticleId).Delete(&star)

	model.DB.Transaction(func(tx *gorm.DB) error {
		if err = result.Error; err != nil {
			logger.LogError(err)
			return err
		}

		if err = model.DB.Table("articles").Where("id = ?", star.ArticleId).Where("user_id = ?", star.UserId).Update("is_stared", 0).Error; err != nil {
			logger.LogError(err)
			return err
		}

		return nil
	})

	return result.RowsAffected, nil
}

// 判断文章是否已收藏
func IsStared(userId uint64, articleId string) (bool, error) {
	var stars []Star
	Id, _ := strconv.ParseUint(articleId, 10, 0)
	err := model.DB.Where("user_id = ?", userId).Where("article_id = ?", Id).First(&stars).Error

	if err != nil {
		return false, nil
	}

	return true, nil
}
