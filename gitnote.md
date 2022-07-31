# This is the Note for git startup

1. Github quick start
> create a new repository on the command line
git init
git add README.md
git commit -m "first commit"
git branch -M master
git remote add origin git@github.com:Elesider/Try.git
git push -u origin master

> …or push an existing repository from the command line
git remote add origin git@github.com:Elesider/Try.git
git branch -M master
git push -u origin master


2. Github SSH connection
> Strange. It cannot be done with only a ssh. It requires input command one by one.
> Check the [link](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)


3. [If the Github has new committs while you are working locally](https://stackoverflow.com/questions/24114676/git-error-failed-to-push-some-refs-to-remote)
> git pull --rebase

4. Note 1
> When run the .sh. You must use chmod +x to change the mode of the file. Or the code will not run smoothly.
