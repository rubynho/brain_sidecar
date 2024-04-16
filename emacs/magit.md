# Magit Cherry Pick

Press `Y` to select the Magit cherries option (using Spacemacs), first choose the branch with commits you're interested then the branch you want to move/apply the commits. Pressing `A` will show the cherry-pick options. To process multiple commits at a time, just select them.

# Magit Revert

## Recover file state

Press `O`, then `f`, choose checkout revision (commit hash or branch with the file in the desired state) and choose the file.

CLI version:
```bash
git checkout <commit-hash-or-branch> -- <file-path>
```
