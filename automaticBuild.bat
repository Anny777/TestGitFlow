@echo This bat file helps to make authomatic assembly
SET /p input="Enter --help to learn origin masters " 
IF %input%==--help call git branch -r
@pause
SET /p branch="Enter origin branch to pull changes "
CALL git fetch --all
CALL git checkout develop
CALL git pull origin develop
CALL git checkout master
CALL git merge develop
CALL git push origin masters/%branch%