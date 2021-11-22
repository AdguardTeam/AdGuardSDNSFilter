#!/usr/bin/env bash

CURRENT_DATE=$(date +%d.%m.%Y)

git checkout master
git pull --no-commit origin master
git pull --no-commit upstream master
git add . 
ISSUE_NUMBER=$(gh issue create --title "Make $CURRENT_DATE Release"  --body "Make $CURRENT_DATE Release" --assignee @me --label release | sed 's|.*/||' )
git checkout -b "release/adguard-filters-config-$CURRENT_DATE"
git commit -m "[$CURRENT_DATE] Upload filters configuration files for AdGuard Home #$ISSUE_NUMBER" 
git push -u origin HEAD
gh pr create --base master --fill --assignee @me --title "[$CURRENT_DATE] Release preparation for day $(date +%d/%m/%Y)" --body "Release of Adguard Filters configuration for AdGuard Home to close issue #$ISSUE_NUMBER"
gh pr merge --delete-branch --squash 
gh release create $CURRENT_DATE --title "Release $CURRENT_DATE" --notes "Release of Adguard configuration generated for AdGuard Home on day $CURRENT_DATE"
gh issue close $ISSUE_NUMBER
git checkout master
git pull --no-commit origin master