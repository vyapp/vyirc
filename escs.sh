##############################################################################
# initialize.
cd ~/projects/
git clone git@bitbucket.org:iogf/vyirc.git vyirc-code
##############################################################################
# push master.
cd ~/projects/vyirc-code
# clean up all .pyc files. 
find . -name "*.pyc" -exec rm -f {} \;

git status
git add *
git commit -a
git push -u origin master
##############################################################################
# push development.
cd ~/projects/vyirc-code
# clean up all .pyc files. 
find . -name "*.pyc" -exec rm -f {} \;

git status
git add *
git commit -a
git push -u origin development

##############################################################################
# install vyirc.
cd ~/projects/vyirc-code
sudo bash -i
python setup.py install
rm -fr build
exit
##############################################################################
# get it on pip.

cd ~/projects/vyirc-code
python setup.py sdist register upload
rm -fr dist
##############################################################################
# create the develop branch
git branch -a
git checkout -b development
git push --set-upstream origin development

##############################################################################
# merge development into master.
cd /home/tau/projects/vyirc-code/
git checkout master
git merge development
git push
git checkout development
