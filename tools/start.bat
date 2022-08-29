@REM 启动本地博客
bundle exec jekyll s

@REM 新增一篇文档
jekyll post "My New Post"

@REM 新增一篇草稿
jekyll draft "My new draft"

@REM 发布草稿
jekyll publish _drafts/my-new-draft.md
jekyll publish _drafts/my-new-draft.md --date 2014-01-24

jekyll unpublish _posts/2014-01-24-my-new-draft.md

@REM 输出目录,获取非srt结尾的字符
tree /f | findstr /EV "srt"

@REM 读书笔记模板
jekyll draft "《学会提问》读书笔记"