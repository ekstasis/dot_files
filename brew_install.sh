# #!/bin/bash

CASK_COMMAND='brew cask install'
FORMULA_COMMAND='brew install'

# istat-menus
# virtualbox

CASK_LIST=(
caffeine 
dropbox
iterm2
superduper
google-chrome
zsh
miniconda
omnidisksweeper
)

FORMULA_LIST=(
zsh
tree
)

echo ===========================
echo Casks:
for cask in ${CASK_LIST[*]}
   do echo $cask
done
echo ===========================

echo Formulae:
for form in ${FORMULA_LIST[*]}
   do echo $form
done
echo ===========================

for cask in ${CASK_LIST[*]}
   do $CASK_COMMAND $cask
done

for form in ${FORMULA_LIST[*]}
   do $FORMULA_COMMAND $form
done
