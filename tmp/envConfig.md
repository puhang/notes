# 工具
## SSH
ssh config
秘钥与公钥生成
ssh-keygen -t rsa -b 1024
- 秘钥与公钥管理
  .ssh目录下新建config文件，内容如下
``` 
Host github.com
    IdentityFile ~/.ssh/github_rsa
    User puhang
```
- 检验配置是否成功
  ssh -T git@github.com
## git
- 建库基本操作
  - git init (初始化本地仓库)
  - git config [--global] user.name "puhang" (设置本地仓库用户名)
  - git config [--global] user.email "puhang97@outlook.com" (设置本地仓库用户邮箱)
  - [genenrate ssh key] （没有github的ssh秘钥时需设置）
  - git remote add remoteTag sshAddr/httpAddr（本地仓库与远程(github)仓库建立连接）

git remote -v
git remote rename old new
gir remote remove origin
git --set-upstream remoteRepos remoteBranch
显示远程库的链接
/etc/group

ln -s file link 创建软连接
# 定时任务
crontab
# 文件同步工具
1. 百度网盘
2. syncthing
P2P 文件同步方案
3. github
github + vscode + picgo + jsdelivr

# 网络
## 代理设置
- 命令行代理设置
export HTTP_PROXY=http://127.0.0.1:58591; 
export HTTPS_PROXY=http://127.0.0.1:58591; 
export ALL_PROXY=socks5://127.0.0.1:51837

# 快捷键
## VScode
ctrl+k,ctrl+c多行注释
ctrl+k,ctrl+u取消多行注释
tab 多行向右缩进
shift+tab 多行向左缩进
ctrl+` 打开linux终端

