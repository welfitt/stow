function check_if_github_repo_has_new_commits() {
    # Check if the repo has new commits
    git fetch origin
    LOCAL=$(git rev-parse @)
    REMOTE=$(git rev-parse @{u})
    BASE=$(git merge-base @ @{u})
    echo -n "Your dot files are: " 

    if [ $LOCAL = $REMOTE ]; then
        echo "Up-to-date"
    elif [ $LOCAL = $BASE ]; then
        echo "Behind github. You need to pull."
    elif [ $REMOTE = $BASE ]; then
        echo "Ahead of github. Need to push"
    else
        echo "Diverged"
    fi
}

cd ~/.dotfiles/nvim
check_if_github_repo_has_new_commits
cd
