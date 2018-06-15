##############################################################################
# initialize.
cd ~/projects/
git clone git@bitbucket.org:iogf/vyirc.git vyirc-code
##############################################################################
# push.
cd ~/projects/vyirc-code
# clean up all .pyc files. 
find . -name "*.pyc" -exec rm -f {} \;

git status
git add *
git commit -a
git push -u origin master
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









