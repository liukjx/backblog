# Shell脚本

## grep命令
grep 【option】 【pattern】【file1，file2】
command ｜ grep 【option】【pattern】

grep 参数

-v 不显示匹配行信息
-i 搜索时忽略大小写
-n 显示行号
-r 递归搜索，后面不需要跟文件，它会把目录下所有文件都替换了
-E 支持扩展正则表达式，比如｜或字符
-F 不按正则表达式匹配，按照字符串字面意思匹配


需要了解的选项

-c 只输出匹配行的数量，不显示具体内容
-w 匹配整词
-x 匹配整行
-l 只列出匹配的文件名，不显示具体匹配行内容

grep -E 与egrep等价



## sed命令

sed的工作模式
sed，流编辑器，对标准输出或文件祝行进行处理


语法格式


sedout ｜ sed 【option】“pattern command”
sed 【option】 “patern command” file

“pattern command”的作用就是选择符合pattern的特定行进行command处理



sed的选项

-n 只打印模式匹配行

-e 直接在命令行进行sed编辑，默认选项

-f 编辑动作保存在文件中，指定文件执行

-r 支持扩展正则表达式

-i 直接修改文件内容


举例


sed “p” sed.txt

只打印输出


-e 只有在多个命令的时候才需要显式指定


-f 就是把pattern写到文件里，通过指定文件的方法获取pattern


sed中的pattern详解

10command 匹配到第十行

10，20command 匹配从第十行开始，到第20行结束

10，+5conmand 匹配从第十行开始，到16行结束

pattern1command 匹配到pattern1的行

pattern1，pattern2/command 匹配到pattern1的行开始，到匹配到pattern2的行结束

10，pattern1command 匹配从第10行开始，到匹配到pattern1的行结束

pattern1，10conmand 匹配到pattern1的行开始，到第10行匹配结束


sed中的编辑命令详解（上）
查询
 p 打印
增加
 a 行后追加
 i 行前追加
 r 外部文件读入，行后追加
 w 匹配行写入外部文件
删除
 d 删除
修改
 soldnew 将行内第一个old替换为new
 soldnew/g 将行内全部的old替换为new
 soldnew/2g 将第2个开始所有的old替换为new
 soldnew/ig 将行内old全部替换为new，忽略大小写

sed中的编辑命令详解（中）

什么是反向引用？

前面的正则表达式匹配的字符串，原封不动的保留下来，就是反向引用

& 和 \1 等价，注意，如果要用\1时，要把前面的字符用括号阔起来，记得对括号转义


sed中的编辑命令详解（下）

\1灵活在于你可以用括号的范围来决定\1所代表的内容



匹配模式中，如果想使用变量，建议使用双引号



利用sed查询特定内容

![](https://api2.mubu.com/v3/document_image/4a243d16-aaba-4d78-932e-9ed96c739626-629850.jpg)



利用sed删除特定内容

![](https://api2.mubu.com/v3/document_image/030325cc-de5a-49a1-a3aa-32181027de58-629850.jpg)


利用sed修改文件内容

![](https://api2.mubu.com/v3/document_image/6f3d41fe-f1fd-4183-a2e0-fcd60fbb8591-629850.jpg)


## awk
