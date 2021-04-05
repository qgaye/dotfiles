[user]
	name = qiujiyi
	email = qiujiyi@meituan.com
[core]
	quotepath = false
	excludesfile = ~/.gitignore_global
	autocrlf = false
	pager = diff-so-fancy | less --tabs=4 -RFX
[alias]
    st = status
    co = checkout
    ci = commit
    br = branch
	lg = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
    type = cat-file -t
    dump = cat-file -p
