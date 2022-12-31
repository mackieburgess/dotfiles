git clone --bare git@github.com:mackieburgess/dotfiles.git $HOME/.config/dotfiles

function dotfiles {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

mkdir -p $HOME/.cache/config-backup
dotfiles checkout

if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dotfiles.";
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} ~/.cache/config-backup/{}
fi;

dotfiles checkout

cat $HOME/.config/dotfiles_ignore > $HOME/.config/dotfiles/info/exclude
